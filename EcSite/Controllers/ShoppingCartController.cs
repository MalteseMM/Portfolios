using EcSite.Models;
using EcSite.ViewModels;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace EcSite.Controllers
{
    public class ShoppingCartController : Controller
    {
        private readonly ILogger<ShoppingCartController> _logger;
        public User _userId;

        public ShoppingCartController(ILogger<ShoppingCartController> logger)
        {
            _logger = logger;
            _userId = new User() { UserId = GrobalVariables.UserId}; //TODO:ログインユーザー名を代入する処理をどこかで作成。ログイン画面作成時に作成する。
        }


        [HttpGet]
        public IActionResult Index()
        {
            var orderViewModel = _userId.GetWishingList();
            orderViewModel.Orders = new List<DisplayOrder>() {
                new DisplayOrder()
                {
                    ProductId = 1,
                    ProductName = "商品１ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc",
                    StockQuantity = 5,
                    OrderQuantity = 2,
                    BrandName = "ブランド名",
                    Price = 1000
                },
                new DisplayOrder()
                {
                    ProductId = 1,
                    ProductName = "商品2",
                    Price = 2000
                }
                };
            return View(orderViewModel);
        }

        [HttpPost]
        public IActionResult Index(DisplayOrderViewModel orderProducts)
        {
            return View(orderProducts);
        }


    }
}
