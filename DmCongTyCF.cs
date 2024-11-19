namespace MyDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DmCongTyCF")]
    public partial class DmCongTyCF
    {
        [Key]
        public long CongTy_ID { get; set; }

        [StringLength(200)]
        public string TenCongTy { get; set; }

        [StringLength(250)]
        public string DiaChi { get; set; }

        [StringLength(100)]
        public string DienThoai { get; set; }

        [StringLength(50)]
        public string SoTaiKhoan { get; set; }

        [StringLength(50)]
        public string EmailCongTy { get; set; }

        [StringLength(100)]
        public string GhiChuPhieu { get; set; }

        [StringLength(150)]
        public string MS01 { get; set; }

        [StringLength(150)]
        public string MS02 { get; set; }

        public int? Status { get; set; }
    }
}
