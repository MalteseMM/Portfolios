using System;
using System.Collections.Generic;

namespace EcSite.Models;

public partial class PurchaseOrder
{
    public long OrderId { get; set; }

    public long ProductId { get; set; }

    public long ShippingAddressId { get; set; }

    public byte PaymentOptionId { get; set; }

    public int OrderQuantity { get; set; }

    public byte OrderStatusId { get; set; }

    public string CreatedBy { get; set; }

    public DateTime CreatedAt { get; set; }

    public string UpdatedBy { get; set; }

    public DateTime UpdatedAt { get; set; }
}
