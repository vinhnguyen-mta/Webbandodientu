using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace OnlineShop1.Models
{
    public class LoginModel
    {
        [Key]
        [Display(Name ="Tên đăng nhập")]
        [Required(ErrorMessage ="yêu cầu nhập tài khoản")]
        public string UserName { set; get; }
        [Required(ErrorMessage ="yêu cầu nhập mật khẩu")]
        [Display(Name ="Mật khẩu")]
        public string Password { set; get; }
    }
}