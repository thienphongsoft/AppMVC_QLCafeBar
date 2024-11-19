namespace MyDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class SD_TonKhoCF
    {
        [Key]
        public long TonKho_ID { get; set; }

        public long? Kho_ID { get; set; }

        public long? HH_ID { get; set; }

        public long? Thang { get; set; }

        public long? Nam { get; set; }

        [Column(TypeName = "money")]
        public decimal? SoLuong { get; set; }

        [Column(TypeName = "money")]
        public decimal? GiaVon { get; set; }

        [Column(TypeName = "money")]
        public decimal? GiaTri { get; set; }

        [StringLength(2)]
        public string Status { get; set; }
    }
}
