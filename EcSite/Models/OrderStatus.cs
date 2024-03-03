using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace EcSite.Models;

public partial class OrderStatus
{
    [Key]
    [Required]
    public byte StatusId { get; set; }

    [Required]
    public string StatusName { get; set; } = null!;

    [Required]
    public string CreatedBy { get; set; } = null!;

    [Required]
    public DateTime CreatedAt { get; set; }

    [Required]
    public string UpdatedBy { get; set; } = null!;

    [Required]
    public DateTime UpdatedAt { get; set; }
}
