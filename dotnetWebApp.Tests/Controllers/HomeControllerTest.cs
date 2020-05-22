using dotnetWebApp.Controllers;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Text;
using Xunit;


namespace dotnetWebApp.Tests.Controllers
{
    public class HomeControllerTest
    {
        HomeController _Controller = new HomeController();
        [Fact]
        void Index()
        {
            var ControllerTestResult = _Controller.Index();
            Assert.NotNull(ControllerTestResult);
            Assert.IsType<ViewResult>(ControllerTestResult);
            Assert.IsType<int>(_Controller.AdditionalResult);
        }
        [Fact]
        void Privacy()
        {
            var ControllerTestResult = _Controller.Privacy();
            Assert.NotNull(ControllerTestResult);
        }
        [Fact]
        void About()
        {
            var ControllerTestResult = _Controller.About();
            Assert.NotNull(ControllerTestResult);
        }
        [Fact]
        void Contact()
        {
            var ControllerTestResult = _Controller.Contact();
            Assert.NotNull(ControllerTestResult);
        }
    }
}
