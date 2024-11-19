namespace MyDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Ph_InBepWebCF
    {
        [Key]
        public long ID { get; set; }

        public long? Ban_ID { get; set; }

        public long? SoPhieu { get; set; }
        public long? SoPhieu_ID { get; set; }
        public DateTime? NgayGio { get; set; }

        [StringLength(20)]
        public string TenTaiKhoan { get; set; }
        public long? TenCongTy_ID { get; set; }
    }
}
