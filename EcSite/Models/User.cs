using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace EcSite.Models;

public partial class User
{
    [Key]
    public string UserId { get; set; } = null!;

    public string UserSurname { get; set; } = null!;

    public string UserSurnameRuby { get; set; } = null!;

    public string UserFirstname { get; set; } = null!;

    public string UserFirstnameRuby { get; set; } = null!;

    public string Password { get; set; } = null!;

    public DateTime CreatedAt { get; set; }

    public DateTime UpdatedAt { get; set; }
}
