namespace MyDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DmNhatKyNDCF")]
    public partial class DmNhatKyNDCF
    {
        [Key]
        public long NhatKyND_ID { get; set; }

        [StringLength(10)]
        public string NguoiDung_ID { get; set; }

        [StringLength(50)]
        public string ChucNang { get; set; }

        public DateTime? NgayGio { get; set; }

        [StringLength(100)]
        public string ThaoTac { get; set; }

        public string ThamChieu { get; set; }

        [StringLength(50)]
        public string ThamSo { get; set; }

        [Column(TypeName = "money")]
        public decimal? SoTien { get; set; }

        public long? TenCongTy_ID { get; set; }
    }
}
