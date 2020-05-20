using System;
using Xunit;

namespace dotnetWebApp.Tests
{
    public class SomeTest
    {
        [Fact]
        public void Numbers()
        {
            Assert.True(1 == 1);
        }
        [Fact]
        public void NumbersGreaterThan()
        {
            Assert.True(2 >= 1);
        }
        [Fact]
        public void NumbersLessThan()
        {
            Assert.True(1 <= 2);
        }
    }
}
