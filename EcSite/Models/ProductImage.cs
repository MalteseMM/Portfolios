using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace EcSite.Models;

public partial class ProductImage
{
    [Key]
    [Required]
    public long ImageId { get; set; }

    [Required]
    public long ProductId { get; set; }

    public string? ImageDescription { get; set; }

    [Required]
    public byte[] ImageData { get; set; } = null!;
}
