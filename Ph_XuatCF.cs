namespace MyDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Ph_XuatCF
    {
        [Key]
        public long PhNhapXuat_ID { get; set; }

        public long? LoaiNhapXuat_ID { get; set; }

        public long? DT_ID { get; set; }

        [StringLength(20)]
        public string NguoiDung_ID { get; set; }

        [StringLength(10)]
        public string SoPhieu { get; set; }
        public long? SoPhieu_ID { get; set; }

        public DateTime? NgayPhieu { get; set; }

        public string NguoiGiaoNhan { get; set; }

        public string DiaChi { get; set; }

        [Column(TypeName = "money")]
        public decimal? TienHang { get; set; }

        [Column(TypeName = "money")]
        public decimal? TienThue { get; set; }

        [Column(TypeName = "money")]
        public decimal? TongTien { get; set; }

        [Column(TypeName = "money")]
        public decimal? ThueSuat { get; set; }

        public string DienGiai { get; set; }

        public bool? ThuTienNgay { get; set; }

        public int? Status { get; set; }

        public long? Ban_ID { get; set; }

        public int? ThanhToan { get; set; }

        [Column(TypeName = "money")]
        public decimal? TyLeGiamGia { get; set; }

        [Column(TypeName = "money")]
        public decimal? TienGiamGia { get; set; }

        [Column(TypeName = "money")]
        public decimal? TyLePPhucVu { get; set; }

        [Column(TypeName = "money")]
        public decimal? TienPPhucVu { get; set; }

        [Column(TypeName = "money")]
        public decimal? TienPhatSinh { get; set; }

        public string LyDoPhatSinh { get; set; }

        public DateTime? GioVao { get; set; }

        public DateTime? GioRa { get; set; }
        public long? TenCongTy_ID { get; set; }
        public bool? GhiNo { get; set; }
        public bool? TienMat { get; set; }
        public bool? ChuyenKhoan { get; set; }
    }
}
