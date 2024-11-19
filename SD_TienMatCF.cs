namespace MyDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class SD_TienMatCF
    {
        [Key]
        public long SDTienMat_ID { get; set; }

        public DateTime? NgayPhatSinh { get; set; }

        [Column(TypeName = "money")]
        public decimal? SoTien { get; set; }

        public long? TenCongTy_ID { get; set; }

        public int? Status { get; set; }
    }
}
