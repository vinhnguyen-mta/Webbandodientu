using Model.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OnlineShop1.Controllers
{
    public class ContactController : Controller
    {
        // GET: Contact
        public ActionResult Index()
        {
            // đã bị cấm ở việt nam 
            var model = new ContactDao().GetActiveContact();
            return View(model);
        }
    }
}