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
            var productViewModel = new Product();
            ViewBag.Products = productViewModel.GetTopTwentyProductsOfTheLastWeek();
            return View(productViewModel);
        }

        [HttpGet]
        public IActionResult ShoppingCart()
        {
            var orderViewModel = new DisplayOrderViewModel();
            ViewBag.DesiredProducts = new List<DisplayOrderViewModel>() {
                new DisplayOrderViewModel()
                {
                    ProductId = 1,
                    ProductName = "商品１",
                    StockQuantity =5,
                    OrderQuantity =2,
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
