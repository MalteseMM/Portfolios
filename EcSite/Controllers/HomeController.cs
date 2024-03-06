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

            var products = new Product();
            ViewBag.Products = products.GetTopTwentyProductsOfTheLastWeek();
            return View(products);
        }

        [HttpGet]
        public IActionResult ShoppingCart()
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
        public IActionResult ShoppingCart(DisplayOrderViewModel orderProducts)
        {
            return View(orderProducts);
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
