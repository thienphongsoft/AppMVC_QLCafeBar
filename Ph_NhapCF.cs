namespace MyDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Ph_NhapCF
    {
        [Key]
        public long PhNhapXuat_ID { get; set; }

        public long? LoaiNhapXuat_ID { get; set; }

        public long? DT_ID { get; set; }

        public long? KhoNhap_ID { get; set; }

        [StringLength(20)]
        public string NguoiDung_ID { get; set; }

        [StringLength(10)]
        public string SoPhieu { get; set; }

        public DateTime? NgayPhieu { get; set; }

        [StringLength(50)]
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

        [StringLength(50)]
        public string DienGiai { get; set; }

        public bool? TraTienNgay { get; set; }

        [StringLength(2)]
        public string Status { get; set; }
    }
}
