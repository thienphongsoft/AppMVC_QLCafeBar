namespace MyDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DmDinhNghiaMHCF")]
    public partial class DmDinhNghiaMHCF
    {
        [Key]
        public long DnMH_ID { get; set; }

        [StringLength(12)]
        public string MaDnMH { get; set; }

        [StringLength(150)]
        public string TenDnMH { get; set; }

        public long? LoaiHH_ID { get; set; }

        public long? DVT_ID { get; set; }

        [Column(TypeName = "money")]
        public decimal? GiaBan1 { get; set; }

        [Column(TypeName = "money")]
        public decimal? GiaBan2 { get; set; }

        [Column(TypeName = "money")]
        public decimal? GiaBan3 { get; set; }
        public long? TenCongTy_ID { get; set; }
        public int? Status { get; set; }
    }
}
