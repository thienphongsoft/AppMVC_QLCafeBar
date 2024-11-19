namespace MyDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DmDVTCF")]
    public partial class DmDVTCF
    {
        [Key]
        public long DVT_ID { get; set; }

        [StringLength(50)]
        public string TenDVT { get; set; }

        public long? TenCongTy_ID { get; set; }
        public int? Status { get; set; }
    }
}
