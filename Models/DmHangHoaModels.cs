using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebAppMVC.Models
{
    public class DmHangHoaModels
    {
        public long HH_ID { get; set; }
        public string MaHH { get; set; }
        public string TenHH { get; set; }
        public string TenNhomHang { get; set; }
        public string TenDVT { get; set; }
        public decimal? GiaMua { get; set; }
        public decimal? GiaBan1 { get; set; }
        public decimal? GiaBan2 { get; set; }
        public decimal? GiaBan3 { get; set; }
        public long? DVT_ID { get; set; }
        public long? LoaiHH_ID { get; set; }
        public int? Status { get; set; }
        public long ChiTietDnMH_ID { get; set; }
        public decimal? SoLuong { get; set; }

    }
}