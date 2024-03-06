using EcSite.Models;
using EcSite.ViewModels;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace EcSite.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        public User _userId;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
            _userId = new User() { UserId = "system" };  //TODO:ログインユーザー名を代入する処理をどこかで作成。ログイン画面作成時に作成する。
        }

        public IActionResult Index()
        {
            var products = new Product();
            ViewBag.Products = products.GetTopTwentyProductsOfTheLastWeek();
            return View(products);
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
