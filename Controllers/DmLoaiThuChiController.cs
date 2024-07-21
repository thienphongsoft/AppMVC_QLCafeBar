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
    public class DmLoaiThuChiController : Controller
    {
        private MyDB db = new MyDB();
        // GET: DmLoaiThuChi
        [CustomAuthorizeAttribute(RoleID = "FrmDmThuChi", QuyenXem = true)]
        public ActionResult Index()
        {
            return View();
        }
        public JsonResult GetListDmThuChi()
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session["congty_id"]);
            var list = db.DmThuChiCF.Where(x => x.TenCongTy_ID == congty_id && x.Status == 0).ToList();
            //return Json(list, JsonRequestBehavior.AllowGet);
            return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        public JsonResult Create(DmThuChiCF dmThuChiTC)
        {
            //check the same code 
            var id = Convert.ToInt32(System.Web.HttpContext.Current.Session["congty_id"]);
            var validateName = db.DmThuChiCF.FirstOrDefault(x => x.TenLoaiThuChi == dmThuChiTC.TenLoaiThuChi && x.TenCongTy_ID == id);
            if (validateName != null)
            {
                //trung ten
                return Json(false, JsonRequestBehavior.AllowGet);
            }
            else
            {
                bool isSuccess = true;
                try
                {
                    db.DmThuChiCF.Add(dmThuChiTC);
                    db.SaveChanges();
                }
                catch (Exception)
                {
                    isSuccess = false;
                }
                return Json(isSuccess, JsonRequestBehavior.AllowGet);
            }
        }
        public ActionResult GetDmThuChiById(long? id)
        {
            var data = db.DmThuChiCF.Where(x => x.LoaiThuChi_ID == id).FirstOrDefault();

            return Json(data, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult Delete(long id)
        {

            //kiem tra co trong phieu thu, chi
            var LoaiThu_ID = db.Ph_ThuCF.Where(x => x.LoaiThuChi_ID == id).FirstOrDefault();
            var LoaiChi_ID = db.Ph_ChiCF.Where(x => x.LoaiThuChi_ID == id).FirstOrDefault();
            if (LoaiThu_ID != null || LoaiThu_ID != null)//truong hop co trong Table
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
            else
            {

                var myID = db.DmThuChiCF.Where(x => x.LoaiThuChi_ID == id).FirstOrDefault();
                db.DmThuChiCF.Remove(myID);
                db.SaveChanges();
                return Json(true, JsonRequestBehavior.AllowGet);
            }
        }
        public JsonResult Update(DmThuChiCF dmThuChiTC)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session["congty_id"]);
            var valiIdName = db.DmThuChiCF.Where(x => x.LoaiThuChi_ID == dmThuChiTC.LoaiThuChi_ID && x.TenLoaiThuChi == dmThuChiTC.TenLoaiThuChi && x.TenCongTy_ID == congty_id).FirstOrDefault();
            if (valiIdName != null)//truong hop khong sua ten
            {
                //dùng row để update lại giá trị theo ý mình
                var row = db.DmThuChiCF.Find(dmThuChiTC.LoaiThuChi_ID);
                row.TenLoaiThuChi = dmThuChiTC.TenLoaiThuChi;
                row.ThuHayChi = dmThuChiTC.ThuHayChi;
                row.CongNo = dmThuChiTC.CongNo;
                db.Entry(row).State = EntityState.Modified;
                db.SaveChanges();
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                var valiName = db.DmThuChiCF.Where(x => x.TenLoaiThuChi == dmThuChiTC.TenLoaiThuChi && dmThuChiTC.TenCongTy_ID == congty_id).FirstOrDefault();
                if (valiName != null) //có ten trung 
                {
                    return Json(false, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    //dùng row để update lại giá trị theo ý mình
                    var row = db.DmThuChiCF.Find(dmThuChiTC.LoaiThuChi_ID);
                    row.TenLoaiThuChi = dmThuChiTC.TenLoaiThuChi;
                    row.ThuHayChi = dmThuChiTC.ThuHayChi;
                    row.CongNo = dmThuChiTC.CongNo;
                    db.Entry(row).State = EntityState.Modified;
                    db.SaveChanges();
                    return Json(true, JsonRequestBehavior.AllowGet);

                }
            }
        }
        //kiem tra quyen tao phieu

        public ActionResult CheckQuyenCreate()
        {
            string UserId = Session["user_id"].ToString();
            var validateName = db.AccessRightCF.Count(x => x.QuyenID == "FrmDmThuChi" && x.TaiKhoan == UserId && x.Tao == true);
            if (validateName == 1)
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
        }
        public ActionResult CheckQuyenEdit()
        {
            string UserId = Session["user_id"].ToString();
            var validateName = db.AccessRightCF.Count(x => x.QuyenID == "FrmDmThuChi" && x.TaiKhoan == UserId && x.Sua == true);
            if (validateName == 1)
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
        }
        public ActionResult CheckQuyenDelete()
        {
            string UserId = Session["user_id"].ToString();
            var validateName = db.AccessRightCF.Count(x => x.QuyenID == "FrmDmThuChi" && x.TaiKhoan == UserId && x.Xoa == true);
            if (validateName == 1)
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
        }
    }
}