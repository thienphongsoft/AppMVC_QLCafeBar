using MyDatabase;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebAppMVC.ClassCommon;
using WebAppMVC.Models;

namespace WebAppMVC.Controllers
{
    public class BaoCaoDoanhThuController : Controller
    {
        private MyDB db = new MyDB();
        // GET: BaoCaoDoanhThu
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
        public ActionResult GetListUsers()
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = db.UserCF.Where(x => x.TenCongTy_ID == congty_id && x.UserID != "SysAdmin").ToList();
            //return Json(new { data = list }, JsonRequestBehavior.AllowGet);
            return Json(list, JsonRequestBehavior.AllowGet);
        }
        public JsonResult BaoCaoXuatHangNguoiDungTatCa(DateTime ngayStart, DateTime ngayEnd)
        {
            var ngayStart1 = new SqlParameter("@NgayStar", ngayStart);
            var ngayEnd1 = new SqlParameter("@NgayEnd", ngayEnd);
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var congty_id1 = new SqlParameter("@CongTy_ID", congty_id);
            var listXH = db.Database.SqlQuery<ChiTietPhieuXuatModels>("TongHopXuatCF @NgayStar,@NgayEnd,@CongTy_ID", ngayStart1, ngayEnd1, congty_id1).ToList();

            return Json(new { data = listXH }, JsonRequestBehavior.AllowGet);
        }
        public JsonResult TongTienXuatHangNguoiDungTatCa(DateTime ngayStart, DateTime ngayEnd)
        {
            var ngayStart1 = new SqlParameter("@NgayStart", ngayStart);
            var ngayEnd1 = new SqlParameter("@NgayEnd", ngayEnd);
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var congty_id1 = new SqlParameter("@CongTy_ID", congty_id);

            var listTotalXH = db.Database.SqlQuery<TongHopTienXuatModels>("TongHopTienXuatCF @NgayStart,@NgayEnd,@CongTy_ID", ngayStart1, ngayEnd1,congty_id1).ToList();
            return Json(listTotalXH, JsonRequestBehavior.AllowGet);
            //return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        public ActionResult BaoCaoXuatHangNguoiDung(DateTime NgayStart, DateTime NgayEnd, string UserID)
        {
            var ngayStart1 = new SqlParameter("@NgayStart", NgayStart);
            var ngayEnd1 = new SqlParameter("@NgayEnd", NgayEnd);
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var congty_id1 = new SqlParameter("@CongTy_ID", congty_id);
            var userId1 = new SqlParameter("@UserID", UserID);

            var listXHByString = db.Database.SqlQuery<ChiTietPhieuXuatModels>("TongHopXuatTheoNhanVienCF @NgayStart, @NgayEnd, @CongTy_ID, @UserID", ngayStart1, ngayEnd1, congty_id1, userId1).ToList();
            return Json(new { data = listXHByString }, JsonRequestBehavior.AllowGet);

        }
        public JsonResult TongTienXuatHangNguoiDung(DateTime ngayStart, DateTime ngayEnd, string UserID)
        {
            var ngayStart1 = new SqlParameter("@NgayStar", ngayStart);
            var ngayEnd1 = new SqlParameter("@NgayEnd", ngayEnd);
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var congty_id1 = new SqlParameter("@CongTy_ID", congty_id);
            var userId1 = new SqlParameter("@UserID", UserID);

            var listTotalXH = db.Database.SqlQuery<TongHopTienXuatModels>("TongHopTienXuatTheoNhanVienCF @NgayStar, @NgayEnd, @CongTy_ID, @UserID", ngayStart1, ngayEnd1, congty_id1, userId1).ToList();
            return Json(listTotalXH, JsonRequestBehavior.AllowGet);
            //return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        public JsonResult BaoCaoDoanhThu(DateTime ngayStart, DateTime ngayEnd)
        {
            var ngayStart1 = new SqlParameter("@NgayStar", ngayStart);
            var ngayEnd1 = new SqlParameter("@NgayEnd", ngayEnd);
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var congty_id1 = new SqlParameter("@CongTy_ID", congty_id);

            var listDT = db.Database.SqlQuery<BaoCaoDoanhThu>("BaoCaoDoanhThuCF @NgayStar, @NgayEnd, @CongTy_ID", ngayStart1, ngayEnd1, congty_id1).ToList();

            return Json(new { data = listDT }, JsonRequestBehavior.AllowGet);
        }
        public JsonResult TongTienDoanhThu(DateTime ngayStart, DateTime ngayEnd)
        {
            var ngayStart1 = new SqlParameter("@NgayStar", ngayStart);
            var ngayEnd1 = new SqlParameter("@NgayEnd", ngayEnd);
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var congty_id1 = new SqlParameter("@CongTy_ID", congty_id);
            
            var listTotalXH = db.Database.SqlQuery<TongHopTienXuatModels>("TongTienDoanhThuCF @NgayStar, @NgayEnd, @CongTy_ID", ngayStart1, ngayEnd1, congty_id1).ToList();
            return Json(listTotalXH, JsonRequestBehavior.AllowGet);
            //return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        public JsonResult BaoCaoDoanhThuTheoNgay(DateTime ngayStart, DateTime ngayEnd)
        {
            var ngayStart1 = new SqlParameter("@NgayStart", ngayStart);
            var ngayEnd1 = new SqlParameter("@NgayEnd", ngayEnd);
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var congty_id1 = new SqlParameter("@CongTy_ID", congty_id);
            
            var listDT = db.Database.SqlQuery<BaoCaoDoanhThu>("BaoCaoDoanhThuTheoNgayCF @NgayStart, @NgayEnd, @CongTy_ID", ngayStart1, ngayEnd1, congty_id1).ToList();

            return Json(new { data = listDT }, JsonRequestBehavior.AllowGet);
        }
        public ActionResult ReportDoanhThu(DateTime NgayStart, DateTime NgayEnd)
        {
            Session["stt"] = "1";
            Session["ngaystart"] = NgayStart;
            Session["ngayend"] = NgayEnd;
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
                                                                                                       
            var TienPhucVu = db.Ph_XuatCF.Where(x => x.NgayPhieu >= NgayStart && x.NgayPhieu <= NgayEnd && x.TenCongTy_ID == congty_id).Sum(i => i.TienPPhucVu);
            var TienPhatSinh = db.Ph_XuatCF.Where(x => x.NgayPhieu >= NgayStart && x.NgayPhieu <= NgayEnd && x.TenCongTy_ID == congty_id).Sum(i => i.TienPhatSinh);
            var TienThue = db.Ph_XuatCF.Where(x => x.NgayPhieu >= NgayStart && x.NgayPhieu <= NgayEnd && x.TenCongTy_ID == congty_id).Sum(i => i.TienThue);
            var TienGiamGia = db.Ph_XuatCF.Where(x => x.NgayPhieu >= NgayStart && x.NgayPhieu <= NgayEnd && x.TenCongTy_ID == congty_id).Sum(i => i.TienGiamGia);
            if(TienPhucVu == null)
            {
                TienPhucVu = 0;
            }
            if (TienPhatSinh == null)
            {
                TienPhatSinh = 0;
            }
            if (TienThue == null)
            {
                TienThue = 0;
            }
            Session["tienphucvu"] = TienPhucVu;
            Session["tienphatsinh"] = TienPhatSinh;
            Session["tienthue"] = TienThue;
            Session["tiengiamgia"] = TienGiamGia;
            return Json(true, JsonRequestBehavior.AllowGet);

        

        }
        public ActionResult ReportDoanhThuNgay(DateTime NgayStart, DateTime NgayEnd)
        {
            Session["stt"] = "2";
            Session["ngaystart"] = NgayStart;
            Session["ngayend"] = NgayEnd;
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);

            var TienPhucVu = db.Ph_XuatCF.Where(x => x.NgayPhieu >= NgayStart && x.NgayPhieu <= NgayEnd && x.TenCongTy_ID == congty_id).Sum(i => i.TienPPhucVu);
            var TienPhatSinh = db.Ph_XuatCF.Where(x => x.NgayPhieu >= NgayStart && x.NgayPhieu <= NgayEnd && x.TenCongTy_ID == congty_id).Sum(i => i.TienPhatSinh);
            var TienThue = db.Ph_XuatCF.Where(x => x.NgayPhieu >= NgayStart && x.NgayPhieu <= NgayEnd && x.TenCongTy_ID == congty_id).Sum(i => i.TienThue);
            var TienGiamGia = db.Ph_XuatCF.Where(x => x.NgayPhieu >= NgayStart && x.NgayPhieu <= NgayEnd && x.TenCongTy_ID == congty_id).Sum(i => i.TienGiamGia);
            if (TienPhucVu == null)
            {
                TienPhucVu = 0;
            }
            if (TienPhatSinh == null)
            {
                TienPhatSinh = 0;
            }
            if (TienThue == null)
            {
                TienThue = 0;
            }
            Session["tienphucvu"] = TienPhucVu;
            Session["tienphatsinh"] = TienPhatSinh;
            Session["tienthue"] = TienThue;
            Session["tiengiamgia"] = TienGiamGia;
            return Json(true, JsonRequestBehavior.AllowGet);



        }
        public ActionResult ReportDoanhThuTaiKhoanAll(DateTime NgayStart, DateTime NgayEnd)
        {
            Session["stt"] = "3";
            Session["ngaystart"] = NgayStart;
            Session["ngayend"] = NgayEnd;
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);

            var TienPhucVu = db.Ph_XuatCF.Where(x => x.NgayPhieu >= NgayStart && x.NgayPhieu <= NgayEnd && x.TenCongTy_ID == congty_id).Sum(i => i.TienPPhucVu);
            var TienPhatSinh = db.Ph_XuatCF.Where(x => x.NgayPhieu >= NgayStart && x.NgayPhieu <= NgayEnd && x.TenCongTy_ID == congty_id).Sum(i => i.TienPhatSinh);
            var TienThue = db.Ph_XuatCF.Where(x => x.NgayPhieu >= NgayStart && x.NgayPhieu <= NgayEnd && x.TenCongTy_ID == congty_id).Sum(i => i.TienThue);
            var TienGiamGia = db.Ph_XuatCF.Where(x => x.NgayPhieu >= NgayStart && x.NgayPhieu <= NgayEnd && x.TenCongTy_ID == congty_id).Sum(i => i.TienGiamGia);
            if (TienPhucVu == null)
            {
                TienPhucVu = 0;
            }
            if (TienPhatSinh == null)
            {
                TienPhatSinh = 0;
            }
            if (TienThue == null)
            {
                TienThue = 0;
            }
            if (TienGiamGia == null)
            {
                TienGiamGia = 0;
            }
            Session["tienphucvu"] = TienPhucVu;
            Session["tienphatsinh"] = TienPhatSinh;
            Session["tienthue"] = TienThue;
            Session["tiengiamgia"] = TienGiamGia;
            return Json(true, JsonRequestBehavior.AllowGet);
        }
        public ActionResult ReportDoanhThuTheoTaiKhoan(DateTime NgayStart, DateTime NgayEnd, string UserID)
        {
            Session["stt"] = "4";
            Session["ngaystart"] = NgayStart;
            Session["ngayend"] = NgayEnd;
            Session["userid"] = UserID;
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);

            var TienPhucVu = db.Ph_XuatCF.Where(x => x.NgayPhieu >= NgayStart && x.NgayPhieu <= NgayEnd && x.NguoiDung_ID == UserID && x.TenCongTy_ID == congty_id).Sum(i => i.TienPPhucVu);
            var TienPhatSinh = db.Ph_XuatCF.Where(x => x.NgayPhieu >= NgayStart && x.NgayPhieu <= NgayEnd && x.NguoiDung_ID == UserID && x.TenCongTy_ID == congty_id).Sum(i => i.TienPhatSinh);
            var TienThue = db.Ph_XuatCF.Where(x => x.NgayPhieu >= NgayStart && x.NgayPhieu <= NgayEnd && x.NguoiDung_ID == UserID && x.TenCongTy_ID == congty_id).Sum(i => i.TienThue);
            var TienGiamGia = db.Ph_XuatCF.Where(x => x.NgayPhieu >= NgayStart && x.NgayPhieu <= NgayEnd && x.NguoiDung_ID == UserID && x.TenCongTy_ID == congty_id).Sum(i => i.TienGiamGia);
            if (TienPhucVu == null)
            {
                TienPhucVu = 0;
            }
            if (TienPhatSinh == null)
            {
                TienPhatSinh = 0;
            }
            if (TienThue == null)
            {
                TienThue = 0;
            }
            if (TienGiamGia == null)
            {
                TienGiamGia = 0;
            }
            Session["tienphucvu"] = TienPhucVu;
            Session["tienphatsinh"] = TienPhatSinh;
            Session["tienthue"] = TienThue;
            Session["tiengiamgia"] = TienGiamGia;
            return Json(true, JsonRequestBehavior.AllowGet);



        }
    }
}