namespace MyDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DmLoaiHHCF")]
    public partial class DmLoaiHHCF
    {
        [Key]
        public long LoaiHH_ID { get; set; }

        [Required]
        [StringLength(50)]
        public string TenLoaiHH { get; set; }
        public long? TenCongTy_ID { get; set; }
        public bool? NhomNguyenLieu { get; set; }
        public int Status { get; set; }
    }
}
