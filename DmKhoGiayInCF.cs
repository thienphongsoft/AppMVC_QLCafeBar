namespace MyDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DmKhoGiayInCF")]
    public partial class DmKhoGiayInCF
    {
        [Key]
        public long KhoGiay_ID { get; set; }

        [StringLength(150)]
        public string TenKhoGiay { get; set; }

        public int? LoaiKhoGiay_ID { get; set; }

        [StringLength(100)]
        public string TenFile { get; set; }

        public bool? AnHien { get; set; }

        public int? ThuTu { get; set; }

        public long? TenCongTy_ID { get; set; }
    }
}
