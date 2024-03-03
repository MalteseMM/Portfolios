using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace EcSite.Models;

public partial class PurchaseOrder
{
    [Key]
    [Required]
    public long OrderId { get; set; }

    [Required]
    public long ProductId { get; set; }

    [Required]
    public long ShippingAddressId { get; set; }

    [Required]
    public byte PaymentOptionId { get; set; }

    [Required]
    public int OrderQuantity { get; set; }

    [Required]
    public byte OrderStatusId { get; set; }

    [Required]
    public string CreatedBy { get; set; }

    [Required]
    public DateTime CreatedAt { get; set; }

    [Required]
    public string UpdatedBy { get; set; }

    [Required]
    public DateTime UpdatedAt { get; set; }
}
