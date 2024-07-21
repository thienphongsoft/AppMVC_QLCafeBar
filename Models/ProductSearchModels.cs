using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAppMVC.Models
{
    public class ProductSearchModels
    {
        public string label { get; set; }
        public string code { get; set; }
        public string TenDVT { get; set; }
        public decimal? giamua { get; set; }
        public decimal? giaban1 { get; set; }
        public decimal? giaban2 { get; set; }
        public decimal? giaban3 { get; set; }
        public long? valDVT { get; set; }
        public long? val { get; set; }
        public long? valDn { get; set; }
    }
}