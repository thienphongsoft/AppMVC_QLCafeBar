namespace MyDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DmHangHoaCF")]
    public partial class DmHangHoaCF
    {
        [Key]
        public long HH_ID { get; set; }

        [StringLength(13)]
        public string MaHH { get; set; }

        [StringLength(150)]
        public string TenHH { get; set; }

        [Column(TypeName = "money")]
        public decimal? GiaMua { get; set; }

        [Column(TypeName = "money")]
        public decimal? GiaBan1 { get; set; }

        [Column(TypeName = "money")]
        public decimal? GiaBan2 { get; set; }

        [Column(TypeName = "money")]
        public decimal? GiaBan3 { get; set; }

        public long LoaiHH_ID { get; set; }

        public long DVT_ID { get; set; }
        public long? TenCongTy_ID { get; set; }
        public int? Status { get; set; }
    }
}
