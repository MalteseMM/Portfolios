using EcSite.ViewModels;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace EcSite.Models;

public partial class User
{
    [Key]
    public string UserId { get; set; }

    public string UserSurname { get; set; }

    public string UserSurnameRuby { get; set; }

    public string UserFirstname { get; set; }

    public string UserFirstnameRuby { get; set; }

    public string Password { get; set; } 

    public DateTime CreatedAt { get; set; }

    public DateTime UpdatedAt { get; set; }

    public DisplayOrderViewModel GetWishingList()
    {
        using (var db = new EcPortfolioContext())
        {
            var displayOrderViewModel = new DisplayOrderViewModel() { UserId = UserId};

            displayOrderViewModel.Orders = db.Users
                .Join(db.PurchaseOrders, u => u.UserId, o => o.UserId, (u, o) => new { u, o })
                .Join(db.Products, uo => uo.o.ProductId, p => p.ProductId, (uo, p) => new { uo, p })
                .Join(db.ProductBrands, uop => uop.p.BrandId , b => b.BrandId ,(uop,b) => new {uop,b})
                .Where(x => x.uop.uo.o.UserId == UserId)
                .Where(x => x.uop.uo.o.OrderStatusId == 1)
                .Select(uopb => new DisplayOrder
                {
                    ProductId = uopb.uop.p.ProductId,
                    ProductName = uopb.uop.p.ProductName,
                    DiscountPercentage = uopb.uop.p.DiscountPercentage,
                    Price = uopb.uop.p.Price,
                    OrderQuantity = uopb.uop.uo.o.OrderQuantity,
                    Size = uopb.uop.p.Size,
                    ModelNumber = uopb.uop.p.ModelNumber,
                    StockQuantity = uopb.uop.p.StockQuantity,
                    BrandName = uopb.b.BrandName
                })
                .ToList();

            return displayOrderViewModel;
        }
    }   
}