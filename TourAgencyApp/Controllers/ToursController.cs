using System.Security.Claims;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TourAgencyApp.Data;
using TourAgencyApp.Models;

namespace TourAgency.Controllers
{
    public class ToursController : Controller
    {
        private readonly ApplicationDbContext _context;

        public ToursController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Tours
        public async Task<IActionResult> Index(string title, string country, string errorMessage)
        {
            if (_context.Tour == null)
            {
                return Problem("Entity set 'MvcTourAgencyAppContext.Tour'  is null.");
            }

            var tours = from m in _context.Tour
                         select m;

            if (!String.IsNullOrEmpty(title))
            {
                tours = tours.Where(s => s.Title!.Contains(title));
            }
            if (!String.IsNullOrEmpty(country))
            {
                tours = tours.Where(s => s.Country!.Contains(country));
            }

            if (errorMessage != null)
            {
                TempData["ErrorMes"] = errorMessage;
            }
            return View(await tours.ToListAsync());
        }

        // GET: Tours/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var tour = await _context.Tour
                .Include(t => t.Comments)
                .ThenInclude(c => c.User)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (tour == null)
            {
                return NotFound();
            }

            return View(tour);
        }

        // GET: Tours/CreateComment/5
        public async Task<IActionResult> CreateComment(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var tour = await _context.Tour
                .Include(t => t.Comments)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (tour == null)
            {
                return NotFound();
            }

            return View(tour);
        }

        // POST: Tours/CreateComment/5
        [HttpPost, ActionName("CreateComment")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> CreateCommentPost(int id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var tour = await _context.Tour
                .Include(t => t.Comments)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (tour == null)
            {
                return NotFound();
            }

            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);

            var comment = new Comment
            {
                Text = Request.Form["text"],
                CreatedDate = DateTime.Now,
                UserId = userId,
                User = await _context.Users.FirstOrDefaultAsync(u => u.Id == userId),
                TourId = id,
                Tour = tour
            };

            _context.Comment.Add(comment);
            _context.SaveChanges();

            tour.Comments.Add(comment);
            _context.SaveChanges();
            return RedirectToAction("Details", new { id = id });
        }

        [Authorize(Roles = "Admin")]
        // GET: Tours/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Tours/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [Authorize(Roles = "Admin")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Title,StartDate,EndDate,Country,Description,Price")] Tour tour, IFormFile file)
        {
            if (ModelState.IsValid)
            {
                if (tour.EndDate <= tour.StartDate)
                {
                    ModelState.AddModelError("EndDate", "End Date needs to be after the Start Date!");
                    return View(tour);
                }

                var fileName = Path.GetFileName(file.FileName);
                tour.ImageName = fileName;
                string uploads = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", "Images", "Tours");
                string filePath = Path.Combine(uploads, fileName);
                using (var fileStream = new FileStream(filePath, FileMode.Create))
                {
                    await file.CopyToAsync(fileStream);
                }

                _context.Add(tour);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(tour);
        }

        [Authorize(Roles = "Admin")]
        // GET: Tours/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var tour = await _context.Tour.FindAsync(id);
            if (tour == null)
            {
                return NotFound();
            }
            return View(tour);
        }

        // POST: Tours/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [Authorize(Roles = "Admin")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Title,StartDate,EndDate,Country,Description,Price")] Tour tour)
        {
            if (id != tour.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                if (tour.EndDate <= tour.StartDate)
                {
                    ModelState.AddModelError("EndDate", "End Date needs to be after the Start Date!");
                    return View(tour);
                }
                try
                {
                    _context.Update(tour);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!TourExists(tour.Id))
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
            return View(tour);
        }

        [Authorize(Roles = "Admin")]
        // GET: Tours/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var tour = await _context.Tour
                .FirstOrDefaultAsync(m => m.Id == id);
            if (tour == null)
            {
                return NotFound();
            }

            return View(tour);
        }

        [Authorize(Roles = "Admin")]
        // POST: Tours/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var tour = await _context.Tour.FindAsync(id);
            if (tour != null)
            {
                _context.Tour.Remove(tour);
            }

            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        [Authorize(Policy = "authenticated")]
        // GET: Tours/Signup/5
        public async Task<IActionResult> Signup(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var tour = await _context.Tour
                .FirstOrDefaultAsync(m => m.Id == id);
            if (tour == null)
            {
                return NotFound();
            }

            return View(tour);
        }

        [Authorize(Policy = "authenticated")]
        // POST: Tours/Signup/5
        [HttpPost, ActionName("Signup")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Signup(int id)
        {
            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);

            var tourBookings = from m in _context.TourBooking
                               select m;
            tourBookings = tourBookings.Where(s => s.Tour.Id == id && s.User.Id == userId);
            if (tourBookings.Count() > 0)
            {
                return RedirectToAction("Index", new { ErrorMessage = "You have already signed up for this tour." });
            }

            var user = await _context.Users
                .FirstOrDefaultAsync(u => u.Id == userId);
            var tour = await _context.Tour
               .FirstOrDefaultAsync(t => t.Id == id);
            var tourBooking = new TourBooking()
            {
                UserId = userId,
                User = user,
                TourId = id,
                Tour = tour
            };
            _context.Add(tourBooking);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool TourExists(int id)
        {
            return _context.Tour.Any(e => e.Id == id);
        }
    }
}
