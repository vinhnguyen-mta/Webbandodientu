using Model.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OnlineShop1.Controllers
{
    public class ContentController : Controller
    {
        // GET: Content
        public ActionResult Index(int page =1, int pageSize=10 )
        {
            var model = new ContentDao().ListAllPaging(page, pageSize);
            int totalRecord = 0;
            ViewBag.Total = totalRecord;
            ViewBag.page = page;

            int maxpage = 5;
            int totalPage = 0;
            totalPage = (int)Math.Ceiling((double)(totalRecord / pageSize));
            ViewBag.TotalPage = totalPage;
            ViewBag.MaxPage = maxpage;
            ViewBag.First = 1;
            ViewBag.Last = totalPage;
            ViewBag.Next = page + 1;
            ViewBag.Prev = page - 1;

            return View(model);
        }
        public ActionResult Detail(long id)
        {
            var model = new ContentDao().GetById(id);

            ViewBag.Tags = new ContentDao().ListTag(id);
            return View(model);
        }

        public ActionResult Tag(string tagId, int page = 1, int pageSize = 10)
        {
            var model = new ContentDao().ListAllByTag(tagId,page, pageSize);
            int totalRecord = 0;
            ViewBag.Total = totalRecord;
            ViewBag.page = page;
            ViewBag.Tag = new ContentDao().GetTag(tagId);
            int maxpage = 5;
            int totalPage = 0;
            totalPage = (int)Math.Ceiling((double)(totalRecord / pageSize));
            ViewBag.TotalPage = totalPage;
            ViewBag.MaxPage = maxpage;
            ViewBag.First = 1;
            ViewBag.Last = totalPage;
            ViewBag.Next = page + 1;
            ViewBag.Prev = page - 1;

            return View(model);
        }
    }
}