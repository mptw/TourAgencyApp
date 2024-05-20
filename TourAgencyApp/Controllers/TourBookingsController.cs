using System.Security.Claims;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TourAgencyApp.Data;

namespace TourAgencyApp.Controllers
{
    public class TourBookingsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public TourBookingsController(ApplicationDbContext context)
        {
            _context = context;
        }

        [Authorize(Policy = "authenticated")]
        // GET: TourBookings
        public async Task<IActionResult> Index(string filter = "")
        {
            var tourBookings = from m in _context.TourBooking
                               select m;
            var tours = from t in _context.Tour
                        select t;
            if (!User.IsInRole("Admin"))
            {
                var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
                tourBookings = tourBookings.Where(s => s.User.Id == userId);  
            }
            foreach (var item in tourBookings)
            {
                var foundTour = tours.Where(t => t.Id == item.TourId).First();
                if (item.Tour == null)
                {
                    item.Tour = foundTour;
                }
            }

            if (!string.IsNullOrEmpty(filter))
            {
                switch (filter.ToLower())
                {
                    case "upcoming":
                        tourBookings = tourBookings.Where(tb => tb.Tour.StartDate >= DateTime.Now);
                        break;
                    case "past":
                        tourBookings = tourBookings.Where(tb => tb.Tour.StartDate < DateTime.Now);
                        break;
                }
            }

            return View(await tourBookings.ToListAsync());
        }

        [Authorize(Policy = "authenticated")]
        // GET: TourBookings/Dropout/5
        public async Task<IActionResult> Dropout(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var tourBookings = await _context.TourBooking
                .FirstOrDefaultAsync(m => m.Id == id);
            if (tourBookings == null)
            {
                return NotFound();
            }

            var tours = from t in _context.Tour
                        select t;
            var foundTour = tours.Where(t => t.Id == tourBookings.TourId).First();
            if (tourBookings.Tour == null)
            {
                tourBookings.Tour = foundTour;
            }

            return View(tourBookings);
        }

        [Authorize(Policy = "authenticated")]
        // POST: TourBookings/Dropout/5
        [HttpPost, ActionName("Dropout")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DropoutConfirmed(int id)
        {
            var tourBooking = await _context.TourBooking.FindAsync(id);
            if (tourBooking != null)
            {
                _context.TourBooking.Remove(tourBooking);
            }

            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool TourBookingExists(int id)
        {
            return _context.TourBooking.Any(e => e.Id == id);
        }
    }
}
