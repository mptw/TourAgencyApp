using Microsoft.AspNetCore.Identity;
using System.ComponentModel.DataAnnotations;

namespace TourAgencyApp.Models
{
    public class EventBooking
    {
        public int Id { get; set; }
        [Display(Name = "Event id")]
        public int EventId { get; set; }
        [Display(Name = "User id")]
        public string UserId { get; set; }
        public Event Event { get; set; }
        public IdentityUser User { get; set; }
    }
}
