namespace MyDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class CT_InBepWebCF
    {
        [Key]
        public long CT_ID { get; set; }

        public long? ID { get; set; }

        public long? SoPhieu { get; set; }

        public long? HH_ID { get; set; }

        public long? DnMH_ID { get; set; }

        public long? DVT_ID { get; set; }

        [Column(TypeName = "money")]
        public decimal? SLMon { get; set; }
    }
}
