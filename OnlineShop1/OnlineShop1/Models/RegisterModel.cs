using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace OnlineShop1.Models
{
    public class RegisterModel
    {
        [Key]
        public long id { set; get; }
        [Display(Name ="Tên đăng nhập")]
        [Required(ErrorMessage ="Yêu cầu nhập tên đăng nhập")]

        public string UserName { set; get; }
        [Display(Name = "Mật khẩu")]
        [StringLength(20,MinimumLength =6,ErrorMessage ="Độ dài mật khẩu ít nhất là 6 kí tự")]
        [Required(ErrorMessage = "Yêu cầu nhập Mật khẩu")]
        public string Password { set; get; }
        [Display(Name = "Xác nhận mật khẩu")]
        [Compare("Password" ,ErrorMessage ="Xác nhận không đúng")]
        public string ConfiPassword { set; get; }
        [Display(Name = "Tên")]
        [Required(ErrorMessage = "Yêu cầu nhập họ tên")]
        public string Name { set; get; }
        [Display(Name = "Địa chỉ")]
        public string Address { set; get; }
        [Display(Name = "Email")]
        [Required(ErrorMessage = "Yêu cầu nhập email")]
        public string Email { set; get; }
        [Display(Name = "Điện thoại")]
        public string Phone { set; get; }
        [Display(Name ="Tỉnh/Thành")]
        public string ProvinceID { get; set; }
        [Display(Name ="Quận/Huyện")]
        public string DistrictID { get; set; }
    }
}