namespace MyDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("AccessRightCF")]
    public partial class AccessRightCF
    {
        [Key]
        public long AccessID { get; set; }

        public long? TK_ID { get; set; }

        [StringLength(100)]
        public string TaiKhoan { get; set; }

        [StringLength(50)]
        public string QuyenID { get; set; }

        [StringLength(150)]
        public string TenQuyen { get; set; }

        public int? LoaiQuyen { get; set; }

        public bool? Xem { get; set; }

        public bool? Tao { get; set; }

        public bool? Sua { get; set; }

        public bool? Xoa { get; set; }

        public bool? InPhieu { get; set; }
    }
}
