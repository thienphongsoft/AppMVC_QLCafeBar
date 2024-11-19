namespace MyDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class ChietTinhPhieuXuat_IDCF
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public long PhXuat_ID { get; set; }

        public long? PhChietTinh_ID { get; set; }
    }
}
