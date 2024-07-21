using MyDatabase;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebAppMVC.ClassCommon;

namespace WebAppMVC.Controllers
{
    public class ChangePassController : Controller
    {
        // GET: ChangePass
        private MyDB db = new MyDB();
        //[CustomAuthorizeAttribute(RoleID = "FrmChangePass", QuyenXem = true)]
        
        public ActionResult Index()
        {
            if (Request.HttpMethod == "POST")
            {
                // Do something
                return RedirectToAction("Login", "Users");
            }
            return View();
        }
        public JsonResult CheckOldPass(string OldPass)
        {
            var password = ThienPhong.Encrypt(OldPass, "412110");
            var userid = Convert.ToString(System.Web.HttpContext.Current.Session[CommonConstants.USER_SESSION]);
            var valiName = db.UserCF.FirstOrDefault(x => x.PassWord == password && x.UserID == userid);
            if (valiName != null)
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
            else
            {
                TempData["thongbao"] = "Mật khẩu củ không đúng.";
                return Json(true, JsonRequestBehavior.AllowGet);
            }
        }
        public JsonResult UpdatePass(UserCF userCF)
        {
            //db.Entry(user).State = EntityState.Modified;
            //db.SaveChanges();
            //return Json(true, JsonRequestBehavior.AllowGet);

            //dùng row để update lại giá trị theo ý mình
            var row = db.UserCF.Where(x => x.UserID == userCF.UserID).FirstOrDefault();
            row.PassWord = ThienPhong.Encrypt(userCF.PassWord, "412110");
            //row.Status = "1";
            db.Entry(row).State = EntityState.Modified;
            db.SaveChanges();
            TempData["thongbao"] = "Bạn đã đổi mật khẩu thành công!";
            return Json(true, JsonRequestBehavior.AllowGet);
        }
    }
}