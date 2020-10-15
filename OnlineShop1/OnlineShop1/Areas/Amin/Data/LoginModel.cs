﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace OnlineShop1.Areas.Amin.Data
{
    public class LoginModel
    {
        [Required(ErrorMessage ="Mời nhập UserName")]
        public string UserName { get; set; }

        [Required(ErrorMessage = "Mời nhập PassWord")]
        public string Password { get; set; }
        public bool RememberMe { get; set; }
    }
}