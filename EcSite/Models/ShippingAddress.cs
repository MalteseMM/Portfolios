using System;
using System.Collections.Generic;

namespace EcSite.Models;

public partial class ShippingAddress
{
    public long AddessId { get; set; }

    public string Postcode { get; set; } = null!;

    public string Addess { get; set; } = null!;

    public string BuildingName { get; set; } = null!;

    public string UserId { get; set; } = null!;

    public DateTime CreatedAt { get; set; }

    public DateTime UpdatedAt { get; set; }
}
