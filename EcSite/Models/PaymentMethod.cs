using System;
using System.Collections.Generic;

namespace EcSite.Models;

public partial class PaymentMethod
{
    public byte MethodId { get; set; }

    public string MethodName { get; set; } = null!;

    public string CreatedBy { get; set; } = null!;

    public DateTime CreatedAt { get; set; }

    public string UpdatedBy { get; set; } = null!;

    public DateTime UpdatedAt { get; set; }
}
