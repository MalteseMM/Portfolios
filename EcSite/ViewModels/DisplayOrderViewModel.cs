using EcSite.Properties;
using System.ComponentModel.DataAnnotations;
using System.Resources;

namespace EcSite.ViewModels
{
    public class DisplayOrderViewModel
    {
        [Key]
        [Required]
        public long ProductId { get; set; }

        [Required]
        [Display(Name = "商品名")]
        public string ProductName { get; set; }

        [Required]
        [Display(Name = "参考価格：")]
        public decimal Price { get; set; }

        public byte? DiscountPercentage { get; set; }

        [Required]
        [Display(Name = "数量")]
        public int OrderQuantity { get; set; }
        [Display(Name = "サイズ")]
        public string? Size { get; set; }

        [Display(Name = "品番")]
        public string? ModelNumber { get; set; }


        [Required]
        [Display(Name = "在庫数")]
        public int StockQuantity { get; set; }

        [Required]
        public string BrandName { get; set; }

        /// <summary>
        /// 在庫数に応じてメッセージを返します
        /// </summary>
        /// <returns>在庫数の情報メッセージ</returns>
        public string GetMessageForStockQuantity(int stockQuantity)
        {
            const int enoughStockQuantity = 20;
            if (stockQuantity == 0)
            {
                return Resources.msgNoStock;
            }
            else if (stockQuantity < enoughStockQuantity)
            {
                return String.Format(Resources.msgHasLimitedStock, stockQuantity);
            }
            else
            {
                return Resources.msgHasEnoughStock;
            }
        }
    }
}
