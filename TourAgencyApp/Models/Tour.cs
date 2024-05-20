using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace TourAgencyApp.Models;

public class Tour
{
    public int Id { get; set; }
    [StringLength(60, MinimumLength = 3)]
    [Required]
    public string? Title { get; set; }
    [Display(Name = "Start Date")]
    [DataType(DataType.Date)]
    public DateTime StartDate { get; set; }
    [Display(Name = "End Date")]
    [DataType(DataType.Date)]
    public DateTime EndDate { get; set; }
    public string? Country { get; set; }
    public string? Description { get; set; }
    [DataType(DataType.Currency)]
    [Column(TypeName = "decimal(18, 2)")]
    [Required]
    public decimal Price { get; set; }
    public string? ImageName { get; set; }

    public List<Comment>? Comments { get; set; }
}