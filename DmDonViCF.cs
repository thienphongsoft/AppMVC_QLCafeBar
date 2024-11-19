namespace MyDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DmDonViCF")]
    public partial class DmDonViCF
    {
        [Key]
        public long DonVi_ID { get; set; }

        [StringLength(100)]
        public string TenDonVi { get; set; }

        [StringLength(200)]
        public string TenPhanMem { get; set; }

        public string MS { get; set; }
    }
}
