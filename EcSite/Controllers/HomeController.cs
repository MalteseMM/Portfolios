using EcSite.Models;
using EcSite.ViewModels;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace EcSite.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            //var user = new User() { UserId = "xxx" }; //TODO:ログインユーザーにする。
            //user.SetUserWishlist();

            var productViewModel = new Product();
            ViewBag.Products = productViewModel.GetTopTwentyProductsOfTheLastWeek();
            return View(productViewModel);
        }

        [HttpGet]
        public IActionResult ShoppingCart()
        {
            var orderViewModel = new List<DisplayOrderViewModel>() {
                new DisplayOrderViewModel()
                {
                    ProductId = 1,
                    ProductName = "商品１ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc",
                    StockQuantity =5,
                    OrderQuantity =2,
                    BrandName = "ブランド名",
                    Price =1000
                },
                new DisplayOrderViewModel()
                {
                    ProductId = 1,
                    ProductName = "商品2",
                    Price =2000
                }
            };

            //TODO:DisplayOrderViewModelのリストを入れるメソッド呼び出す
            return View(orderViewModel);
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
