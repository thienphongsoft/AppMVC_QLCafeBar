namespace MyDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class CT_NhapHangCF
    {
        [Key]
        public long CTNhapHang_ID { get; set; }

        public long? HH_ID { get; set; }

        public long? PhNhapXuat_ID { get; set; }

        public long? DVT_ID { get; set; }

        [Column(TypeName = "money")]
        public decimal? SoLuong { get; set; }

        [Column(TypeName = "money")]
        public decimal? DonGiaVon { get; set; }

        [Column(TypeName = "money")]
        public decimal? ThanhTienVon { get; set; }

        [Column(TypeName = "money")]
        public decimal? DonGiaTraLai { get; set; }

        [Column(TypeName = "money")]
        public decimal? ThanhTienTraLai { get; set; }

        public long? Kho_ID { get; set; }

        public long? LoaiNhapXuat_ID { get; set; }

        [Column(TypeName = "money")]
        public decimal? TienChietKhau { get; set; }

        [Column(TypeName = "money")]
        public decimal? TyLeChietKhau { get; set; }

        [Column(TypeName = "money")]
        public decimal? DonGiaBan { get; set; }
    }
}
