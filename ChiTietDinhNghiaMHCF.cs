namespace MyDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ChiTietDinhNghiaMHCF")]
    public partial class ChiTietDinhNghiaMHCF
    {
        [Key]
        public long ChiTietDnMH_ID { get; set; }

        public long? DnMH_ID { get; set; }

        public long? HH_ID { get; set; }

        public long? DVT_ID { get; set; }

        [Column(TypeName = "money")]
        public decimal? SoLuong { get; set; }
    }
}
