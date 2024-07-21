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
    public class DmNganHangController : Controller
    {
        private MyDB db = new MyDB();
        // GET: DmNganHang
        public ActionResult Index()
        {
            if (Session["user_id"] != null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("Login", "Users");
            }
        }
        public JsonResult GetListDmNganHang()
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var dataList = db.DmNganHangCF.Where(x => x.TenCongTy_ID == congty_id).ToList();
            return Json( new { data = dataList }, JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetListNganHangChon()
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var dataList = db.DmNganHangCF.Where(x => x.TenCongTy_ID == congty_id).ToList();
            return Json(dataList, JsonRequestBehavior.AllowGet);
        }
        public JsonResult Create(DmNganHangCF dmNganHangCF)
        {
            //check the same code 
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var validateName = db.DmNganHangCF.FirstOrDefault(x => x.TenNganHang == dmNganHangCF.TenNganHang && x.TenCongTy_ID == congty_id);
            if (validateName != null)
            {
                //khac null la đúng điều kiện =
                return Json(false, JsonRequestBehavior.AllowGet);
            }
            else
            {
                bool isSuccess = true;
                try
                {
                    db.DmNganHangCF.Add(dmNganHangCF);
                    db.SaveChanges();
                }
                catch (Exception)
                {
                    isSuccess = false;
                }
                return Json(isSuccess, JsonRequestBehavior.AllowGet);
            }
        }
        public ActionResult GetDmNganHangById(long? id)
        {
            var data = db.DmNganHangCF.FirstOrDefault(x => x.NganHang_ID == id);

            return Json(data, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult Delete(long id)
        {

            ////kiem tra co trong phieu thu, chi
            //var LoaiThu_ID = db.Ph_ThuTC.Where(x => x.NganHang_ID == id).FirstOrDefault();
            //var LoaiChi_ID = db.Ph_ChiTC.Where(x => x.NganHang_ID == id).FirstOrDefault();
            //if (LoaiThu_ID != null || LoaiThu_ID != null)//truong hop co trong Table
            //{
            //    return Json(false, JsonRequestBehavior.AllowGet);
            //}
            //else
            //{

                var myID = db.DmNganHangCF.Where(x => x.NganHang_ID == id).FirstOrDefault();
                db.DmNganHangCF.Remove(myID);
                db.SaveChanges();
                return Json(true, JsonRequestBehavior.AllowGet);
            //}
        }
        public JsonResult Update(DmNganHangCF dmNganHangCF)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var valiIdName = db.DmNganHangCF.Where(x => x.NganHang_ID == dmNganHangCF.NganHang_ID && x.TenNganHang == dmNganHangCF.TenNganHang && x.TenCongTy_ID == congty_id).FirstOrDefault();
            if (valiIdName != null)//truong hop khong sua ten
            {
                //dùng row để update lại giá trị theo ý mình
                var row = db.DmNganHangCF.Find(dmNganHangCF.NganHang_ID);
                row.TenNganHang = dmNganHangCF.TenNganHang;
                db.Entry(row).State = EntityState.Modified;
                db.SaveChanges();
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                var valiName = db.DmNganHangCF.Where(x => x.TenNganHang == dmNganHangCF.TenNganHang && dmNganHangCF.TenCongTy_ID == congty_id).FirstOrDefault();
                if (valiName != null) //có ten trung 
                {
                    return Json(false, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    //dùng row để update lại giá trị theo ý mình
                    var row = db.DmNganHangCF.Find(dmNganHangCF.NganHang_ID);
                    row.TenNganHang = dmNganHangCF.TenNganHang;
                    db.Entry(row).State = EntityState.Modified;
                    db.SaveChanges();
                    return Json(true, JsonRequestBehavior.AllowGet);

                }
            }
        }
        public JsonResult UpdateStatus(long id)
        {
            var row = db.DmNganHangCF.Find(id);
            if (row.Status == 0)
            {
                row.Status = 1;
            }
            else
            {
                row.Status = 0;
            }

            db.Entry(row).State = EntityState.Modified;
            db.SaveChanges();
            return Json(true, JsonRequestBehavior.AllowGet);
        }
    }
}