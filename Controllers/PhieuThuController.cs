using MyDatabase;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebAppMVC.ClassCommon;
using WebAppMVC.Models;

namespace WebAppMVC.Controllers
{
    public class PhieuThuController : Controller
    {
        private MyDB db = new MyDB();
        // GET: PhieuThu
        [CustomAuthorizeAttribute(RoleID = "FrmPhieuThu", QuyenXem = true)]
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
        public ActionResult Create()
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
        public ActionResult Edit()
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
        public ActionResult _PartialListPageSize()
        {
            return PartialView();
        }
        public ActionResult _PartialPageSize()
        {
            return PartialView();
        }
        public ActionResult GetPageSizeHien()
        {
            //var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = db.DmKhoGiayInCF.Where(x => x.AnHien == true).ToList();
            return Json(list, JsonRequestBehavior.AllowGet);
        }
        public ActionResult GetListPageSize()
        {
            //var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = db.DmKhoGiayInCF.ToList();
            return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        public JsonResult ShowHideKhoGiay(long id)
        {
            var row = db.DmKhoGiayInCF.Find(id);
            if (row.AnHien == true)
            {
                row.AnHien = false;
                db.Entry(row).State = EntityState.Modified;
                db.SaveChanges();
            }
            else
            {
                row.AnHien = true;
                db.Entry(row).State = EntityState.Modified;
                db.SaveChanges();
            }

            return Json(true, JsonRequestBehavior.AllowGet);
        }
        public ActionResult ListLoaiThuChi()
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var listc = db.DmThuChiCF.Where(x => x.ThuHayChi == 1 && x.TenCongTy_ID == congty_id).ToList();
            return Json(listc, JsonRequestBehavior.AllowGet);
        }
        public ActionResult GetListDmNganHang()
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var listn = db.DmNganHangCF.Where(x => x.NganHang_ID > 0 && x.TenCongTy_ID == congty_id).ToList();
            return Json(listn, JsonRequestBehavior.AllowGet);
        }
        public ActionResult GetListDmPhieuThuByNow()
        {
            //var userid = Convert.ToString(System.Web.HttpContext.Current.Session[CommonConstants.USER_SESSION]);
              var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);

              var list = (from p in db.Ph_ThuCF
                        join c in db.DmDoiTuongCF
                        on p.DT_ID equals c.DT_ID
                        join t in db.DmThuChiCF
                        on p.LoaiThuChi_ID equals t.LoaiThuChi_ID
                        join n in db.DmNganHangCF
                        on p.NganHang_ID equals n.NganHang_ID
                        where p.NgayPhieu == DateTime.Today && p.TenCongTy_ID == congty_id
                        orderby p.ThuChi_ID descending
                        select new PhieuThuChiModels()
                        {
                            ThuChi_ID = p.ThuChi_ID,
                            SoPhieu = p.SoPhieu + "000000".Substring(0, 6 - p.SoPhieu_ID.ToString().Length) + p.SoPhieu_ID.ToString(),
                            NgayPhieu = p.NgayPhieu,
                            TenLoaiThuChi = t.TenLoaiThuChi,
                            MaDT = c.MaDT,
                            TenDT = c.TenDT,
                            DiaChi = p.DiaChi,
                            SoTien = p.SoTien,
                            LyDo = p.LyDo,
                            NguoiNhanNop = p.NguoiNhanNop,
                            HinhThucThanhToan = p.HinhThucThanhToan,
                            TenNganHang = n.TenNganHang,
                        }).ToList();

                //return Json(list, JsonRequestBehavior.AllowGet);
                return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        public ActionResult GetListDmPhieuThuByDate(DateTime ngayStart, DateTime ngayEnd)
        {
            //var userid = Convert.ToString(System.Web.HttpContext.Current.Session[CommonConstants.USER_SESSION]);
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);

          
                var list = (from p in db.Ph_ThuCF
                            join c in db.DmDoiTuongCF
                            on p.DT_ID equals c.DT_ID
                            join t in db.DmThuChiCF
                            on p.LoaiThuChi_ID equals t.LoaiThuChi_ID
                            join n in db.DmNganHangCF
                            on p.NganHang_ID equals n.NganHang_ID
                            where p.NgayPhieu >= ngayStart && p.NgayPhieu <= ngayEnd && p.TenCongTy_ID == congty_id
                            orderby p.ThuChi_ID descending
                            select new PhieuThuChiModels()
                            {
                                ThuChi_ID = p.ThuChi_ID,
                                SoPhieu = p.SoPhieu + "000000".Substring(0, 6 - p.SoPhieu_ID.ToString().Length) + p.SoPhieu_ID.ToString(),
                                NgayPhieu = p.NgayPhieu,
                                TenLoaiThuChi = t.TenLoaiThuChi,
                                MaDT = c.MaDT,
                                TenDT = c.TenDT,
                                DiaChi = p.DiaChi,
                                SoTien = p.SoTien,
                                LyDo = p.LyDo,
                                NguoiNhanNop = p.NguoiNhanNop,
                                HinhThucThanhToan = p.HinhThucThanhToan,
                                TenNganHang = n.TenNganHang,
                            }).ToList();

                //return Json(list, JsonRequestBehavior.AllowGet);
                return Json(new { data = list }, JsonRequestBehavior.AllowGet);
          

        }
        public ActionResult GetListDmPhieuThuByLoaiThuChiID(long id)
        {
            //var userid = Convert.ToString(System.Web.HttpContext.Current.Session[CommonConstants.USER_SESSION]);
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);

            var list = (from p in db.Ph_ThuCF
                        join c in db.DmDoiTuongCF
                        on p.DT_ID equals c.DT_ID
                        join t in db.DmThuChiCF
                        on p.LoaiThuChi_ID equals t.LoaiThuChi_ID
                        join n in db.DmNganHangCF
                        on p.NganHang_ID equals n.NganHang_ID
                        where p.LoaiThuChi_ID == id && p.TenCongTy_ID == congty_id
                        orderby p.ThuChi_ID descending
                        select new PhieuThuChiModels()
                        {
                            ThuChi_ID = p.ThuChi_ID,
                            SoPhieu = p.SoPhieu + "000000".Substring(0, 6 - p.SoPhieu_ID.ToString().Length) + p.SoPhieu_ID.ToString(),
                            NgayPhieu = p.NgayPhieu,
                            TenLoaiThuChi = t.TenLoaiThuChi,
                            MaDT = c.MaDT,
                            TenDT = c.TenDT,
                            DiaChi = p.DiaChi,
                            SoTien = p.SoTien,
                            LyDo = p.LyDo,
                            NguoiNhanNop = p.NguoiNhanNop,
                            HinhThucThanhToan = p.HinhThucThanhToan,
                            TenNganHang = n.TenNganHang,
                        }).ToList();

            //return Json(list, JsonRequestBehavior.AllowGet);
            return Json(new { data = list }, JsonRequestBehavior.AllowGet);
           

        }

        public ActionResult GetListPhieuThuByDateAndName(DateTime ngayStart, DateTime ngayEnd, string TenDT)
        {
            //var userid = Convert.ToString(System.Web.HttpContext.Current.Session[CommonConstants.USER_SESSION]);
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);

           
                var list = (from p in db.Ph_ThuCF
                            join c in db.DmDoiTuongCF
                            on p.DT_ID equals c.DT_ID
                            join t in db.DmThuChiCF
                            on p.LoaiThuChi_ID equals t.LoaiThuChi_ID
                            join n in db.DmNganHangCF
                            on p.NganHang_ID equals n.NganHang_ID
                            where p.NgayPhieu >= ngayStart && p.NgayPhieu <= ngayEnd && c.TenDT.Contains(TenDT) && p.TenCongTy_ID == congty_id
                            orderby p.ThuChi_ID descending
                            select new PhieuThuChiModels()
                            {
                                ThuChi_ID = p.ThuChi_ID,
                                SoPhieu = p.SoPhieu + "000000".Substring(0, 6 - p.SoPhieu_ID.ToString().Length) + p.SoPhieu_ID.ToString(),
                                NgayPhieu = p.NgayPhieu,
                                TenLoaiThuChi = t.TenLoaiThuChi,
                                MaDT = c.MaDT,
                                TenDT = c.TenDT,
                                DiaChi = p.DiaChi,
                                SoTien = p.SoTien,
                                LyDo = p.LyDo,
                                NguoiNhanNop = p.NguoiNhanNop,
                                HinhThucThanhToan = p.HinhThucThanhToan,
                                TenNganHang = n.TenNganHang,
                            }).ToList();

                //return Json(list, JsonRequestBehavior.AllowGet);
                return Json(new { data = list }, JsonRequestBehavior.AllowGet);
    
        }
        public ActionResult GetPhieuThuByID(long? id)
        {
            var item = (from p in db.Ph_ThuCF
                        join c in db.DmDoiTuongCF
                        on p.DT_ID equals c.DT_ID
                        join t in db.DmThuChiCF
                        on p.LoaiThuChi_ID equals t.LoaiThuChi_ID
                        join n in db.DmNganHangCF
                        on p.NganHang_ID equals n.NganHang_ID
                        where p.ThuChi_ID == id
                        select new PhieuThuChiModels()
                        {
                            ThuChi_ID = p.ThuChi_ID,
                            SoPhieu_ID = p.SoPhieu_ID,
                            SoPhieu = p.SoPhieu + "000000".Substring(0, 6 - p.SoPhieu_ID.ToString().Length) + p.SoPhieu_ID.ToString(),
                            NgayPhieu = p.NgayPhieu,
                            LoaiThuChi_ID = p.LoaiThuChi_ID,
                            TenLoaiThuChi = t.TenLoaiThuChi,
                            DT_ID = p.DT_ID,
                            MaDT = c.MaDT,
                            TenDT = c.TenDT,
                            DiaChi = p.DiaChi,
                            SoTien = p.SoTien,
                            LyDo = p.LyDo,
                            NguoiNhanNop = p.NguoiNhanNop,
                            HinhThucThanhToan = p.HinhThucThanhToan,
                            TenNganHang = n.TenNganHang,
                            NganHang_ID = p.NganHang_ID,
                        }).FirstOrDefault();


            return Json(item, JsonRequestBehavior.AllowGet);
            //return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        public JsonResult Delete(long id)
        {
            ////su ly phan nhat ky nguoi xoa phieu chi
            //var row = db.ThamSoHeThongs.FirstOrDefault();
            //if (row.NhatKyND == true)
            //{
            //    var items = (from p in db.Ph_Thu
            //                 join l in db.DmLoaiThuChi on p.LoaiThuChi_ID equals l.LoaiThuChi_ID
            //                 where p.ThuChi_ID == id
            //                 select new
            //                 {
            //                     sotien = p.SoTien,
            //                     tenloai = l.TenLoaiThuChi
            //                 }).FirstOrDefault();
            //    var sotien = items.sotien;
            //    var tenloai = items.tenloai;

            //    DmNhatKyND dmNhatKyND = new DmNhatKyND();
            //    dmNhatKyND.NguoiDung_ID = Session["id"].ToString();
            //    dmNhatKyND.NgayGio = DateTime.Now;
            //    dmNhatKyND.ThaoTac = "Xóa";
            //    dmNhatKyND.ChucNang = "Phiếu thu tiền";
            //    dmNhatKyND.ThamChieu = "PT" + ("000000".Remove(0, id.ToString().Length) + id);
            //    dmNhatKyND.ThamSo = tenloai;
            //    dmNhatKyND.SoTien = sotien;
            //    db.DmNhatKyND.Add(dmNhatKyND);
            //    db.SaveChanges();
            //}
            //Delete Ph_Thu
            var myID = db.Ph_ThuCF.Where(x => x.ThuChi_ID == id).FirstOrDefault();
            db.Ph_ThuCF.Remove(myID);
            db.SaveChanges();
            //Delete Ph_CongNoKH
            var valiId = db.Ph_CongNoKHCF.FirstOrDefault(x => x.ThuChi_ID == id);
            if (valiId != null)
            {
                var myIDc = db.Ph_CongNoKHCF.Where(x => x.ThuChi_ID == id).FirstOrDefault();
                db.Ph_CongNoKHCF.Remove(myIDc);
                db.SaveChanges();
            }

            return Json(true, JsonRequestBehavior.AllowGet);

        }
        public ActionResult InPhieuThu(long id, string pagesize)
        {
            Session["sttp"] = "3";
            Session["PhieuThu_id"] = id;
            Session["PageSizePT"] = pagesize.Trim();
            return Json(true, JsonRequestBehavior.AllowGet);
        }
        public ActionResult FormInPhieuThu()
        {
            return View();
        }
        public ActionResult GetSoPhieuMoi()
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var listn = db.Ph_ThuCF.Where(x => x.TenCongTy_ID == congty_id).OrderByDescending(x => x.ThuChi_ID).FirstOrDefault();
            return Json(listn, JsonRequestBehavior.AllowGet);

            //var item = db.DmBaoGia.OrderByDescending(x => x.BaoGia_ID).FirstOrDefault();
            //return Json(item, JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetLoaiCongNo(long id)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var item = db.DmThuChiCF.Where(x => x.LoaiThuChi_ID == id && x.TenCongTy_ID == congty_id).FirstOrDefault();
            return Json(item, JsonRequestBehavior.AllowGet);
        }
        public ActionResult CreatePhieuThuCongNo(Ph_ThuCF ph_ThuCF)
        {
            //check sophieu de cong them 1
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var validateName = db.Ph_ThuCF.FirstOrDefault(x => x.SoPhieu_ID == ph_ThuCF.SoPhieu_ID && x.TenCongTy_ID == congty_id);
            if (validateName != null)//co sophieu trung
            {
                var listn = db.Ph_ThuCF.Where(x => x.TenCongTy_ID == congty_id).OrderByDescending(x => x.ThuChi_ID).FirstOrDefault();
                var sophieu = listn.SoPhieu_ID + 1;
                //insert 
                Ph_ThuCF ph_ThuCF1 = new Ph_ThuCF();

                ph_ThuCF1.PhNhapXuat_ID = ph_ThuCF.PhNhapXuat_ID;
                ph_ThuCF1.DT_ID = ph_ThuCF.DT_ID;
                ph_ThuCF1.LoaiThuChi_ID = ph_ThuCF.LoaiThuChi_ID;
                ph_ThuCF1.SoPhieu_ID = sophieu;
                ph_ThuCF1.SoPhieu = ph_ThuCF.SoPhieu;
                ph_ThuCF1.NgayPhieu = ph_ThuCF.NgayPhieu;
                ph_ThuCF1.NguoiNhanNop = ph_ThuCF.NguoiNhanNop;
                ph_ThuCF1.DiaChi = ph_ThuCF.DiaChi;
                ph_ThuCF1.LyDo = ph_ThuCF.LyDo;
                ph_ThuCF1.SoTien = ph_ThuCF.SoTien;
                ph_ThuCF1.HinhThucThanhToan = ph_ThuCF.HinhThucThanhToan;
                ph_ThuCF1.NganHang_ID = ph_ThuCF.NganHang_ID;
                ph_ThuCF1.TenCongTy_ID = ph_ThuCF.TenCongTy_ID;
                ph_ThuCF1.Status = ph_ThuCF.Status;

                db.Ph_ThuCF.Add(ph_ThuCF1);
                db.SaveChanges();
                //phan phieu cong no
                var lastId = db.Ph_ThuCF.Max(item => item.ThuChi_ID);
                Ph_CongNoKHCF ph_CongNoKHCF = new Ph_CongNoKHCF();
                ph_CongNoKHCF.PhNhapXuat_ID = 0;
                ph_CongNoKHCF.ThuChi_ID = lastId;
                ph_CongNoKHCF.DT_ID = ph_ThuCF.DT_ID;
                ph_CongNoKHCF.LoaiCongNo_ID = 1;  //set tu do 1 la phai thu 2 la phai tra
                ph_CongNoKHCF.DonVi_ID = 1;
                ph_CongNoKHCF.GiaTri = -ph_ThuCF.SoTien;
                ph_CongNoKHCF.NgayPhatSinh = ph_ThuCF.NgayPhieu;
                ph_CongNoKHCF.DienGiai = "Nợ có";
                ph_CongNoKHCF.SoChungTu = "PT";
                ph_CongNoKHCF.TenCongTy_ID = congty_id;
                db.Ph_CongNoKHCF.Add(ph_CongNoKHCF);
                db.SaveChanges();
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                db.Ph_ThuCF.Add(ph_ThuCF);
                db.SaveChanges();

                //phan phieu cong no 
                var lastId = db.Ph_ThuCF.Max(item => item.ThuChi_ID);
                Ph_CongNoKHCF ph_CongNoKHCF = new Ph_CongNoKHCF();
                ph_CongNoKHCF.PhNhapXuat_ID = 0;
                ph_CongNoKHCF.ThuChi_ID = lastId;
                ph_CongNoKHCF.DT_ID = ph_ThuCF.DT_ID;
                ph_CongNoKHCF.LoaiCongNo_ID = 1; //set tu do 1 la phai thu 2 la phai tra
                ph_CongNoKHCF.DonVi_ID = 1;
                ph_CongNoKHCF.GiaTri = -ph_ThuCF.SoTien;
                ph_CongNoKHCF.NgayPhatSinh = ph_ThuCF.NgayPhieu;
                ph_CongNoKHCF.DienGiai = "Nợ có";
                ph_CongNoKHCF.SoChungTu = "PT";
                ph_CongNoKHCF.TenCongTy_ID = congty_id;
                db.Ph_CongNoKHCF.Add(ph_CongNoKHCF);
                db.SaveChanges();

                //return RedirectToAction("Index");
                return Json(ph_ThuCF, JsonRequestBehavior.AllowGet);
            }

        }
        public JsonResult CreatePhieuThu(Ph_ThuCF ph_ThuCF)
        {
            //check sophieu de cong them 1
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var validateName = db.Ph_ThuCF.FirstOrDefault(x => x.SoPhieu_ID == ph_ThuCF.SoPhieu_ID && x.TenCongTy_ID == congty_id);
            if (validateName != null)//co sophieu trung
            {
                var listn = db.Ph_ThuCF.Where(x => x.TenCongTy_ID == congty_id).OrderByDescending(x => x.ThuChi_ID).FirstOrDefault();
                var sophieu = listn.SoPhieu_ID + 1;
                //insert 
                Ph_ThuCF ph_ThuCF1 = new Ph_ThuCF();

                ph_ThuCF1.PhNhapXuat_ID = ph_ThuCF.PhNhapXuat_ID;
                ph_ThuCF1.DT_ID = ph_ThuCF.DT_ID;
                ph_ThuCF1.LoaiThuChi_ID = ph_ThuCF.LoaiThuChi_ID;
                ph_ThuCF1.SoPhieu_ID = sophieu;
                ph_ThuCF1.SoPhieu = ph_ThuCF.SoPhieu;
                ph_ThuCF1.NgayPhieu = ph_ThuCF.NgayPhieu;
                ph_ThuCF1.NguoiNhanNop = ph_ThuCF.NguoiNhanNop;
                ph_ThuCF1.DiaChi = ph_ThuCF.DiaChi;
                ph_ThuCF1.LyDo = ph_ThuCF.LyDo;
                ph_ThuCF1.SoTien = ph_ThuCF.SoTien;
                ph_ThuCF1.HinhThucThanhToan = ph_ThuCF.HinhThucThanhToan;
                ph_ThuCF1.NganHang_ID = ph_ThuCF.NganHang_ID;
                ph_ThuCF1.TenCongTy_ID = ph_ThuCF.TenCongTy_ID;
                ph_ThuCF1.Status = ph_ThuCF.Status;

                db.Ph_ThuCF.Add(ph_ThuCF1);
                db.SaveChanges();
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                db.Ph_ThuCF.Add(ph_ThuCF);
                db.SaveChanges();
                return Json(true, JsonRequestBehavior.AllowGet);
            }
        }
        public JsonResult UpdatePhieuThuCongNo(Ph_ThuCF ph_ThuCF)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);

            db.Entry(ph_ThuCF).State = EntityState.Modified;
            db.SaveChanges();

            //Delete Ph_CongNoKH
            var valiKH = db.Ph_CongNoKHCF.FirstOrDefault(x => x.ThuChi_ID == ph_ThuCF.ThuChi_ID);
            if (valiKH != null)
            {
                var myIDncc = db.Ph_CongNoKHCF.Where(x => x.ThuChi_ID == ph_ThuCF.ThuChi_ID).FirstOrDefault();
                db.Ph_CongNoKHCF.Remove(myIDncc);
                db.SaveChanges();
            }
            //phan phieu cong no khach hang
            //var lastId = db.Ph_Chi.Max(item => item.ThuChi_ID);
            Ph_CongNoKHCF ph_CongNoKHCF = new Ph_CongNoKHCF();
            ph_CongNoKHCF.PhNhapXuat_ID = 0;
            ph_CongNoKHCF.ThuChi_ID = ph_ThuCF.ThuChi_ID;
            ph_CongNoKHCF.DT_ID = ph_ThuCF.DT_ID;
            ph_CongNoKHCF.LoaiCongNo_ID = ph_ThuCF.LoaiThuChi_ID;
            ph_CongNoKHCF.DonVi_ID = 1;
            ph_CongNoKHCF.GiaTri = -ph_ThuCF.SoTien;
            ph_CongNoKHCF.NgayPhatSinh = ph_ThuCF.NgayPhieu;
            ph_CongNoKHCF.DienGiai = "Nợ có";
            ph_CongNoKHCF.SoChungTu = "PT";
            ph_CongNoKHCF.TenCongTy_ID = congty_id;
            db.Ph_CongNoKHCF.Add(ph_CongNoKHCF);
            db.SaveChanges();

            return Json(true, JsonRequestBehavior.AllowGet);
        }
        public JsonResult UpdatePhieuThu(Ph_ThuCF ph_ThuCF)
        {

            db.Entry(ph_ThuCF).State = EntityState.Modified;
            db.SaveChanges();
            ////su ly phan nhat ky nguoi dung tao
            //var row = db.ThamSoHeThongs.FirstOrDefault();
            //if (row.NhatKyND == true)
            //{
            //    var items = (from p in db.Ph_Thu
            //                 join l in db.DmLoaiThuChi on p.LoaiThuChi_ID equals l.LoaiThuChi_ID
            //                 where p.ThuChi_ID == ph_Thu.ThuChi_ID
            //                 select new
            //                 {
            //                     tenloai = l.TenLoaiThuChi
            //                 }).FirstOrDefault();
            //    var tenloai = items.tenloai;
            //    DmNhatKyND dmNhatKyND = new DmNhatKyND();
            //    dmNhatKyND.NguoiDung_ID = Session["id"].ToString();
            //    dmNhatKyND.ChucNang = "Phiếu thu tiền";
            //    dmNhatKyND.NgayGio = DateTime.Now;
            //    dmNhatKyND.ThaoTac = "Sửa";
            //    dmNhatKyND.ThamChieu = "PT" + ("000000".Remove(0, ph_Thu.ThuChi_ID.ToString().Length) + ph_Thu.ThuChi_ID);
            //    dmNhatKyND.ThamSo = tenloai;
            //    dmNhatKyND.SoTien = ph_Thu.SoTien;
            //    db.DmNhatKyND.Add(dmNhatKyND);
            //    db.SaveChanges();
            //}
            //Delete Ph_CongNoKH
            var valiNCC = db.Ph_CongNoKHCF.FirstOrDefault(x => x.ThuChi_ID == ph_ThuCF.ThuChi_ID);
            if (valiNCC != null)
            {
                var myIDncc = db.Ph_CongNoKHCF.Where(x => x.ThuChi_ID == ph_ThuCF.ThuChi_ID).FirstOrDefault();
                db.Ph_CongNoKHCF.Remove(myIDncc);
                db.SaveChanges();
            }

            return Json(true, JsonRequestBehavior.AllowGet);
        }
        public ActionResult CheckQuyenCreate()
        {
            string UserId = Convert.ToString(System.Web.HttpContext.Current.Session[CommonConstants.USER_SESSION]);
            var validateName = db.AccessRightCF.Count(x => x.QuyenID == "FrmPhieuThu" && x.TaiKhoan == UserId && x.Tao == true);
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
            var validateName = db.AccessRightCF.Count(x => x.QuyenID == "FrmPhieuThu" && x.TaiKhoan == UserId && x.Sua == true);
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
            var validateName = db.AccessRightCF.Count(x => x.QuyenID == "FrmPhieuThu" && x.TaiKhoan == UserId && x.Xoa == true);
            if (validateName == 1)
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
        }
        public ActionResult CheckQuyenInPhieu()
        {
            string UserId = Convert.ToString(System.Web.HttpContext.Current.Session[CommonConstants.USER_SESSION]);
            var validateName = db.AccessRightCF.Count(x => x.QuyenID == "FrmPhieuThu" && x.TaiKhoan == UserId && x.InPhieu == true);
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