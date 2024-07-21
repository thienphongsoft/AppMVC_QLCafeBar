using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebAppMVC.Models
{
    public class LoginViewModel
    {
        public long TK_ID { get; set; }

        [StringLength(100, ErrorMessage = "Tài khoản quá dài")]
        [Required(ErrorMessage = "Chưa nhập tài khoản.")]
        [Display(Name = "Tài khoản")]
        public string UserID { get; set; }

        [StringLength(100)]
        public string UserName { get; set; }

        [StringLength(150)]
        [Required(ErrorMessage = "Phải nhập mật khẩu.")]
        [Display(Name = "Mật khẩu")]
        public string PassWord { get; set; }

        [StringLength(200)]
        public string FullName { get; set; }

        public long? TenCongTy_ID { get; set; }

        public int? ThamSo { get; set; }
        [Display(Name = "Ghi nhớ tài khoản?")]
        public bool RememberMe { get; set; }
    }
}