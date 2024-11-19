namespace MyDatabase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("UserCF")]
    public partial class UserCF
    {
        [Key]
        public long TK_ID { get; set; }

        [StringLength(100)]
        public string UserID { get; set; }

        [StringLength(100)]
        public string UserName { get; set; }

        [StringLength(150)]
        public string PassWord { get; set; }

        [StringLength(200)]
        public string FullName { get; set; }

        public long? TenCongTy_ID { get; set; }

        public int? ThamSo { get; set; }
    }
}
