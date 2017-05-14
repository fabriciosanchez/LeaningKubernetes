using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace App01_HelloWorld.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult About()
        {
            ViewData["Message"] = "Basic application developed to illustrate Kubernetes scenarios using .NET Core.";

            return View();
        }

        public IActionResult Error()
        {
            return View();
        }
    }
}
