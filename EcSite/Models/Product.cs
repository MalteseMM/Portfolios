using System;
using System.Collections.Generic;

namespace EcSite.Models;

public partial class Product
{
    public long ProductId { get; set; }

    public string ProductName { get; set; } = null!;

    public decimal Price { get; set; }

    public byte? DiscountPercentage { get; set; }

    public string? Size { get; set; }

    public string? ModelNumber { get; set; }

    public string? ProductDescription { get; set; }

    public string? ProductDetails { get; set; }

    public int StockQuantity { get; set; }

    public long BrandId { get; set; }

    public long CategoryId { get; set; }

    public string CreatedBy { get; set; } = null!;

    public DateTime CreatedAt { get; set; }

    public string UpdatedBy { get; set; } = null!;

    public DateTime UpdatedAt { get; set; }
}
