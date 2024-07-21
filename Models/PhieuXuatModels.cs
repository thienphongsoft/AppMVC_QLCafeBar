using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAppMVC.Models
{
    public class PhieuXuatModels
    {
        public long Phieu_ID { get; set; }
        public string SoPhieu { get; set; }
        public long? SoPhieu_ID { get; set; }
        public DateTime? NgayPhieu { get; set; }
        public DateTime? GioVao { get; set; }
        public DateTime? GioRa { get; set; }
        public long? DT_ID { get; set; }
        public string MaDT { get; set; }
        public string TenDT { get; set; }
        public string DiaChi { get; set; }
        public string NguoiGiaoNhan { get; set; }
        public string DienGiai { get; set; }
        public long? LoaiNhapXuat_ID { get; set; }
        public decimal? TienHang { get; set; }
        public decimal? TongTien { get; set; }
        public decimal? ThueSuat { get; set; }
        public decimal? TienThue { get; set; }
        public decimal? TyLeGiamGia { get; set; }
        public decimal? TienGiamGia { get; set; }
        public decimal? TyLePPhucVu { get; set; }
        public decimal? TienPPhucVu { get; set; }
        public decimal? TienPhatSinh { get; set; }
        public string LyDoPhatSinh { get; set; }
        public bool? ThuTienNgay { get; set; }
        public bool? GhiNo { get; set; }
        public long? Ban_ID { get; set; }
        public string TenBan { get; set; }
        public long? GiaBan_ID { get; set; }
        public bool? TienMat { get; set; }
        public bool? ChuyenKhoan { get; set; }
    }
}