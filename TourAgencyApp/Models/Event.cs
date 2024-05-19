using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace TourAgencyApp.Models;

public class Event
{
    public int Id { get; set; }
    [StringLength(60, MinimumLength = 3)]
    [Required]
    public string? Title { get; set; }
    [DataType(DataType.Date)]
    [Display(Name = "Date")]
    public DateTime EventDate { get; set; }
    [StringLength(60, MinimumLength = 3)]
    [Required]
    public string? Destination { get; set; }
    public string? Description { get; set; }
    [DataType(DataType.Currency)]
    [Column(TypeName = "decimal(18, 2)")]
    [Required]
    public decimal Price { get; set; }
    public string? ImageName { get; set; }

}