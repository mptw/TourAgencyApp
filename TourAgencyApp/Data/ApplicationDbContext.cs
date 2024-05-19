using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using TourAgencyApp.Models;

namespace TourAgencyApp.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }

        public DbSet<TourAgencyApp.Models.Tour> Tour { get; set; } = default!;
        public DbSet<TourAgencyApp.Models.Event> Event { get; set; } = default!;
        public DbSet<TourAgencyApp.Models.TourBooking> TourBooking { get; set; } = default!;
        public DbSet<TourAgencyApp.Models.EventBooking> EventBooking { get; set; } = default!;

    }
}
