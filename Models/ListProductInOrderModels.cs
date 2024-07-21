using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAppMVC.Models
{
    public class ListProductInOrderModels
    {
        public long? CT_ID { get; set; }
        public string MaHH { get; set; }
        public string TenHH { get; set; }
        public string TenDVT { get; set; }
        public decimal? SoLuong { get; set; }
    }
}