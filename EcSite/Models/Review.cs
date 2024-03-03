using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace EcSite.Models;

public partial class Review
{
    [Key]
    public long RateId { get; set; }

    public long ProductId { get; set; }

    public float Rate { get; set; }

    public string? Comment { get; set; }

    public string CreatedBy { get; set; } = null!;

    public DateTime CreatedAt { get; set; }
}
