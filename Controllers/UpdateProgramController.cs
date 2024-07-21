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
    public class UpdateProgramController : Controller
    {
        private MyDB db = new MyDB();
        // GET: UpdateProgram
        [GiaoAuthorizeAttribute(RoleID = "thienphong")]
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult GetDmCongTy()
        {
            //var list = db.DmCongTyCF.Where(x => x.Status == 0);
            //return Json(new { data = list }, JsonRequestBehavior.AllowGet);
            ////return Json(item, JsonRequestBehavior.AllowGet);
            var list = (from p in db.DmCongTyCF
                        orderby p.TenCongTy ascending
                        select new
                        {
                            CongTy_ID = p.CongTy_ID,
                            TenCongTy = p.TenCongTy,
                            DiaChi = p.DiaChi,
                            DienThoai = p.DienThoai,
                            GhiChuPhieu = p.GhiChuPhieu,
                            MS01 = p.MS01,
                            MS02 = p.MS02,
                            Status = p.Status

                        }).ToList();

            //return Json(list, JsonRequestBehavior.AllowGet);
            return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        public ActionResult CreateCongTy(DmCongTyCF dmCongTyCF)
        {
            var ms01 = ThienPhong.Encrypt(Convert.ToString(dmCongTyCF.MS01), "hientai@2018@cungtroi");
            var ms02 = ThienPhong.Encrypt(Convert.ToString(dmCongTyCF.MS02), "thien@04120110@cungtroi");
            var items = new DmCongTyCF()
            {
                TenCongTy = dmCongTyCF.TenCongTy,
                DiaChi = dmCongTyCF.DiaChi,
                DienThoai = dmCongTyCF.DienThoai,
                GhiChuPhieu = dmCongTyCF.GhiChuPhieu,
                MS01 = ms01,
                MS02 = ms02,
                Status = dmCongTyCF.Status,
            };

            db.DmCongTyCF.Add(items);
            db.SaveChanges();

            return Json(items, JsonRequestBehavior.AllowGet);
        }
        public JsonResult DeleteCongTy(long id)
        {
            //Delete Dm cong ty
            var myID = db.DmCongTyCF.Where(x => x.CongTy_ID == id).FirstOrDefault();
            db.DmCongTyCF.Remove(myID);
            db.SaveChanges();
                      
            //lay TK_ID trong user
            var tk_id = db.UserCF.Where(x => x.TenCongTy_ID == id).FirstOrDefault();
            //Delete quyen AccessRightTC trong 
            db.AccessRightCF.RemoveRange(db.AccessRightCF.Where(x => x.TK_ID == tk_id.TK_ID));
            db.SaveChanges();

            //Delete UserCF
            db.UserCF.RemoveRange(db.UserCF.Where(x => x.TenCongTy_ID == id));
            db.SaveChanges();

           
            //Delete DmDoiTuongTC
            var valiDmDoiTuong = db.DmDoiTuongCF.FirstOrDefault(x => x.TenCongTy_ID == id);
            if (valiDmDoiTuong != null)
            {
                db.DmDoiTuongCF.RemoveRange(db.DmDoiTuongCF.Where(x => x.TenCongTy_ID == id));
                db.SaveChanges();
            }

            ////Delete Ph_ThuTC
            //var valiPh_ThuTC = db.Ph_ThuTC.FirstOrDefault(x => x.TenCongTy_ID == id);
            //if (valiPh_ThuTC != null)
            //{
            //    db.Ph_ThuTC.RemoveRange(db.Ph_ThuTC.Where(x => x.TenCongTy_ID == id));
            //    db.SaveChanges();
            //}

            ////Delete Ph_CongNoKH
            //var valiCongNo = db.Ph_CongNoKHTC.FirstOrDefault(x => x.TenCongTy_ID == id);
            //if (valiCongNo != null)
            //{
            //    db.Ph_CongNoKHTC.RemoveRange(db.Ph_CongNoKHTC.Where(x => x.TenCongTy_ID == id));
            //    db.SaveChanges();
            //}

            

            ////Delete DmLoaiDTTC
            //var valiLoaiDT = db.DmLoaiDTTC.FirstOrDefault(x => x.TenCongTy_ID == id);
            //if (valiLoaiDT != null)
            //{
            //    db.DmLoaiDTTC.RemoveRange(db.DmLoaiDTTC.Where(x => x.TenCongTy_ID == id));
            //    db.SaveChanges();
            //}
            ////Delete DmLoaiThuChi
            //var valiLoaiThuChi = db.DmThuChiTC.FirstOrDefault(x => x.TenCongTy_ID == id);
            //if (valiLoaiThuChi != null)
            //{
            //    db.DmThuChiTC.RemoveRange(db.DmThuChiTC.Where(x => x.TenCongTy_ID == id));
            //    db.SaveChanges();
            //}

            //Delete DmNganHang
            var valiNganHang = db.DmNganHangCF.FirstOrDefault(x => x.TenCongTy_ID == id);
            if (valiNganHang != null)
            {
                db.DmNganHangCF.RemoveRange(db.DmNganHangCF.Where(x => x.TenCongTy_ID == id));
                db.SaveChanges();
            }

            return Json(true, JsonRequestBehavior.AllowGet);
        }
        public ActionResult GetDmCongTyByID(long id)
        {
            var item = db.DmCongTyCF.Where(x => x.CongTy_ID == id).FirstOrDefault();
            var ID = item.CongTy_ID;
            var TenCongTy = item.TenCongTy;
            var DiaChi = item.DiaChi;
            var DienThoai = item.DienThoai;
            var GhiChuPhieu = item.GhiChuPhieu;
            var MS01 = ThienPhong.Decrypt(item.MS01, "hientai@2018@cungtroi");
            var MS02 = ThienPhong.Decrypt(item.MS02, "thien@04120110@cungtroi");

            //return Json(new { data = list }, JsonRequestBehavior.AllowGet);
            //return Json(item, JsonRequestBehavior.AllowGet);
            return Json(new { ID, TenCongTy, DiaChi, DienThoai, GhiChuPhieu, MS01, MS02 }, JsonRequestBehavior.AllowGet);
        }
        public JsonResult UpdateDmCongTy(DmCongTyCF dmCongTyCF)
        {
            //update 
            var row = db.DmCongTyCF.Find(dmCongTyCF.CongTy_ID);
            row.TenCongTy = dmCongTyCF.TenCongTy;
            row.DiaChi = dmCongTyCF.DiaChi;
            row.DienThoai = dmCongTyCF.DienThoai;
            row.GhiChuPhieu = dmCongTyCF.GhiChuPhieu;
            row.MS01 = ThienPhong.Encrypt(dmCongTyCF.MS01, "hientai@2018@cungtroi");
            row.MS02 = ThienPhong.Encrypt(dmCongTyCF.MS02, "thien@04120110@cungtroi");
            db.Entry(row).State = EntityState.Modified;
            db.SaveChanges();

            return Json(true, JsonRequestBehavior.AllowGet);
        }
        public JsonResult UpdateAnHienDmCongTy(long id)
        {
            var row = db.DmCongTyCF.Where(x => x.CongTy_ID == id).FirstOrDefault();
            if (row.Status == 0)
            {
                row.Status = 1;
                db.Entry(row).State = EntityState.Modified;
                db.SaveChanges();
            }
            else
            {

                row.Status = 0;
                db.Entry(row).State = EntityState.Modified;
                db.SaveChanges();
            }

            return Json(true, JsonRequestBehavior.AllowGet);
        }
        public ActionResult CreateUserChinh(UserCF userTC)
        {
            UserCF userCF1 = new UserCF();

            userCF1.UserID = userTC.UserID;
            userCF1.UserName = userTC.UserName;
            userCF1.PassWord = ThienPhong.Encrypt(userTC.PassWord, "412110");
            userCF1.TenCongTy_ID = userTC.TenCongTy_ID;
            userCF1.ThamSo = userTC.ThamSo;
            db.UserCF.Add(userCF1);
            db.SaveChanges();
            return Json(userCF1, JsonRequestBehavior.AllowGet);
        }
        public ActionResult GetDmNguoiDung()
        {
            var list = (from p in db.UserCF
                        join c in db.DmCongTyCF on p.TenCongTy_ID equals c.CongTy_ID
                        orderby p.UserName ascending
                        select new
                        {
                            TK_ID = p.TK_ID,
                            UserID = p.UserID,
                            UserName = p.UserName,
                            PassWord = p.PassWord,
                            TenCongTy = c.TenCongTy,
                            ThamSo = p.ThamSo,
                        }).ToList();

            //return Json(list, JsonRequestBehavior.AllowGet);
            return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
    }
}