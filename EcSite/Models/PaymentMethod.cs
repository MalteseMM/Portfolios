using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace EcSite.Models;

public partial class PaymentMethod
{
    [Key]
    [Required]
    public byte MethodId { get; set; }

    [Required]
    public string MethodName { get; set; } = null!;

    [Required]
    public string CreatedBy { get; set; } = null!;

    [Required]
    public DateTime CreatedAt { get; set; }

    [Required]
    public string UpdatedBy { get; set; } = null!;

    [Required]
    public DateTime UpdatedAt { get; set; }
}
