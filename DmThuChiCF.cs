namespace MyDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DmThuChiCF")]
    public partial class DmThuChiCF
    {
        [Key]
        public long LoaiThuChi_ID { get; set; }

        [StringLength(50)]
        public string TenLoaiThuChi { get; set; }

        public long? ThuHayChi { get; set; }

        public bool? CongNo { get; set; }

        public long? TenCongTy_ID { get; set; }

        public int? Status { get; set; }
    }
}
