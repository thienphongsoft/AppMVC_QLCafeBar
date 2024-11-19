namespace MyDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Ph_ThuCF
    {
        [Key]
        public long ThuChi_ID { get; set; }

        public long? PhNhapXuat_ID { get; set; }

        public long? DT_ID { get; set; }

        public long? LoaiThuChi_ID { get; set; }

        public long? SoPhieu_ID { get; set; }

        [StringLength(20)]
        public string SoPhieu { get; set; }

        public DateTime? NgayPhieu { get; set; }

        [StringLength(50)]
        public string NguoiNhanNop { get; set; }

        [StringLength(200)]
        public string DiaChi { get; set; }

        [StringLength(50)]
        public string LyDo { get; set; }

        [Column(TypeName = "money")]
        public decimal? SoTien { get; set; }

        public bool? HinhThucThanhToan { get; set; }

        public long? NganHang_ID { get; set; }

        public long? TenCongTy_ID { get; set; }

        [StringLength(100)]
        public string UserID { get; set; }

        public int? Status { get; set; }
    }
}
