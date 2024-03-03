using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace EcSite.Models;

public partial class Category
{
    [Key]
    [Required]
    public short CategoryId { get; set; }

    [Required]
    public string CategoryName { get; set; } = null!;

    [Required]
    public string CreatedBy { get; set; } = null!;

    [Required]
    public DateTime CreatedAt { get; set; }

    [Required]
    public string UpdatedBy { get; set; } = null!;

    [Required]
    public DateTime UpdatedAt { get; set; }
}
