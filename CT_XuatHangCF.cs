namespace MyDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class CT_XuatHangCF
    {
        [Key]
        public long CTXuatHang_ID { get; set; }

        public long? HH_ID { get; set; }

        public long? DnMH_ID { get; set; }

        public long? PhNhapXuat_ID { get; set; }

        public long? DVT_ID { get; set; }

        [Column(TypeName = "money")]
        public decimal? SoLuong { get; set; }

        [Column(TypeName = "money")]
        public decimal? DonGiaBan { get; set; }

        [Column(TypeName = "money")]
        public decimal? ThanhTienBan { get; set; }

        [Column(TypeName = "money")]
        public decimal? DonGiaVon { get; set; }

        [Column(TypeName = "money")]
        public decimal? ThanhTienVon { get; set; }

        [Column(TypeName = "money")]
        public decimal? TyleChietKhau { get; set; }

        [Column(TypeName = "money")]
        public decimal? TienChietKhau { get; set; }

        public long? TenCongTy_ID { get; set; }

        public long? LoaiNhapxuat_ID { get; set; }

        [StringLength(50)]
        public string Ghichu { get; set; }

       
    }
}
