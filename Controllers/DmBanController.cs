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
    public class DmBanController : Controller
    {
        // GET: DmBan
        private MyDB db = new MyDB();
     
        [CustomAuthorizeAttribute(RoleID = "FrmDmBan", QuyenXem = true)]
        public ActionResult Index()
        {
            return View();
        }
        public JsonResult GetListDmBan()
        {
            var id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = db.DmBanCF.Where(x => x.TenCongTy_ID == id).ToList();

            //return Json(modefiedData, JsonRequestBehavior.AllowGet);
            return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        public JsonResult Create(DmBanCF dmBanCF)
        {
            //check the same code 
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var validateName = db.DmBanCF.FirstOrDefault(x => x.TenBan == dmBanCF.TenBan && x.TenCongTy_ID == congty_id);
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
                    db.DmBanCF.Add(dmBanCF);
                    db.SaveChanges();
                }
                catch (Exception)
                {
                    isSuccess = false;
                }
                return Json(isSuccess, JsonRequestBehavior.AllowGet);
            }
        }
        //[CustomAuthorizeEdit(RoleID = "FrmDmBan", QuyenSua = true)]
        public ActionResult Edit(long? id)
        {
            var data = db.DmBanCF.FirstOrDefault(x => x.Ban_ID == id);

            return Json(data, JsonRequestBehavior.AllowGet);
        }
        public JsonResult CheckIdAndName(long id, string name)
        {
            var IdAndName = db.DmBanCF.FirstOrDefault(x => x.Ban_ID == id && x.TenBan == name);
            if (IdAndName != null) //đủ điều kiện
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
        }
        public JsonResult SaveEdit(DmBanCF dmBanCF)
        {
            //update tung truong
            var row = db.DmBanCF.FirstOrDefault(x => x.Ban_ID == dmBanCF.Ban_ID);
            row.TenBan= dmBanCF.TenBan;
            row.GiaBan = dmBanCF.GiaBan;
            db.Entry(row).State = EntityState.Modified;
            db.SaveChanges();
            return Json(true, JsonRequestBehavior.AllowGet);
        }
        public JsonResult CheckNameAndCongTy(string name)
        {
            var id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var Name = db.DmBanCF.FirstOrDefault(x => x.TenBan == name && x.TenCongTy_ID == id);
            if (Name != null) //đủ điều kiện
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
        }
        [HttpPost]
        public ActionResult Delete(long id)
        {

            //kiem tra id co ton tai trong phieu
            var Ph = db.Ph_XuatCF.Where(x => x.Ban_ID == id).FirstOrDefault();
            if (Ph != null)
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
            else
            {
                var myID = db.DmBanCF.Where(x => x.Ban_ID == id).FirstOrDefault();
                db.DmBanCF.Remove(myID);
                db.SaveChanges();
                return Json(true, JsonRequestBehavior.AllowGet);
            }
        }
        //kiem tra quyen tao phieu

        public ActionResult CheckQuyenCreate()
        {
            string UserId = Convert.ToString(System.Web.HttpContext.Current.Session[CommonConstants.USER_SESSION]);
            var validateName = db.AccessRightCF.Count(x => x.QuyenID == "FrmDmBan" && x.TaiKhoan == UserId && x.Tao == true);
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
            string UserId = Convert.ToString(System.Web.HttpContext.Current.Session[CommonConstants.USER_SESSION]);
            var validateName = db.AccessRightCF.Count(x => x.QuyenID == "FrmDmBan" && x.TaiKhoan == UserId && x.Sua == true);
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
            string UserId = Convert.ToString(System.Web.HttpContext.Current.Session[CommonConstants.USER_SESSION]);
            var validateName = db.AccessRightCF.Count(x => x.QuyenID == "FrmDmBan" && x.TaiKhoan == UserId && x.Xoa == true);
            if (validateName == 1)
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
        }
        public JsonResult UpdateStatus(long id)
        {
            var row = db.DmBanCF.Find(id);
            if(row.Status == 0)
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