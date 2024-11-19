namespace MyDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ScreenCF")]
    public partial class ScreenCF
    {
        [Key]
        public long Phieu_ID { get; set; }

        [Required]
        [StringLength(30)]
        public string ScreenID { get; set; }

        [StringLength(50)]
        public string DeScr { get; set; }

        public int? LoaiQuyen { get; set; }

        public bool? Xem { get; set; }

        public bool? Tao { get; set; }

        public bool? Sua { get; set; }

        public bool? Xoa { get; set; }

        public bool? InPhieu { get; set; }
    }
}
