using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PetWeatherApp
{
    public class weather
    {
        public string key { get; set; }
        public string headline { get; set; }
    }

    public class Headline
    {

        public string category { get; set; }
    }

    public class RootObject
    {
        public Headline headline { get; set; }
    }
}