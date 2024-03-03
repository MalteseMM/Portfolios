using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace EcSite.Models;

public partial class Product
{
    [Key]
    [Required]
    public long ProductId { get; set; }

    [Required]
    public string ProductName { get; set; } = null!;

    [Required]
    public decimal Price { get; set; }

    public byte? DiscountPercentage { get; set; }

    public string? Size { get; set; }

    public string? ModelNumber { get; set; }

    public string? ProductDescription { get; set; }

    public string? ProductDetails { get; set; }

    [Required]
    public int StockQuantity { get; set; }

    [Required]
    public long BrandId { get; set; }

    [Required]
    public long CategoryId { get; set; }

    [Required]
    public string CreatedBy { get; set; } = null!;

    [Required]
    public DateTime CreatedAt { get; set; }

    [Required]
    public string UpdatedBy { get; set; } = null!;

    [Required]
    public DateTime UpdatedAt { get; set; }
}
