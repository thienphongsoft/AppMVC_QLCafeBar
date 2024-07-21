using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAppMVC.Models
{
    public class PhieuThuChiModels
    {
        public long ThuChi_ID { get; set; }

        public long? PhNhapXuat_ID { get; set; }

        public long? DT_ID { get; set; }

        public long? LoaiThuChi_ID { get; set; }
        public string TenLoaiThuChi { get; set; }
        public string SoPhieu { get; set; }
        public long? SoPhieu_ID { get; set; }
        public DateTime? NgayPhieu { get; set; }
        public string MaDT { get; set; }
        public string TenDT { get; set; }
        public string Address { get; set; }
        public string NguoiNhanNop { get; set; }
        public string DiaChi { get; set; }
        public string LyDo { get; set; }
        public decimal? SoTien { get; set; }
        public string ChungTuGoc { get; set; }
        public bool? HinhThucThanhToan { get; set; }
        public long? NganHang_ID { get; set; }
        public string TenNganHang { get; set; }
        public string LoaiChungTu { get; set; }
        public string SoPhieuBan { get; set; }
    }
}