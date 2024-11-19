namespace MyDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DmDoiTuongCF")]
    public partial class DmDoiTuongCF
    {
        [Key]
        public long DT_ID { get; set; }

        [StringLength(10)]
        public string MaDT { get; set; }

        public string TenDT { get; set; }

        public string DiaChi { get; set; }

        public long? LoaiDT_ID { get; set; }

        [StringLength(50)]
        public string Phone { get; set; }

        [StringLength(50)]
        public string SoTK { get; set; }

        [StringLength(50)]
        public string MaST { get; set; }

        public string Email { get; set; }

        public string NgGiaoDich { get; set; }

        public long? TenCongTy_ID { get; set; }

        public int? Status { get; set; }
    }
}
