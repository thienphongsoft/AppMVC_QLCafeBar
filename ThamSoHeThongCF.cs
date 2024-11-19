namespace MyDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ThamSoHeThongCF")]
    public partial class ThamSoHeThongCF
    {
        public long ID { get; set; }

        public bool? TonKho { get; set; }

        public bool? GiaVon { get; set; }

        public bool? PhieuChi { get; set; }

        public bool? PhieuThu { get; set; }

        public bool? NhatKyND { get; set; }

        public bool? MucAnToan { get; set; }

        public int? KhoGiayIn { get; set; }

        public int? KhoGiayTim { get; set; }

        public int? KhoGiayTPS { get; set; }

        public int? BanIn { get; set; }
        public long? TenCongTy_ID { get; set; }
    }
}
