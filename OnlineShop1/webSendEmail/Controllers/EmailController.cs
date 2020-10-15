using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Mvc;

namespace webSendEmail.Controllers
{
    public class EmailController : Controller
    {
        // GET: Email
        public ActionResult Form()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Form(string receiverEmail,string subject,string message)
        {
            try
            {
                if (ModelState.IsValid)
                {
                   var senderemail = new MailAddress("vinhamin99@gmail.com", "dau xanh rau ma");
                    var receiveremail = new MailAddress(receiverEmail, "receiver");

                    var password = "vinhnguyen99";
                    var sub = subject;
                    var body = message;

                    var smtp = new SmtpClient()
                    {
                        Host = "smtp.gmail.com",
                        Port = 587,
                        EnableSsl = true,
                        DeliveryMethod = SmtpDeliveryMethod.Network,
                        UseDefaultCredentials = false,
                        Credentials = new NetworkCredential(senderemail.Address,password)
                    };
                    using (var mess = new MailMessage(senderemail, receiveremail)
                    {
                        Subject = subject,
                        Body = body
                    }
                    )
                    {
                        smtp.Send(mess);
                    } ;

                    return View();


                }
            }
            catch(Exception)
            {
                ViewBag.Error = "sai cmnr";
            }


            return View();
        }
    }
}