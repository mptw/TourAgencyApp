using Microsoft.AspNetCore.Identity;
using System.ComponentModel.DataAnnotations;

namespace TourAgencyApp.Models
{
    public class TourBooking
    {
        public int Id { get; set; }
        [Display(Name = "Tour id")]
        public int TourId { get; set; }
        [Display(Name = "User id")]
        public string UserId { get; set; }
        public Tour Tour { get; set; }
        public IdentityUser User { get; set; }
    }
}
