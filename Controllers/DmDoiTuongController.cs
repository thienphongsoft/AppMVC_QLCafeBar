using MyDatabase;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebAppMVC.ClassCommon;
using WebAppMVC.Models;

namespace WebAppMVC.Controllers
{
    public class DmDoiTuongController : Controller
    {
        private MyDB db = new MyDB();
        // GET: DmDoiTuong
        [CustomAuthorizeAttribute(RoleID = "FrmDmDoiTuong", QuyenXem = true)]
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Create()
        {
            return View();
        }
        public ActionResult Edit()
        {
            return View();
        }
        public ActionResult _PartialObject()
        {
            return PartialView();
        }
        public ActionResult GetListNhomDT()
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var nhomObject = db.DmLoaiDTCF.Where(x => x.TenCongTy_ID == congty_id && x.Status == 0).ToList();
            return Json(nhomObject, JsonRequestBehavior.AllowGet);
        }
        public ActionResult GetListObject()
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = from p in db.DmDoiTuongCF
                       join c in db.DmLoaiDTCF
                       on p.LoaiDT_ID equals c.LoaiDT_ID
                       where p.TenCongTy_ID == congty_id 
                       orderby p.TenDT descending
                       select new ObjectsModels()
                       {
                           DT_ID = p.DT_ID,
                           MaDT = p.MaDT,
                           TenDT = p.TenDT,
                           TenLoaiDT = c.TenLoaiDT,
                           DiaChi = p.DiaChi == null ? "" : p.DiaChi,
                           Phone = p.Phone == null ? "" : p.Phone,
                           MaST = p.MaST == null ? "" : p.MaST,
                           SoTK = p.SoTK == null ? "" : p.SoTK,
                           Email = p.Email == null ? "" : p.Email,
                           TenCongTy_ID = p.TenCongTy_ID,
                           Status = p.Status,
                       };

            //return Json(list, JsonRequestBehavior.AllowGet);
            return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        public ActionResult GetListObjectByNhomID(long id)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = from p in db.DmDoiTuongCF
                       join c in db.DmLoaiDTCF
                       on p.LoaiDT_ID equals c.LoaiDT_ID
                       where p.LoaiDT_ID == id && p.TenCongTy_ID == congty_id && p.Status == 0
                       orderby p.TenDT descending
                       select new ObjectsModels()
                       {
                           DT_ID = p.DT_ID,
                           MaDT = p.MaDT,
                           TenDT = p.TenDT,
                           TenLoaiDT = c.TenLoaiDT,
                           DiaChi = p.DiaChi == null ? "" : p.DiaChi,
                           Phone = p.Phone == null ? "" : p.Phone,
                           MaST = p.MaST == null ? "" : p.MaST,
                           SoTK = p.SoTK == null ? "" : p.SoTK,
                           Email = p.Email == null ? "" : p.Email,
                           TenCongTy_ID = p.TenCongTy_ID,
                           Status = p.Status,
                       };

            //return Json(list, JsonRequestBehavior.AllowGet);
            return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult GetListObjectByCodeName(string CodeName)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = from p in db.DmDoiTuongCF
                       join c in db.DmLoaiDTCF
                       on p.LoaiDT_ID equals c.LoaiDT_ID
                       where p.MaDT.Contains(CodeName) && p.TenCongTy_ID == congty_id && p.Status == 0
                       || p.TenDT.Contains(CodeName) && p.TenCongTy_ID == congty_id && p.Status == 0
                       orderby p.TenDT descending
                       select new ObjectsModels()
                       {
                           DT_ID = p.DT_ID,
                           MaDT = p.MaDT,
                           TenDT = p.TenDT,
                           TenLoaiDT = c.TenLoaiDT,
                           DiaChi = p.DiaChi == null ? "" : p.DiaChi,
                           Phone = p.Phone == null ? "" : p.Phone,
                           MaST = p.MaST == null ? "" : p.MaST,
                           SoTK = p.SoTK == null ? "" : p.SoTK,
                           Email = p.Email == null ? "" : p.Email,
                           TenCongTy_ID = p.TenCongTy_ID,
                           Status = p.Status,
                       };

            //return Json(list, JsonRequestBehavior.AllowGet);
            return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        public ActionResult _PartialGroupObject()
        {
            return PartialView();
        }
        public ActionResult LoadListGroupObjectTable()
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = db.DmLoaiDTCF.Where(x => x.TenCongTy_ID == congty_id).ToList();

            //return Json(list, JsonRequestBehavior.AllowGet);
            return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        public JsonResult CheckGroupObject(string name)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var validateName = db.DmLoaiDTCF.FirstOrDefault(x => x.TenLoaiDT == name && x.TenCongTy_ID == congty_id);
            if (validateName != null)
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
        }
        public JsonResult CreateGroupObject(DmLoaiDTCF dmLoaiDTCF)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var valiName = db.DmLoaiDTCF.FirstOrDefault(x => x.TenLoaiDT == dmLoaiDTCF.TenLoaiDT && x.TenCongTy_ID == congty_id);
            if (valiName != null)//trung ten 
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
            else
            {
                db.DmLoaiDTCF.Add(dmLoaiDTCF);
                db.SaveChanges();
                return Json(true, JsonRequestBehavior.AllowGet);
            }

        }
        public ActionResult EditGroupObjectById(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DmLoaiDTCF dmLoaiDTCF = db.DmLoaiDTCF.Find(id);
            if (dmLoaiDTCF == null)
            {
                return HttpNotFound();
            }
            return Json(dmLoaiDTCF, JsonRequestBehavior.AllowGet);

        }
        public JsonResult UpdateEditGroupObject(DmLoaiDTCF dmLoaiDTCF)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var valiIdName = db.DmLoaiDTCF.FirstOrDefault(x => x.LoaiDT_ID == dmLoaiDTCF.LoaiDT_ID && x.TenLoaiDT == dmLoaiDTCF.TenLoaiDT && dmLoaiDTCF.TenCongTy_ID == congty_id);
            if (valiIdName != null)//truong hop khong sua ten
            {
                //dùng row để update lại giá trị theo ý mình
                var row = db.DmLoaiDTCF.Find(dmLoaiDTCF.LoaiDT_ID);
                row.TenLoaiDT = dmLoaiDTCF.TenLoaiDT;
                db.Entry(row).State = EntityState.Modified;
                db.SaveChanges();
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                var valiName = db.DmLoaiDTCF.FirstOrDefault(x => x.TenLoaiDT == dmLoaiDTCF.TenLoaiDT && dmLoaiDTCF.TenCongTy_ID == congty_id);
                if (valiName != null) //có ten trung 
                {
                    return Json(false, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    //dùng row để update lại giá trị theo ý mình
                    var row = db.DmLoaiDTCF.Find(dmLoaiDTCF.LoaiDT_ID);
                    row.TenLoaiDT = dmLoaiDTCF.TenLoaiDT;
                    db.Entry(row).State = EntityState.Modified;
                    db.SaveChanges();
                    return Json(true, JsonRequestBehavior.AllowGet);

                }
            }
        }
        [HttpPost]
        public JsonResult DeleteGroupObject(long id)
        {
            //kiem tra co trong DmDoiTuongCF
            var loaiDT_ID = db.DmDoiTuongCF.FirstOrDefault(x => x.LoaiDT_ID == id);
            if (loaiDT_ID != null)//truong hop co trong DmDoiTuongCF
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
            else
            {
                var myID = db.DmLoaiDTCF.Where(x => x.LoaiDT_ID == id).FirstOrDefault();
                db.DmLoaiDTCF.Remove(myID);
                db.SaveChanges();
                return Json(true, JsonRequestBehavior.AllowGet);
            }

        }
        [HttpPost]
        public ActionResult CreateObject(DmDoiTuongCF dmDoiTuongCF)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session["congty_id"]);
            var valiName = db.DmDoiTuongCF.FirstOrDefault(x => x.MaDT == dmDoiTuongCF.MaDT && x.TenCongTy_ID == congty_id);
            if (valiName != null)//trung ten 
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
            else
            {
                db.DmDoiTuongCF.Add(dmDoiTuongCF);
                db.SaveChanges();
                //return RedirectToAction("Index");
                return Json(true, JsonRequestBehavior.AllowGet);
            }
        }
        [HttpPost]
        public JsonResult DeleteObject(long id)
        {
            //kiem tra co trong DmDoiTuongCF
            var phnhap = db.Ph_NhapCF.FirstOrDefault(x => x.DT_ID == id);
            var phXuat = db.Ph_XuatCF.FirstOrDefault(x => x.DT_ID == id);
            var phthu = db.Ph_ThuCF.FirstOrDefault(x => x.DT_ID == id);
            var phchi = db.Ph_ChiCF.FirstOrDefault(x => x.DT_ID == id);
            var phNoThu = db.Ph_CongNoKHCF.FirstOrDefault(x => x.DT_ID == id);
            var phNoTra = db.Ph_CongNoNCCCF.FirstOrDefault(x => x.DT_ID == id);
            if (phnhap != null || phXuat != null || phthu != null || phchi != null || phNoThu != null || phNoTra != null)
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
            else
            {
                var myID = db.DmDoiTuongCF.Where(x => x.DT_ID == id).FirstOrDefault();
                db.DmDoiTuongCF.Remove(myID);
                db.SaveChanges();
                return Json(true, JsonRequestBehavior.AllowGet);
            }
        }
        public JsonResult CheckInputMaDT(string MaDT)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var validateName = db.DmDoiTuongCF.FirstOrDefault(x => x.MaDT.Trim() == MaDT && x.TenCongTy_ID == congty_id);
            if (validateName != null)
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
        }
        public ActionResult EditObjectById(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DmDoiTuongCF dmDoiTuongCF = db.DmDoiTuongCF.Find(id);
            if (dmDoiTuongCF == null)
            {
                return HttpNotFound();
            }
            return Json(dmDoiTuongCF, JsonRequestBehavior.AllowGet);
            //return View(DmDoiTuongCF);
            //return RedirectToAction("Details");
        }
        public JsonResult UpdateObject(DmDoiTuongCF dmDoiTuongCF)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var id_id = db.DmDoiTuongCF.Where(x => x.DT_ID == dmDoiTuongCF.DT_ID && x.MaDT == dmDoiTuongCF.MaDT && dmDoiTuongCF.TenCongTy_ID == congty_id).FirstOrDefault();
            if (id_id != null)
            {
                var row = db.DmDoiTuongCF.Find(dmDoiTuongCF.DT_ID);
                row.MaDT = dmDoiTuongCF.MaDT;
                row.TenDT = dmDoiTuongCF.TenDT;
                row.DiaChi = dmDoiTuongCF.DiaChi;
                row.Phone = dmDoiTuongCF.Phone;
                row.SoTK = dmDoiTuongCF.SoTK;
                row.Email = dmDoiTuongCF.Email;
                row.MaST = dmDoiTuongCF.MaST;
                row.NgGiaoDich = dmDoiTuongCF.NgGiaoDich;
                db.Entry(row).State = EntityState.Modified;
                db.SaveChanges();
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                var valiName = db.DmDoiTuongCF.FirstOrDefault(x => x.MaDT.Trim() == dmDoiTuongCF.MaDT.Trim() && dmDoiTuongCF.TenCongTy_ID == congty_id);
                if (valiName != null) //có ten trung 
                {
                    return Json(false, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    var row = db.DmDoiTuongCF.Find(dmDoiTuongCF.DT_ID);
                    row.MaDT = dmDoiTuongCF.MaDT;
                    row.TenDT = dmDoiTuongCF.TenDT;
                    row.DiaChi = dmDoiTuongCF.DiaChi;
                    row.Phone = dmDoiTuongCF.Phone;
                    row.SoTK = dmDoiTuongCF.SoTK;
                    row.Email = dmDoiTuongCF.Email;
                    row.MaST = dmDoiTuongCF.MaST;
                    row.NgGiaoDich = dmDoiTuongCF.NgGiaoDich;
                    db.Entry(row).State = EntityState.Modified;
                    db.SaveChanges();
                    return Json(true, JsonRequestBehavior.AllowGet);
                }

            }
        }
        public JsonResult GetObjectAutoComplete(string Prefix)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = (from item in db.DmDoiTuongCF
                        where item.TenDT.Contains(Prefix) && item.TenCongTy_ID == congty_id && item.Status == 0
                        || item.MaDT.Contains(Prefix) && item.TenCongTy_ID == congty_id && item.Status == 0
                        select new
                        {
                            dt_id = item.DT_ID,
                            madt = item.MaDT.Trim(),
                            tendt = item.TenDT,
                            diachi = item.DiaChi

                        }).Take(15).ToList();

            return Json(list, JsonRequestBehavior.AllowGet);

        }
        public JsonResult GetObjectByBarcode(string Barcode)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = db.DmDoiTuongCF.Where(x => x.MaDT == Barcode && x.TenCongTy_ID == congty_id && x.Status == 0).FirstOrDefault();
            return Json(list, JsonRequestBehavior.AllowGet);
        }
        //muc dich de setfocus tren dien thoai
        public JsonResult SetFocusMobile(long id)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = db.DmDoiTuongCF.Where(x => x.TenCongTy_ID == congty_id && x.DT_ID == id).FirstOrDefault();
            return Json(list, JsonRequestBehavior.AllowGet);
        }
        //kiem tra quyen tao phieu

        public ActionResult CheckQuyenCreate()
        {
            string UserId = Convert.ToString(System.Web.HttpContext.Current.Session[CommonConstants.USER_SESSION]);
            var validateName = db.AccessRightCF.Count(x => x.QuyenID == "FrmDmDoiTuong" && x.TaiKhoan == UserId && x.Tao == true);
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
            var validateName = db.AccessRightCF.Count(x => x.QuyenID == "FrmDmDoiTuong" && x.TaiKhoan == UserId && x.Sua == true);
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
            var validateName = db.AccessRightCF.Count(x => x.QuyenID == "FrmDmDoiTuong" && x.TaiKhoan == UserId && x.Xoa == true);
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
            var row = db.DmDoiTuongCF.Find(id);
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