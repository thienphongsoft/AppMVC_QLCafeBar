namespace MyDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DmNganHangCF")]
    public partial class DmNganHangCF
    {
        [Key]
        public long NganHang_ID { get; set; }

        public string TenNganHang { get; set; }

        public long? TenCongTy_ID { get; set; }

        public int? Status { get; set; }
    }
}
