using MyDatabase;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebAppMVC.ClassCommon;

namespace WebAppMVC.Controllers
{
    public class NhatKyNDController : Controller
    {
        // GET: NhatKyND
        private MyDB db = new MyDB();
        // GET: Input
        [CustomAuthorizeAttribute(RoleID = "FrmNhatKyNguoiDung", QuyenXem = true)]
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult UserList()
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session["congty_id"]);
            var userlist = db.UserCF.Where(m => m.UserID != "SysAdmin" && m.TenCongTy_ID == congty_id).ToList();
            return Json(userlist, JsonRequestBehavior.AllowGet);
        }
        public ActionResult GetListByDate(DateTime ngayStart, DateTime ngayEnd)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session["congty_id"]);

            var list = (from p in db.DmNhatKyNDCF
                        where p.NgayGio >= ngayStart && p.NgayGio <= ngayEnd && p.NguoiDung_ID != "SysAdmin"
                        && p.TenCongTy_ID == congty_id
                        orderby p.NgayGio descending
                        select new
                        {
                            userId = p.NguoiDung_ID,
                            chucnang = p.ChucNang,
                            ngaygio = p.NgayGio,
                            thaotac = p.ThaoTac,
                            thamchieu = p.ThamChieu,
                            thamso = p.ThamSo,
                            sotien = p.SoTien

                        }).ToList();

            //return Json(list, JsonRequestBehavior.AllowGet);
            return Json(new { data = list }, JsonRequestBehavior.AllowGet);

        }
        public ActionResult GetListByDateAndId(DateTime ngayStart, DateTime ngayEnd, string UserID)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session["congty_id"]);
            var list = (from p in db.DmNhatKyNDCF
                        where p.NgayGio >= ngayStart
                        where p.NgayGio <= ngayEnd
                        where p.NguoiDung_ID == UserID && p.TenCongTy_ID == congty_id
                        orderby p.NgayGio descending
                        select new
                        {
                            userId = p.NguoiDung_ID,
                            chucnang = p.ChucNang,
                            ngaygio = p.NgayGio,
                            thaotac = p.ThaoTac,
                            thamchieu = p.ThamChieu,
                            thamso = p.ThamSo,
                            sotien = p.SoTien

                        }).ToList();

            //return Json(list, JsonRequestBehavior.AllowGet);
            return Json(new { data = list }, JsonRequestBehavior.AllowGet);

        }
        [HttpPost]
        public JsonResult DeleteDateAndUser(DateTime ngayStart, DateTime ngayEnd, String UserID)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session["congty_id"]);
            //Delete 
            db.DmNhatKyNDCF.RemoveRange(db.DmNhatKyNDCF.Where(x => x.NgayGio >= ngayStart && x.NgayGio <= ngayEnd && x.NguoiDung_ID == UserID && x.TenCongTy_ID == congty_id));
            db.SaveChanges();

            return Json(true, JsonRequestBehavior.AllowGet);

        }
        [HttpPost]
        public JsonResult DeleteDate(DateTime ngayStart, DateTime ngayEnd)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session["congty_id"]);
            //Delete 
            db.DmNhatKyNDCF.RemoveRange(db.DmNhatKyNDCF.Where(x => x.NgayGio >= ngayStart && x.NgayGio <= ngayEnd && x.TenCongTy_ID == congty_id));
            db.SaveChanges();

            return Json(true, JsonRequestBehavior.AllowGet);

        }
    }
}