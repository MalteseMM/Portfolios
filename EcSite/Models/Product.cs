﻿using System.ComponentModel.DataAnnotations;

namespace EcSite.Models;

public partial class Product
{
    [Key]
    [Required]
    public long ProductId { get; set; }

    [Required]
    [Display(Name = "商品名")]
    public string ProductName { get; set; }

    [Required]
    [Display(Name = "価格")]
    public decimal Price { get; set; }

    public byte? DiscountPercentage { get; set; }

    [Display(Name = "サイズ")]
    public string? Size { get; set; }

    [Display(Name = "品番")]
    public string? ModelNumber { get; set; }

    [Display(Name = "商品説明")]
    public string? ProductDescription { get; set; }

    [Display(Name = "商品詳細")]
    public string? ProductDetails { get; set; }

    [Required]
    [Display(Name = "在庫数")]
    public int StockQuantity { get; set; }

    [Required]
    public long BrandId { get; set; }

    [Required]
    public long CategoryId { get; set; }

    [Required]
    public byte[] MainImage { get; set; } 

    [Required]
    public string CreatedBy { get; set; }

    [Required]
    public DateTime CreatedAt { get; set; }

    [Required]
    public string UpdatedBy { get; set; }

    [Required]
    public DateTime UpdatedAt { get; set; }

    /// <summary>
    /// 直近１週間の売上
    /// </summary>
    public decimal TotalSalesOfTheLastWeek { get; set; }


    /// <summary>
    /// 直近１週間で売り上げが上位の商品を20件取得します。
    /// </summary>
    /// <returns>Productエンティティの一覧</returns>
    public IEnumerable<Product> GetTopTwentyProductsOfTheLastWeek()
    {
        using (var db = new EcPortfolioContext())
        {
            return db.PurchaseOrders
                    .Join(db.Products, o => o.ProductId, p => p.ProductId, (o, p) => new { o, p })
                    .Where(x=>x.o.CreatedAt >= DateTime.Today.AddDays(-7))
                    .Where(x=>x.o.CreatedAt <= DateTime.Today)
                    //.Where(x=>x.op.o.OrderStatusId = 4) TODO:配達済みの注文だけカウントするようにする
                    .GroupBy(
                        x => new { x.o.ProductId, x.p.ProductName, x.p.Price ,x.p.MainImage},
                        (key, group) => new Product
                        {
                            ProductId = key.ProductId,
                            ProductName = key.ProductName,
                            Price = key.Price,
                            TotalSalesOfTheLastWeek = group.Sum(x => x.o.OrderQuantity * x.p.Price),
                            MainImage = key.MainImage
                        })
                    .OrderByDescending(x => x.TotalSalesOfTheLastWeek)
                    .Take(20)
                    .ToList();
        }
    }
}
