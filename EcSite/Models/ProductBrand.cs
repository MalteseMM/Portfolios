using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace EcSite.Models;

public partial class ProductBrand
{
    [Key]
    [Required]
    public long BrandId { get; set; }

    [Required]
    public string BrandName { get; set; }

    [Required]
    public long ManufacturerId { get; set; }

    public string? BrandWebsiteLink { get; set; }
}
