namespace MyDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Ph_CongNoKHCF
    {
        [Key]
        public long CongNo_ID { get; set; }

        public long? PhNhapXuat_ID { get; set; }

        public long? ThuChi_ID { get; set; }

        public long? DT_ID { get; set; }

        public long? LoaiCongNo_ID { get; set; }

        public long? DonVi_ID { get; set; }

        [Column(TypeName = "money")]
        public decimal? GiaTri { get; set; }

        [Column(TypeName = "money")]
        public decimal? CongNo { get; set; }

        public DateTime? NgayPhatSinh { get; set; }

        [StringLength(50)]
        public string DienGiai { get; set; }

        [StringLength(10)]
        public string SoChungTu { get; set; }

        public DateTime? HanThanhToan { get; set; }

        public int? ThamSo { get; set; }

        [StringLength(100)]
        public string UserID { get; set; }

        public long? TenCongTy_ID { get; set; }
    }
}
