using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using dotnetWebApp.Models;

namespace dotnetWebApp.Controllers
{
    public class HomeController : Controller
    {
        public int AdditionalResult;
        public IActionResult Index()
        {
            AdditionalResult = 2 + 1;
            return View(AdditionalResult);
            //return Ok();
        }

        public IActionResult Privacy()
        {
            return View();
        }
        public IActionResult About()
        {
            return View();
        }

        public IActionResult Contact()
        {
            return View();
        }
    }
}
