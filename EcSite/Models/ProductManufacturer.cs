using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace EcSite.Models;

public partial class ProductManufacturer
{
    [Key]
    [Required]
    public long ManufacturerId { get; set; }

    [Required]
    public string ManufacturerName { get; set; } = null!;

    [Required]
    public string CreatedBy { get; set; } = null!;

    [Required]
    public DateTime CreatedAt { get; set; }

    [Required]
    public string UpdatedBy { get; set; } = null!;

    [Required]
    public DateTime UpdatedAt { get; set; }
}
