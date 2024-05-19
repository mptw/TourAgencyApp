using Microsoft.AspNetCore.Identity;

namespace TourAgencyApp.Models
{
    public class Comment
    {
        public int Id { get; set; }
        public string Text { get; set; }
        public DateTime CreatedDate { get; set; }
        public int TourId { get; set; }
        public Tour Tour { get; set; }
        public string UserId { get; set; }
        public IdentityUser User { get; set; }
    }
}
