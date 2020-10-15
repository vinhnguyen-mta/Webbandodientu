using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OnlineShop1.Areas.Amin.Controllers
{
    public class HomeController : BaseController
    {
        // GET: Amin/Home
        public ActionResult Index()
        {
            return View();
        }
    }
}