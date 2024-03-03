using System;
using System.Collections.Generic;

namespace EcSite.Models;

public partial class ProductBrand
{
    public long BrandId { get; set; }

    public string BrandName { get; set; } = null!;

    public long ManufacturerId { get; set; }

    public string? BrandWebsiteLink { get; set; }
}
