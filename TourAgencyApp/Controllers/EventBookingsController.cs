using System.Security.Claims;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TourAgencyApp.Data;

namespace TourAgencyApp.Controllers
{
    public class EventBookingsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public EventBookingsController(ApplicationDbContext context)
        {
            _context = context;
        }

        [Authorize(Policy = "authenticated")]
        // GET: EventBookings
        public async Task<IActionResult> Index(string filter = "")
        {
            var eventBookings = from m in _context.EventBooking
                               select m;
            var events = from t in _context.Event
                        select t;
            if (!User.IsInRole("Admin"))
            {
                var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
                eventBookings = eventBookings.Where(s => s.User.Id == userId);
            }
            foreach (var item in eventBookings)
            {
                var foundEvent = events.Where(t => t.Id == item.EventId).First();
                if (item.Event == null)
                {
                    item.Event = foundEvent;
                }
            }

            if (!string.IsNullOrEmpty(filter))
            {
                switch (filter.ToLower())
                {
                    case "upcoming":
                        eventBookings = eventBookings.Where(tb => tb.Event.EventDate >= DateTime.Now);
                        break;
                    case "past":
                        eventBookings = eventBookings.Where(tb => tb.Event.EventDate < DateTime.Now);
                        break;
                }
            }

            return View(await eventBookings.ToListAsync());
        }

        [Authorize(Policy = "authenticated")]
        // GET: EventBookings/Dropout/5
        public async Task<IActionResult> Dropout(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var eventBookings = await _context.EventBooking
                .FirstOrDefaultAsync(m => m.Id == id);
            if (eventBookings == null)
            {
                return NotFound();
            }

            var events = from t in _context.Event
                        select t;
            var foundEvent = events.Where(t => t.Id == eventBookings.EventId).First();
            if (eventBookings.Event == null)
            {
                eventBookings.Event = foundEvent;
            }

            return View(eventBookings);
        }

        [Authorize(Policy = "authenticated")]
        // POST: EventBookings/Dropout/5
        [HttpPost, ActionName("Dropout")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DropoutConfirmed(int id)
        {
            var eventBooking = await _context.EventBooking.FindAsync(id);
            if (eventBooking != null)
            {
                _context.EventBooking.Remove(eventBooking);
            }

            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool EventBookingExists(int id)
        {
            return _context.EventBooking.Any(e => e.Id == id);
        }
    }
}
