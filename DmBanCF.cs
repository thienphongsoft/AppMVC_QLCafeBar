namespace MyDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DmBanCF")]
    public partial class DmBanCF
    {
        [Key]
        public long Ban_ID { get; set; }

        [StringLength(50)]
        public string TenBan { get; set; }

        public long? GiaBan { get; set; }

        public int? CoKhach { get; set; }

        public long? TenCongTy_ID { get; set; }

        public int? Status { get; set; }
    }
}
