using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebAppMVC.Models
{
    public class ObjectsModels
    {
        public long DT_ID { get; set; }
        [StringLength(20)]
        public string MaDT { get; set; }
        public string TenDT { get; set; }
        public string TenLoaiDT { get; set; }
        public string DiaChi { get; set; }
        public string Phone { get; set; }
        public string SoTK { get; set; }
        public string MaST { get; set; }
        public string Email { get; set; }
        public long? TenCongTy_ID { get; set; }
        public int? Status { get; set; }

    }
}