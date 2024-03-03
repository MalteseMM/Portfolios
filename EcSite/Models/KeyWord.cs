using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace EcSite.Models;

public partial class KeyWord
{
    [Key]
    [Required]
    public long KeyWordId { get; set; }

    [Required]
    public string KeyWord1 { get; set; } = null!;
}
