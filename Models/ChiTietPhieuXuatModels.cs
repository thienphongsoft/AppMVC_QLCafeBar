using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAppMVC.Models
{
    public class ChiTietPhieuXuatModels
    {
        public long? Phieu_ID { get; set; }

        public long? PhNhapXuat_ID { get; set; }
        public long? HH_ID { get; set; }
        public long? DnMH_ID { get; set; }
        public long? DVT_ID { get; set; }
        public string MaHH { get; set; }
        public string TenHH { get; set; }
        public string TenDVT { get; set; }
        public decimal? SoLuong { get; set; }
        public decimal? DonGiaBan { get; set; }
        public decimal? ThanhTienBan { get; set; }
        public decimal? DonGiaVon { get; set; }
        public decimal? ThanhTienVon { get; set; }
       
    }
}