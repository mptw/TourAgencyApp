using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using TourAgencyApp.Data;
using TourAgencyApp.Models;

namespace TourAgencyApp.Controllers
{
    public class EventsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public EventsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Events
        public async Task<IActionResult> Index(string title, string destination, string errorMessage)
        {
            if (_context.Event == null)
            {
                return Problem("Entity set 'MvcTourAgencyAppContext.Event'  is null.");
            }

            var events = from m in _context.Event
                        select m;

            if (!String.IsNullOrEmpty(title))
            {
                events = events.Where(s => s.Title!.Contains(title));
            }
            if (!String.IsNullOrEmpty(destination))
            {
                events = events.Where(s => s.Destination!.Contains(destination));
            }

            if (errorMessage != null)
            {
                TempData["ErrorMes"] = errorMessage;
            }
            return View(await events.ToListAsync());
        }

        // GET: Events/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var foundEvent = await _context.Event
                .FirstOrDefaultAsync(m => m.Id == id);
            if (foundEvent == null)
            {
                return NotFound();
            }

            return View(foundEvent);
        }

        [Authorize(Roles = "Admin")]
        // GET: Events/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Events/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [Authorize(Roles = "Admin")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Title,EventDate,Destination,Description,Price")] Event eventToCreate, IFormFile file)
        {
            if (ModelState.IsValid)
            {
                var fileName = Path.GetFileName(file.FileName);
                eventToCreate.ImageName = fileName;
                string uploads = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", "Images", "Events");
                string filePath = Path.Combine(uploads, fileName);
                using (var fileStream = new FileStream(filePath, FileMode.Create))
                {
                    await file.CopyToAsync(fileStream);
                }

                _context.Add(eventToCreate);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(eventToCreate);
        }

        // GET: Events/Edit/5
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var foundEvent = await _context.Event.FindAsync(id);
            if (foundEvent == null)
            {
                return NotFound();
            }
            return View(foundEvent);
        }

        // POST: Events/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [Authorize(Roles = "Admin")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Title,EventDate,Destination,Description,Price")] Event foundEvent)
        {
            if (id != foundEvent.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(foundEvent);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!EventExists(foundEvent.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(foundEvent);
        }

        // GET: Events/Delete/5
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var foundEvent = await _context.Event
                .FirstOrDefaultAsync(m => m.Id == id);
            if (foundEvent == null)
            {
                return NotFound();
            }

            return View(foundEvent);
        }

        // POST: Events/Delete/5
        [Authorize(Roles = "Admin")]
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var foundEvent = await _context.Event.FindAsync(id);
            if (foundEvent != null)
            {
                _context.Event.Remove(foundEvent);
            }

            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        [Authorize(Policy = "authenticated")]
        // GET: Events/Signup/5
        public async Task<IActionResult> Signup(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var foundEvent = await _context.Event
                .FirstOrDefaultAsync(m => m.Id == id);
            if (foundEvent == null)
            {
                return NotFound();
            }

            return View(foundEvent);
        }

        [Authorize(Policy = "authenticated")]
        // POST: Events/Signup/5
        [HttpPost, ActionName("Signup")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Signup(int id)
        {
            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);

            var eventBookings = from m in _context.EventBooking
                               select m;
            eventBookings = eventBookings.Where(s => s.Event.Id == id && s.User.Id == userId);
            if (eventBookings.Count() > 0)
            {
                return RedirectToAction("Index", new { ErrorMessage = "You have already signed up for this event." });
            }

            var user = await _context.Users
                .FirstOrDefaultAsync(u => u.Id == userId);
            var foundEvent = await _context.Event
               .FirstOrDefaultAsync(t => t.Id == id);
            var eventBooking = new EventBooking()
            {
                UserId = userId,
                User = user,
                EventId = id,
                Event = foundEvent
            };
            _context.Add(eventBooking);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool EventExists(int id)
        {
            return _context.Event.Any(e => e.Id == id);
        }
    }
}
