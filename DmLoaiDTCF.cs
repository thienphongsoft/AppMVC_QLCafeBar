namespace MyDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DmLoaiDTCF")]
    public partial class DmLoaiDTCF
    {
        [Key]
        public long LoaiDT_ID { get; set; }

        [StringLength(50)]
        public string TenLoaiDT { get; set; }

        public long? TenCongTy_ID { get; set; }

        public int? Status { get; set; }
    }
}