using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAppMVC.Models
{
    public class BaoCaoDoanhThu
    {
        public string MaHH { get; set; }
        public string TenHH { get; set; }
        public DateTime? NgayPhieu { get; set; }
        public decimal? DoanhThu { get; set; }
        public decimal? GiamTru { get; set; }
        public decimal? DoanhThuThuan { get; set; }
        public decimal? TyLeTangGiam { get; set; }
    }
}