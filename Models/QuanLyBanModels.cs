using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAppMVC.Models
{
    public class QuanLyBanModels
    {
        public long? PhNhapXuat_ID { get; set; }
        public long? Ban_ID { get; set; }
        public string TenBan { get; set; }
        public long? GiaBan { get; set; }
        public int? ThanhToan { get; set; }
    }
}