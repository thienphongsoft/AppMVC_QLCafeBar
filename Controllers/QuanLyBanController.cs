using System.IO;
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
using Microsoft.Reporting.WebForms;
using iTextSharp.text.pdf;
using iTextSharp.text;
using System.Data;
using System.Data.SqlClient;

namespace WebAppMVC.Controllers
{
    public class QuanLyBanController : Controller
    {
        MyDB db = new MyDB();
        // GET: QuanLyBan
        [CustomAuthorizeAttribute(RoleID = "FrmPhieuXuat", QuyenXem = true)]
        public ActionResult Index()
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = db.DmBanCF.Where(x => x.TenCongTy_ID == congty_id).ToList().OrderBy(x => x.TenBan);
            var listBanTrong = db.DmBanCF.Where(x => x.TenCongTy_ID == congty_id && x.CoKhach == 0).ToList().OrderBy(x => x.TenBan);
            var listBanCo = (from p in db.Ph_XuatCF
                             join b in db.DmBanCF
                             on p.Ban_ID equals b.Ban_ID
                             where p.TenCongTy_ID == congty_id && p.ThanhToan != 1
                             orderby b.TenBan ascending
                             select new QuanLyBanModels()
                             {
                                 PhNhapXuat_ID = p.PhNhapXuat_ID,
                                 Ban_ID = p.Ban_ID,
                                 GiaBan = b.GiaBan,
                                 TenBan = b.TenBan,
                                 ThanhToan = p.ThanhToan,

                             }).ToList();

            ViewBag.BanTrong = listBanTrong;
            ViewBag.BanCo = listBanCo;

            return View(list);
        }
        [CustomAuthorizeCreate(RoleID = "FrmPhieuXuat", QuyenTao = true)]
        public ActionResult Create(int Ban_ID, string TenBan, int GiaBan)
        {
            var user_id = Convert.ToString(System.Web.HttpContext.Current.Session[CommonConstants.USER_SESSION]);
            if (user_id != null)
            {
                ViewBag.Ban_ID = Ban_ID;
                ViewBag.TenBan = TenBan;
                ViewBag.GiaBan = GiaBan;
                return View();
            }
            else
            {
                return RedirectToAction("Login", "Users");
            }
        }
        [CustomAuthorizeEdit(RoleID = "FrmPhieuXuat", QuyenSua = true)]
        public ActionResult Edit(int ID, int Ban_ID, string TenBan, int GiaBan)
        {
            var user_id = Convert.ToString(System.Web.HttpContext.Current.Session[CommonConstants.USER_SESSION]);
            if (user_id != null)
            {     
                ViewBag.IDEdit = ID;
                ViewBag.Ban_IDEdit = Ban_ID;
                ViewBag.TenBanEdit = TenBan;
                ViewBag.GiaBanEdit = GiaBan;
                return View();
            }
            else
            {
                return RedirectToAction("Login", "Users");
            }
   
        }
        [CustomAuthorizeEdit(RoleID = "FrmPhieuXuat", QuyenSua = true)]
        public ActionResult EditAll(int Ban_ID, string TenBan, int GiaBan)
        {
            var user_id = Convert.ToString(System.Web.HttpContext.Current.Session[CommonConstants.USER_SESSION]);
            if (user_id != null)
            {
                //ViewBag.IDEdit = ID;
                ViewBag.Ban_IDEdit = Ban_ID;
                ViewBag.TenBanEdit = TenBan;
                ViewBag.GiaBanEdit = GiaBan;
                return View();
            }
            else
            {
                return RedirectToAction("Login", "Users");
            }
           
        }
        public ActionResult _PartialObject()
        {
            return PartialView();
        }
        public ActionResult InOrder()
        {
            var user_id = Convert.ToString(System.Web.HttpContext.Current.Session[CommonConstants.USER_SESSION]);
            if (user_id != null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("Login", "Users");
            }
        }
        public ActionResult PhieuList()
        {
            var user_id = Convert.ToString(System.Web.HttpContext.Current.Session[CommonConstants.USER_SESSION]);
            if (user_id != null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("Login", "Users");
            }

        }
        //lay du lieu de in xuong pha che
        public ActionResult GetEditToInOrderByID(long? id)
        {
            var list = (from p in db.Ph_XuatCF
                        join c in db.DmDoiTuongCF on p.DT_ID equals c.DT_ID
                        join b in db.DmBanCF on p.Ban_ID equals b.Ban_ID
                        where p.PhNhapXuat_ID == id
                        orderby p.NgayPhieu, p.PhNhapXuat_ID descending
                        select new PhieuXuatModels()
                        {
                            Phieu_ID = p.PhNhapXuat_ID,
                            SoPhieu_ID = p.SoPhieu_ID,
                            TenBan = b.TenBan,
                            Ban_ID = p.Ban_ID,
                        }).FirstOrDefault();

            return Json(list, JsonRequestBehavior.AllowGet);
            //return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        public ActionResult GetListProductInOrder(long id)
        {
            var list = (from p in db.CT_XuatHangCF
                        join c in db.DmHangHoaCF on p.HH_ID equals c.HH_ID
                        join u in db.DmDVTCF on p.DVT_ID equals u.DVT_ID
                        where p.PhNhapXuat_ID == id
                        orderby p.PhNhapXuat_ID descending
                        select new ChiTietPhieuXuatModels()
                        {
                            Phieu_ID = p.CTXuatHang_ID,
                            PhNhapXuat_ID = p.PhNhapXuat_ID,
                            HH_ID = p.HH_ID,
                            DnMH_ID = (long)0,
                            DVT_ID = p.DVT_ID,
                            MaHH = c.MaHH,
                            TenHH = c.TenHH,
                            TenDVT = u.TenDVT,
                            SoLuong = p.SoLuong,
                            DonGiaBan = p.DonGiaBan,
                            ThanhTienBan = p.ThanhTienBan,
                            DonGiaVon = p.DonGiaVon,
                            ThanhTienVon = p.ThanhTienVon,
                        }).ToList()
               .Concat(from p in db.CT_XuatHangCF
                       join c in db.DmDinhNghiaMHCF on p.DnMH_ID equals c.DnMH_ID
                       join u in db.DmDVTCF on p.DVT_ID equals u.DVT_ID
                       where p.PhNhapXuat_ID == id
                       orderby p.PhNhapXuat_ID descending
                       select new ChiTietPhieuXuatModels()
                       {
                           Phieu_ID = p.CTXuatHang_ID,
                           PhNhapXuat_ID = p.PhNhapXuat_ID,
                           HH_ID = (long)0,
                           DnMH_ID = p.DnMH_ID,
                           DVT_ID = p.DVT_ID,
                           MaHH = c.MaDnMH,
                           TenHH = c.TenDnMH,
                           TenDVT = u.TenDVT,
                           SoLuong = p.SoLuong,
                           DonGiaBan = p.DonGiaBan,
                           ThanhTienBan = p.ThanhTienBan,
                           DonGiaVon = p.DonGiaVon,
                           ThanhTienVon = p.ThanhTienVon,
                       }).ToList().OrderBy(p => p.Phieu_ID); 


            return Json(list, JsonRequestBehavior.AllowGet);
            //return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        public ActionResult GetListProductByPhieu_ID(long id)
        {
            var list = (from p in db.CT_XuatHangCF
                        join c in db.DmHangHoaCF on p.HH_ID equals c.HH_ID
                        join u in db.DmDVTCF on p.DVT_ID equals u.DVT_ID
                        where p.PhNhapXuat_ID == id
                        orderby p.PhNhapXuat_ID descending
                        select new ChiTietPhieuXuatModels()
                        {
                            Phieu_ID = p.CTXuatHang_ID,
                            PhNhapXuat_ID = p.PhNhapXuat_ID,
                            HH_ID = p.HH_ID,
                            DnMH_ID = (long)0,
                            DVT_ID = p.DVT_ID,
                            MaHH = c.MaHH,
                            TenHH = c.TenHH,
                            TenDVT = u.TenDVT,
                            SoLuong = p.SoLuong,
                            DonGiaBan = p.DonGiaBan,
                            ThanhTienBan = p.ThanhTienBan,
                            DonGiaVon = p.DonGiaVon,
                            ThanhTienVon = p.ThanhTienVon,
                        }).ToList()
               .Concat(from p in db.CT_XuatHangCF
                       join c in db.DmDinhNghiaMHCF on p.DnMH_ID equals c.DnMH_ID
                       join u in db.DmDVTCF on p.DVT_ID equals u.DVT_ID
                       where p.PhNhapXuat_ID == id
                       orderby p.PhNhapXuat_ID descending
                       select new ChiTietPhieuXuatModels()
                       {
                           Phieu_ID = p.CTXuatHang_ID,
                           PhNhapXuat_ID = p.PhNhapXuat_ID,
                           HH_ID = (long)0,
                           DnMH_ID = p.DnMH_ID,
                           DVT_ID = p.DVT_ID,
                           MaHH = c.MaDnMH,
                           TenHH = c.TenDnMH,
                           TenDVT = u.TenDVT,
                           SoLuong = p.SoLuong,
                           DonGiaBan = p.DonGiaBan,
                           ThanhTienBan = p.ThanhTienBan,
                           DonGiaVon = p.DonGiaVon,
                           ThanhTienVon = p.ThanhTienVon,
                       }).ToList().OrderBy(p => p.Phieu_ID);


            //return Json(list, JsonRequestBehavior.AllowGet);
            return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        public ActionResult GetKhachMuaLe()
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var item = db.DmDoiTuongCF.Where(x => x.MaDT == "KL" && x.TenCongTy_ID == congty_id && x.Status == 0).FirstOrDefault();
            return Json(item, JsonRequestBehavior.AllowGet);
        }
        public ActionResult GetSoPhieuMoi()
        {
            //lay ID moi nhat cua phieu
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var listn = db.Ph_XuatCF.Where(x => x.TenCongTy_ID == congty_id).OrderByDescending(x => x.PhNhapXuat_ID).FirstOrDefault();
            return Json(listn, JsonRequestBehavior.AllowGet);

        }
        public ActionResult ThanhToanOrder(Ph_XuatCF ph_XuatCF)
        {
            //check sophieu de cong them 1
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var valiSoPhieu = db.Ph_XuatCF.FirstOrDefault(x => x.SoPhieu_ID == ph_XuatCF.SoPhieu_ID && x.TenCongTy_ID == congty_id);
            if (valiSoPhieu != null)//co sophieu trung
            {
                var listn = db.Ph_XuatCF.Where(x => x.TenCongTy_ID == congty_id).OrderByDescending(x => x.PhNhapXuat_ID).FirstOrDefault();
                var sophieu = listn.SoPhieu_ID + 1;
                //insert 
                Ph_XuatCF ph_XuatCF1 = new Ph_XuatCF();

                ph_XuatCF1.DT_ID = ph_XuatCF.DT_ID;
                ph_XuatCF1.LoaiNhapXuat_ID = ph_XuatCF.LoaiNhapXuat_ID;
                ph_XuatCF1.NguoiDung_ID = ph_XuatCF.NguoiDung_ID;
                ph_XuatCF1.SoPhieu = ph_XuatCF.SoPhieu;
                ph_XuatCF1.SoPhieu_ID = sophieu;
                ph_XuatCF1.NgayPhieu = ph_XuatCF.NgayPhieu;
                ph_XuatCF1.NguoiGiaoNhan = ph_XuatCF.NguoiGiaoNhan;
                ph_XuatCF1.DiaChi = ph_XuatCF.DiaChi;
                ph_XuatCF1.TienHang = ph_XuatCF.TienHang;
                ph_XuatCF1.TongTien = ph_XuatCF.TongTien;
                ph_XuatCF1.TienThue = ph_XuatCF.TienThue;
                ph_XuatCF1.ThueSuat = ph_XuatCF.ThueSuat;
                ph_XuatCF1.DienGiai = ph_XuatCF.DienGiai;
                ph_XuatCF1.ThuTienNgay = ph_XuatCF.ThuTienNgay;
                ph_XuatCF1.Status = ph_XuatCF.Status;
                ph_XuatCF1.ThanhToan = ph_XuatCF.ThanhToan;
                ph_XuatCF1.Ban_ID = ph_XuatCF.Ban_ID;
                ph_XuatCF1.TyLeGiamGia = ph_XuatCF.TyLeGiamGia;
                ph_XuatCF1.TienGiamGia = ph_XuatCF.TienGiamGia;
                ph_XuatCF1.TyLePPhucVu = ph_XuatCF.TyLePPhucVu;
                ph_XuatCF1.TienPPhucVu = ph_XuatCF.TienPPhucVu;
                ph_XuatCF1.TienPhatSinh = ph_XuatCF.TienPhatSinh;
                ph_XuatCF1.LyDoPhatSinh = ph_XuatCF.LyDoPhatSinh;
                ph_XuatCF1.GioVao = ph_XuatCF.GioVao;
                ph_XuatCF1.GioRa = ph_XuatCF.GioRa;
                ph_XuatCF1.TenCongTy_ID = ph_XuatCF.TenCongTy_ID;
                ph_XuatCF1.GhiNo = ph_XuatCF.GhiNo;
                ph_XuatCF1.TienMat = ph_XuatCF.TienMat;
                ph_XuatCF1.ChuyenKhoan = ph_XuatCF.ChuyenKhoan;
                db.Ph_XuatCF.Add(ph_XuatCF1);
                db.SaveChanges();

                //su ly phan nhat ky nguoi dung tao
                var row = db.ThamSoHeThongCF.Where(x => x.TenCongTy_ID == congty_id).FirstOrDefault();
                if (row.NhatKyND == true)
                {
                    var datra = ph_XuatCF.ThuTienNgay;
                    DmNhatKyNDCF dmNhatKyNDCF = new DmNhatKyNDCF();
                    dmNhatKyNDCF.NguoiDung_ID = Session["user_id"].ToString();
                    dmNhatKyNDCF.ChucNang = "Xuất bán";
                    dmNhatKyNDCF.NgayGio = DateTime.Now;
                    dmNhatKyNDCF.ThaoTac = "Thêm";
                    dmNhatKyNDCF.ThamChieu = "XB" + ("000000".Remove(0, ph_XuatCF.SoPhieu_ID.ToString().Length) + ph_XuatCF.SoPhieu_ID);
                    dmNhatKyNDCF.TenCongTy_ID = congty_id;
                    if (datra == false)
                    {
                        dmNhatKyNDCF.ThamSo = "Ghi công nợ";
                    }
                    else
                    {
                        dmNhatKyNDCF.ThamSo = "Đã trả tiền";
                    }
                    dmNhatKyNDCF.SoTien = ph_XuatCF.TongTien;
                    db.DmNhatKyNDCF.Add(dmNhatKyNDCF);
                    db.SaveChanges();
                }
                return Json(ph_XuatCF1, JsonRequestBehavior.AllowGet);
            }
            else
            {
                db.Ph_XuatCF.Add(ph_XuatCF);
                db.SaveChanges();
                //su ly phan nhat ky nguoi dung tao
                var row = db.ThamSoHeThongCF.Where(x => x.TenCongTy_ID == congty_id).FirstOrDefault();
                if (row.NhatKyND == true)
                {
                    var datra = ph_XuatCF.ThuTienNgay;
                    DmNhatKyNDCF dmNhatKyNDCF = new DmNhatKyNDCF();
                    dmNhatKyNDCF.NguoiDung_ID = Session["user_id"].ToString();
                    dmNhatKyNDCF.ChucNang = "Xuất bán";
                    dmNhatKyNDCF.NgayGio = DateTime.Now;
                    dmNhatKyNDCF.ThaoTac = "Thêm";
                    dmNhatKyNDCF.ThamChieu = "XB" + ("000000".Remove(0, ph_XuatCF.SoPhieu_ID.ToString().Length) + ph_XuatCF.SoPhieu_ID);
                    dmNhatKyNDCF.TenCongTy_ID = congty_id;
                    if (datra == false)
                    {
                        dmNhatKyNDCF.ThamSo = "Ghi công nợ";
                    }
                    else
                    {
                        dmNhatKyNDCF.ThamSo = "Đã trả tiền";
                    }
                    dmNhatKyNDCF.SoTien = ph_XuatCF.TongTien;
                    db.DmNhatKyNDCF.Add(dmNhatKyNDCF);
                    db.SaveChanges();
                }
                return Json(ph_XuatCF, JsonRequestBehavior.AllowGet);
            }
        }
        public ActionResult CreatePhieuThu(Ph_ThuCF ph_ThuCF)
        {
            
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            //lay ID loai thu chi tu danh muc thu hay chi co ghi cong no
            var itemloaiThuChi = db.DmThuChiCF.Where(x => x.ThuHayChi == 1 && x.TenCongTy_ID == congty_id && x.CongNo == true).FirstOrDefault();
            //check sophieu de cong them 1
            var valiSoPhieu = db.Ph_ThuCF.Where(x => x.TenCongTy_ID == congty_id).OrderByDescending(x => x.SoPhieu_ID).FirstOrDefault();
            if (valiSoPhieu != null)//co sophieu trung
            {
                //var listn = db.Ph_ThuCF.Where(x => x.TenCongTy_ID == congty_id).OrderByDescending(x => x.ThuChi_ID).FirstOrDefault();
                var sophieu = valiSoPhieu.SoPhieu_ID + 1;
                //insert 
                Ph_ThuCF ph_ThuCF1 = new Ph_ThuCF();

                ph_ThuCF1.PhNhapXuat_ID = ph_ThuCF.PhNhapXuat_ID;
                ph_ThuCF1.DT_ID = ph_ThuCF.DT_ID;
                ph_ThuCF1.LoaiThuChi_ID = itemloaiThuChi.LoaiThuChi_ID;
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
                ph_ThuCF1.UserID = ph_ThuCF.UserID;
                ph_ThuCF1.Status = ph_ThuCF.Status;

                db.Ph_ThuCF.Add(ph_ThuCF1);
                db.SaveChanges();
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                //insert 
                Ph_ThuCF ph_ThuCF1 = new Ph_ThuCF();

                ph_ThuCF1.PhNhapXuat_ID = ph_ThuCF.PhNhapXuat_ID;
                ph_ThuCF1.DT_ID = ph_ThuCF.DT_ID;
                ph_ThuCF1.LoaiThuChi_ID = itemloaiThuChi.LoaiThuChi_ID; //chi loai loai thu chi 
                ph_ThuCF1.SoPhieu_ID = 1;
                ph_ThuCF1.SoPhieu = ph_ThuCF.SoPhieu;
                ph_ThuCF1.NgayPhieu = ph_ThuCF.NgayPhieu;
                ph_ThuCF1.NguoiNhanNop = ph_ThuCF.NguoiNhanNop;
                ph_ThuCF1.DiaChi = ph_ThuCF.DiaChi;
                ph_ThuCF1.LyDo = ph_ThuCF.LyDo;
                ph_ThuCF1.SoTien = ph_ThuCF.SoTien;
                ph_ThuCF1.HinhThucThanhToan = ph_ThuCF.HinhThucThanhToan;
                ph_ThuCF1.NganHang_ID = ph_ThuCF.NganHang_ID;
                ph_ThuCF1.TenCongTy_ID = ph_ThuCF.TenCongTy_ID;
                ph_ThuCF1.UserID = ph_ThuCF.UserID;
                ph_ThuCF1.Status = ph_ThuCF.Status;

                db.Ph_ThuCF.Add(ph_ThuCF1);
                db.SaveChanges();
                return Json(true, JsonRequestBehavior.AllowGet);
            }

        }
        public ActionResult CreateCongNo(Ph_CongNoKHCF ph_CongNoKHCF)
        {
            db.Ph_CongNoKHCF.Add(ph_CongNoKHCF);
            db.SaveChanges();
            return Json(ph_CongNoKHCF, JsonRequestBehavior.AllowGet);
        }
        public ActionResult CreateTamTinh(Ph_XuatCF ph_XuatCF)
        {
            //check sophieu de cong them 1
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var valiSoPhieu = db.Ph_XuatCF.FirstOrDefault(x => x.SoPhieu_ID == ph_XuatCF.SoPhieu_ID && x.TenCongTy_ID == congty_id);
            if (valiSoPhieu != null)//co sophieu trung
            {
                var listn = db.Ph_XuatCF.Where(x => x.TenCongTy_ID == congty_id).OrderByDescending(x => x.PhNhapXuat_ID).FirstOrDefault();
                var sophieu = listn.SoPhieu_ID + 1;
                //insert 
                Ph_XuatCF ph_XuatCF1 = new Ph_XuatCF();

                ph_XuatCF1.DT_ID = ph_XuatCF.DT_ID;
                ph_XuatCF1.LoaiNhapXuat_ID = ph_XuatCF.LoaiNhapXuat_ID;
                ph_XuatCF1.NguoiDung_ID = ph_XuatCF.NguoiDung_ID;
                ph_XuatCF1.SoPhieu = ph_XuatCF.SoPhieu;
                ph_XuatCF1.SoPhieu_ID = sophieu;
                ph_XuatCF1.NgayPhieu = ph_XuatCF.NgayPhieu;
                ph_XuatCF1.NguoiGiaoNhan = ph_XuatCF.NguoiGiaoNhan;
                ph_XuatCF1.DiaChi = ph_XuatCF.DiaChi;
                ph_XuatCF1.TienHang = ph_XuatCF.TienHang;
                ph_XuatCF1.TongTien = ph_XuatCF.TongTien;
                ph_XuatCF1.TienThue = ph_XuatCF.TienThue;
                ph_XuatCF1.ThueSuat = ph_XuatCF.ThueSuat;
                ph_XuatCF1.DienGiai = ph_XuatCF.DienGiai;
                ph_XuatCF1.ThuTienNgay = ph_XuatCF.ThuTienNgay;
                ph_XuatCF1.Status = ph_XuatCF.Status;
                ph_XuatCF1.ThanhToan = ph_XuatCF.ThanhToan;
                ph_XuatCF1.Ban_ID = ph_XuatCF.Ban_ID;
                ph_XuatCF1.TyLeGiamGia = ph_XuatCF.TyLeGiamGia;
                ph_XuatCF1.TienGiamGia = ph_XuatCF.TienGiamGia;
                ph_XuatCF1.TyLePPhucVu = ph_XuatCF.TyLePPhucVu;
                ph_XuatCF1.TienPPhucVu = ph_XuatCF.TienPPhucVu;
                ph_XuatCF1.TienPhatSinh = ph_XuatCF.TienPhatSinh;
                ph_XuatCF1.LyDoPhatSinh = ph_XuatCF.LyDoPhatSinh;
                ph_XuatCF1.GioVao = ph_XuatCF.GioVao;
                ph_XuatCF1.GioRa = ph_XuatCF.GioRa;
                ph_XuatCF1.TenCongTy_ID = ph_XuatCF.TenCongTy_ID;
                ph_XuatCF1.GhiNo = ph_XuatCF.GhiNo;
                ph_XuatCF1.TienMat = ph_XuatCF.TienMat;
                ph_XuatCF1.ChuyenKhoan = ph_XuatCF.ChuyenKhoan;
                db.Ph_XuatCF.Add(ph_XuatCF1);
                db.SaveChanges();
                //update lai DmBan là bàn đã mở
                var rowBan = db.DmBanCF.FirstOrDefault(x => x.Ban_ID == ph_XuatCF.Ban_ID && x.TenCongTy_ID == congty_id);
                rowBan.CoKhach = 1;
                db.Entry(rowBan).State = EntityState.Modified;
                db.SaveChanges();
                ////su ly phan nhat ky nguoi dung tao
                //var row = db.ThamSoHeThongCF.Where(x => x.TenCongTy_ID == congty_id).FirstOrDefault();
                //if (row.NhatKyND == true)
                //{
                //    var datra = ph_XuatCF.ThuTienNgay;
                //    DmNhatKyNDCF dmNhatKyNDCF = new DmNhatKyNDCF();
                //    dmNhatKyNDCF.NguoiDung_ID = Session["user_id"].ToString();
                //    dmNhatKyNDCF.ChucNang = "Xuất bán";
                //    dmNhatKyNDCF.NgayGio = DateTime.Now;
                //    dmNhatKyNDCF.ThaoTac = "Tạm tính";
                //    dmNhatKyNDCF.ThamChieu = "XB" + ("000000".Remove(0, ph_XuatCF.PhNhapXuat_ID.ToString().Length) + ph_XuatCF.PhNhapXuat_ID);
                //    dmNhatKyNDCF.TenCongTy_ID = congty_id;
                //    if (datra == false)
                //    {
                //        dmNhatKyNDCF.ThamSo = "Ghi công nợ";
                //    }
                //    else
                //    {
                //        dmNhatKyNDCF.ThamSo = "Đã trả tiền";
                //    }
                //    dmNhatKyNDCF.SoTien = ph_XuatCF.TongTien;
                //    db.DmNhatKyNDCF.Add(dmNhatKyNDCF);
                //    db.SaveChanges();
                //}
                return Json(ph_XuatCF1, JsonRequestBehavior.AllowGet);
            }
            else
            {
                db.Ph_XuatCF.Add(ph_XuatCF);
                db.SaveChanges();

                //update lai DmBan là bàn đã mở
                var rowBan = db.DmBanCF.Where(x => x.Ban_ID == ph_XuatCF.Ban_ID && x.TenCongTy_ID == congty_id).FirstOrDefault();
                rowBan.CoKhach = 1;
                db.Entry(rowBan).State = EntityState.Modified;
                db.SaveChanges();
                ////su ly phan nhat ky nguoi dung tao
                //var row = db.ThamSoHeThongCF.Where(x => x.TenCongTy_ID == congty_id).FirstOrDefault();
                //if (row.NhatKyND == true)
                //{
                //    var datra = ph_XuatCF.ThuTienNgay;
                //    DmNhatKyNDCF dmNhatKyNDCF = new DmNhatKyNDCF();
                //    dmNhatKyNDCF.NguoiDung_ID = Session["user_id"].ToString();
                //    dmNhatKyNDCF.ChucNang = "Xuất bán";
                //    dmNhatKyNDCF.NgayGio = DateTime.Now;
                //    dmNhatKyNDCF.ThaoTac = "Tạm tính";
                //    dmNhatKyNDCF.ThamChieu = "XB" + ("000000".Remove(0, ph_XuatCF.PhNhapXuat_ID.ToString().Length) + ph_XuatCF.PhNhapXuat_ID);
                //    dmNhatKyNDCF.TenCongTy_ID = congty_id;
                //    if (datra == false)
                //    {
                //        dmNhatKyNDCF.ThamSo = "Ghi công nợ";
                //    }
                //    else
                //    {
                //        dmNhatKyNDCF.ThamSo = "Đã trả tiền";
                //    }
                //    dmNhatKyNDCF.SoTien = ph_XuatCF.TongTien;
                //    db.DmNhatKyNDCF.Add(dmNhatKyNDCF);
                //    db.SaveChanges();
                //}
                return Json(ph_XuatCF, JsonRequestBehavior.AllowGet);
            }
      
        }

        public JsonResult InsertProducts(List<CT_XuatHangCF> cT_XuatHangCFs)
        {

            foreach (CT_XuatHangCF cT_XuatHangCF in cT_XuatHangCFs)
            {
                db.CT_XuatHangCF.Add(cT_XuatHangCF);
            }
            int insertedRecords = db.SaveChanges();
            return Json(insertedRecords);

        }
        //load default phieu trong quan ly phieu
        public ActionResult SearchGetListPhieuByDate(DateTime ngayStart, DateTime ngayEnd)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = from p in db.Ph_XuatCF
                       join c in db.DmDoiTuongCF on p.DT_ID equals c.DT_ID
                       join b in db.DmBanCF on p.Ban_ID equals b.Ban_ID
                       where p.NgayPhieu >= ngayStart && p.NgayPhieu <= ngayEnd
                       where p.LoaiNhapXuat_ID != 9 && p.ThanhToan == 1 && p.TenCongTy_ID == congty_id
                       orderby p.PhNhapXuat_ID descending
                       select new PhieuXuatModels()
                       {
                           Phieu_ID = p.PhNhapXuat_ID,
                           SoPhieu = p.SoPhieu + "000000".Substring(0, 6 - p.SoPhieu_ID.ToString().Length) + p.SoPhieu_ID.ToString(),
                           NgayPhieu = p.NgayPhieu,
                           GioVao = p.GioVao,
                           GioRa = p.GioRa,
                           MaDT = c.MaDT,
                           TenDT = c.TenDT,
                           DiaChi = p.DiaChi,
                           TienHang = p.TienHang,
                           TongTien = p.TongTien,
                           TyLeGiamGia = p.TyLeGiamGia,
                           TienGiamGia = p.TienGiamGia,
                           TyLePPhucVu = p.TyLePPhucVu,
                           TienPPhucVu = p.TienPPhucVu,
                           TienPhatSinh = p.TienPhatSinh,
                           LyDoPhatSinh = p.LyDoPhatSinh,
                           ThueSuat = p.ThueSuat,
                           TienThue = p.TienThue,
                           ThuTienNgay = p.ThuTienNgay,
                           TenBan = b.TenBan,
                           //TienHang - TongTien - isnull(TienGiamTru,0) + isnull(TienDichVu,0) as ChietKhau
                       };

            //return Json(list, JsonRequestBehavior.AllowGet);
            return Json(new { data = list }, JsonRequestBehavior.AllowGet);

        }
        public ActionResult SearchGetListPhieuByName(string name)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = from p in db.Ph_XuatCF
                       join c in db.DmDoiTuongCF on p.DT_ID equals c.DT_ID
                       join b in db.DmBanCF on p.Ban_ID equals b.Ban_ID
                       where c.TenDT == name
                       where p.LoaiNhapXuat_ID != 9 && p.ThanhToan == 1 && p.TenCongTy_ID == congty_id
                       orderby p.PhNhapXuat_ID descending
                       select new PhieuXuatModels()
                       {
                           Phieu_ID = p.PhNhapXuat_ID,
                           SoPhieu = p.SoPhieu + "000000".Substring(0, 6 - p.SoPhieu_ID.ToString().Length) + p.SoPhieu_ID.ToString(),
                           NgayPhieu = p.NgayPhieu,
                           GioVao = p.GioVao,
                           GioRa = p.GioRa,
                           MaDT = c.MaDT,
                           TenDT = c.TenDT,
                           DiaChi = p.DiaChi,
                           TienHang = p.TienHang,
                           TongTien = p.TongTien,
                           TyLeGiamGia = p.TyLeGiamGia,
                           TienGiamGia = p.TienGiamGia,
                           TyLePPhucVu = p.TyLePPhucVu,
                           TienPPhucVu = p.TienPPhucVu,
                           TienPhatSinh = p.TienPhatSinh,
                           LyDoPhatSinh = p.LyDoPhatSinh,
                           ThueSuat = p.ThueSuat,
                           TienThue = p.TienThue,
                           ThuTienNgay = p.ThuTienNgay,
                           TenBan = b.TenBan,
                           //TienHang - TongTien - isnull(TienGiamTru,0) + isnull(TienDichVu,0) as ChietKhau
                       };

            //return Json(list, JsonRequestBehavior.AllowGet);
            return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        public ActionResult SearchGetListPhieuBySoPhieu_ID(long sophieu_id)
        {
            //lay ID moi nhat cua phieu
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = from p in db.Ph_XuatCF
                       join c in db.DmDoiTuongCF on p.DT_ID equals c.DT_ID
                       join b in db.DmBanCF on p.Ban_ID equals b.Ban_ID
                       where p.SoPhieu_ID == sophieu_id && p.TenCongTy_ID == congty_id
                       where p.LoaiNhapXuat_ID != 9 && p.ThanhToan == 1
                       orderby p.PhNhapXuat_ID descending
                       select new PhieuXuatModels()
                       {
                           Phieu_ID = p.PhNhapXuat_ID,
                           SoPhieu = p.SoPhieu + "000000".Substring(0, 6 - p.SoPhieu_ID.ToString().Length) + p.SoPhieu_ID.ToString(),
                           NgayPhieu = p.NgayPhieu,
                           GioVao = p.GioVao,
                           GioRa = p.GioRa,
                           MaDT = c.MaDT,
                           TenDT = c.TenDT,
                           DiaChi = p.DiaChi,
                           TienHang = p.TienHang,
                           TongTien = p.TongTien,
                           TyLeGiamGia = p.TyLeGiamGia,
                           TienGiamGia = p.TienGiamGia,
                           TyLePPhucVu = p.TyLePPhucVu,
                           TienPPhucVu = p.TienPPhucVu,
                           TienPhatSinh = p.TienPhatSinh,
                           LyDoPhatSinh = p.LyDoPhatSinh,
                           ThueSuat = p.ThueSuat,
                           TienThue = p.TienThue,
                           ThuTienNgay = p.ThuTienNgay,
                           TenBan = b.TenBan,
                           //TienHang - TongTien - isnull(TienGiamTru,0) + isnull(TienDichVu,0) as ChietKhau
                       };

            //return Json(list, JsonRequestBehavior.AllowGet);
            return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        public ActionResult SearchGetListOrderByDateAndProduct(DateTime ngayStart, DateTime ngayEnd, string Product)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = (from p in db.Ph_XuatCF
                        join c in db.DmDoiTuongCF on p.DT_ID equals c.DT_ID
                        join b in db.DmBanCF on p.Ban_ID equals b.Ban_ID
                        join t in db.CT_XuatHangCF on p.PhNhapXuat_ID equals t.PhNhapXuat_ID
                        join s in db.DmHangHoaCF on t.HH_ID equals s.HH_ID
                        where p.NgayPhieu >= ngayStart && p.NgayPhieu <= ngayEnd
                        where p.LoaiNhapXuat_ID != 9 && p.ThanhToan == 1 && p.TenCongTy_ID == congty_id
                        where s.TenHH == Product || s.MaHH == Product
                        orderby p.PhNhapXuat_ID descending
                        select new PhieuXuatModels()
                        {
                            Phieu_ID = p.PhNhapXuat_ID,
                            SoPhieu = p.SoPhieu + "000000".Substring(0, 6 - p.SoPhieu_ID.ToString().Length) + p.SoPhieu_ID.ToString(),
                            NgayPhieu = p.NgayPhieu,
                            GioVao = p.GioVao,
                            GioRa = p.GioRa,
                            MaDT = c.MaDT,
                            TenDT = c.TenDT,
                            DiaChi = p.DiaChi,
                            TienHang = p.TienHang,
                            TongTien = p.TongTien,
                            TyLeGiamGia = p.TyLeGiamGia,
                            TienGiamGia = p.TienGiamGia,
                            TyLePPhucVu = p.TyLePPhucVu,
                            TienPPhucVu = p.TienPPhucVu,
                            TienPhatSinh = p.TienPhatSinh,
                            LyDoPhatSinh = p.LyDoPhatSinh,
                            ThueSuat = p.ThueSuat,
                            TienThue = p.TienThue,
                            ThuTienNgay = p.ThuTienNgay,
                            TenBan = b.TenBan,
                            //TienHang - TongTien - isnull(TienGiamTru,0) + isnull(TienDichVu,0) as ChietKhau
                        })
            .Concat(from p in db.Ph_XuatCF
                    join c in db.DmDoiTuongCF on p.DT_ID equals c.DT_ID
                    join b in db.DmBanCF on p.Ban_ID equals b.Ban_ID
                    join t in db.CT_XuatHangCF on p.PhNhapXuat_ID equals t.PhNhapXuat_ID
                    join s in db.DmDinhNghiaMHCF on t.DnMH_ID equals s.DnMH_ID
                    where p.NgayPhieu >= ngayStart && p.NgayPhieu <= ngayEnd
                    where p.LoaiNhapXuat_ID != 9 && p.ThanhToan == 1
                    where s.TenDnMH == Product || s.TenDnMH == Product
                    orderby p.PhNhapXuat_ID descending
                    select new PhieuXuatModels()
                    {
                        Phieu_ID = p.PhNhapXuat_ID,
                        SoPhieu = p.SoPhieu + "000000".Substring(0, 6 - p.SoPhieu_ID.ToString().Length) + p.SoPhieu_ID.ToString(),
                        NgayPhieu = p.NgayPhieu,
                        GioVao = p.GioVao,
                        GioRa = p.GioRa,
                        MaDT = c.MaDT,
                        TenDT = c.TenDT,
                        DiaChi = p.DiaChi,
                        TienHang = p.TienHang,
                        TongTien = p.TongTien,
                        TyLeGiamGia = p.TyLeGiamGia,
                        TienGiamGia = p.TienGiamGia,
                        TyLePPhucVu = p.TyLePPhucVu,
                        TienPPhucVu = p.TienPPhucVu,
                        TienPhatSinh = p.TienPhatSinh,
                        LyDoPhatSinh = p.LyDoPhatSinh,
                        ThueSuat = p.ThueSuat,
                        TienThue = p.TienThue,
                        ThuTienNgay = p.ThuTienNgay,
                        TenBan = b.TenBan,
                        //TienHang - TongTien - isnull(TienGiamTru,0) + isnull(TienDichVu,0) as ChietKhau
                    });
            //return Json(list, JsonRequestBehavior.AllowGet);
            return Json(new { data = list }, JsonRequestBehavior.AllowGet);

        }
        public ActionResult FormInPhieu()
        {
            var user_id = Convert.ToString(System.Web.HttpContext.Current.Session[CommonConstants.USER_SESSION]);
            if (user_id != null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("Login", "Users");
            }
        }
        public ActionResult FormInRDLCPhieu()
        {
            var user_id = Convert.ToString(System.Web.HttpContext.Current.Session[CommonConstants.USER_SESSION]);
            if (user_id != null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("Login", "Users");
            }
        }
        public ActionResult InPhieuXuat(long id, string pagesize)
        {
            var user_id = Convert.ToString(System.Web.HttpContext.Current.Session[CommonConstants.USER_SESSION]);
            if (user_id != null)
            {
                Session["sttp"] = "1";
                Session["PhieuXuat_id"] = id;
                Session["PageSizePX"] = pagesize.Trim();
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return RedirectToAction("Login", "Users");
            }
          
        }
        public ActionResult InPhieuBep(long id, string pagesize)
        {
            Session["sttp"] = "2";
            Session["PhieuInOrder_id"] = id;
            Session["PageSizeB"] = pagesize.Trim();
            return Json(true, JsonRequestBehavior.AllowGet);
        }
        public ActionResult CreateInBep(Ph_InBepWebCF ph_InBepWebCF)
        {
            db.Ph_InBepWebCF.Add(ph_InBepWebCF);
            db.SaveChanges();
            //////su ly phan nhat ky nguoi dung tao
            //var row = db.ThamSoHeThongs.FirstOrDefault();
            //if (row.NhatKyND == true)
            //{
            //    DmNhatKyND dmNhatKyND = new DmNhatKyND();
            //    dmNhatKyND.NguoiDung_ID = Session["id"].ToString();
            //    dmNhatKyND.ChucNang = "In bếp web";
            //    dmNhatKyND.NgayGio = DateTime.Now;
            //    dmNhatKyND.ThaoTac = "In";
            //    dmNhatKyND.ThamChieu = "XB" + ("000000".Remove(0, ph_InBepWeb.SoPhieu.ToString().Length) + ph_InBepWeb.SoPhieu);
            //    var tenban = db.DmBan.FirstOrDefault(x => x.Ban_ID == ph_InBepWeb.Ban_ID);
            //    dmNhatKyND.ThamSo = tenban.TenBan;
            //    dmNhatKyND.SoTien = 0;
            //    db.DmNhatKyND.Add(dmNhatKyND);
            //    db.SaveChanges();
            //}
            ////return RedirectToAction("Index");
            return Json(ph_InBepWebCF, JsonRequestBehavior.AllowGet);
        }
        public JsonResult InsertInOrder(List<CT_InBepWebCF> cT_InBepWebCF)
        {


            foreach (CT_InBepWebCF cT_InBepWeb in cT_InBepWebCF)
            {
                db.CT_InBepWebCF.Add(cT_InBepWeb);
            }
            int insertedRecords = db.SaveChanges();
            return Json(insertedRecords);

        }
        public ActionResult _PartialKhoGiay()
        {
            return PartialView();
        }
        public ActionResult _PartialKhoGiayBep()
        {
            return PartialView();
        }
        public ActionResult _PartialChuyenBan()
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var listBanTrong = db.DmBanCF.Where(x => x.CoKhach == 0 && x.TenCongTy_ID == congty_id).ToList().OrderBy(x => x.TenBan);
            ViewBag.BanChuyen = listBanTrong;
            return PartialView();
        }
        public JsonResult ChuyenBan(long id, long bancu_id, long banchuyen_id)
        {
            //update lai phieu xuat
            var row = db.Ph_XuatCF.FirstOrDefault(x => x.PhNhapXuat_ID == id);
            row.Ban_ID = banchuyen_id;
            db.Entry(row).State = EntityState.Modified;
            db.SaveChanges();

            //update lai DmBan cua ban da duoc chuyen
            var rowChuyen = db.DmBanCF.Find(banchuyen_id);
            rowChuyen.CoKhach = 1;
            db.Entry(rowChuyen).State = EntityState.Modified;
            db.SaveChanges();

            //update lai DmBan cua ban cu đã mở
            var rowBan = db.DmBanCF.Find(bancu_id);
            rowBan.CoKhach = 0;
            db.Entry(rowBan).State = EntityState.Modified;
            db.SaveChanges();

            return Json(true, JsonRequestBehavior.AllowGet);
        }
        public ActionResult _PartialGhepBan()
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var listGhepBan = (from p in db.Ph_XuatCF
                               join b in db.DmBanCF
                               on p.Ban_ID equals b.Ban_ID
                               where p.ThanhToan != 1 && p.TenCongTy_ID == congty_id
                               orderby b.TenBan ascending
                               select new QuanLyBanModels()
                               {
                                   PhNhapXuat_ID = p.PhNhapXuat_ID,
                                   Ban_ID = p.Ban_ID,
                                   GiaBan = b.GiaBan,
                                   TenBan = b.TenBan,
                                   ThanhToan = p.ThanhToan,

                               }).ToList();
            ViewBag.GhepBan = listGhepBan;

            return PartialView();
        }
        public JsonResult DeleteBanGhep(long id, long bancu_id)
        {
            ////su ly phan nhat ky nguoi dung xoa phieu
            //var row = db.ThamSoHeThongs.FirstOrDefault();
            //if (row.NhatKyND == true)
            //{
            //    var item = db.Ph_Xuat.Where(x => x.PhNhapXuat_ID == id).FirstOrDefault();
            //    var sotien = item.TongTien;
            //    DmNhatKyND dmNhatKyND = new DmNhatKyND();
            //    dmNhatKyND.NguoiDung_ID = Session["id"].ToString();
            //    dmNhatKyND.NgayGio = DateTime.Now;
            //    dmNhatKyND.ThaoTac = "Xóa";
            //    dmNhatKyND.ChucNang = "Xuất bán";
            //    dmNhatKyND.ThamChieu = "XB" + ("000000".Remove(0, id.ToString().Length) + id);
            //    dmNhatKyND.ThamSo = "Bàn ghép";
            //    dmNhatKyND.SoTien = sotien;
            //    db.DmNhatKyND.Add(dmNhatKyND);
            //    db.SaveChanges();
            //}
            //update lai DmBan cua ban cu đã bi ghep
            var rowBan = db.DmBanCF.Find(bancu_id);
            rowBan.CoKhach = 0;
            db.Entry(rowBan).State = EntityState.Modified;
            db.SaveChanges();

            //Delete Ph_Xuat ban bi ghep
            var myID = db.Ph_XuatCF.Where(x => x.PhNhapXuat_ID == id).FirstOrDefault();
            db.Ph_XuatCF.Remove(myID);
            db.SaveChanges();

            //Delete CT_XuatHang
            db.CT_XuatHangCF.RemoveRange(db.CT_XuatHangCF.Where(x => x.PhNhapXuat_ID == id));
            db.SaveChanges();

            return Json(true, JsonRequestBehavior.AllowGet);
        }
         [HttpPost]
        public JsonResult Delete(long id)
        {
           
            //Delete Ph_Xuat
            var myID = db.Ph_XuatCF.Where(x => x.PhNhapXuat_ID == id).FirstOrDefault();
            db.Ph_XuatCF.Remove(myID);
            db.SaveChanges();
            //Delete CT_XuatHang
            db.CT_XuatHangCF.RemoveRange(db.CT_XuatHangCF.Where(x => x.PhNhapXuat_ID == id));
            db.SaveChanges();
            //Delete Ph_Thu
            var valiId = db.Ph_ThuCF.FirstOrDefault(x => x.PhNhapXuat_ID == id);
            if (valiId != null)
            {
                var myIDc = db.Ph_ThuCF.Where(x => x.PhNhapXuat_ID == id).FirstOrDefault();
                db.Ph_ThuCF.Remove(myIDc);
                db.SaveChanges();
            }
            //Delete Ph_CongNoKH
            var valiNCC = db.Ph_CongNoKHCF.FirstOrDefault(x => x.PhNhapXuat_ID == id);
            if (valiNCC != null)
            {
                var myIDkh = db.Ph_CongNoKHCF.Where(x => x.PhNhapXuat_ID == id).FirstOrDefault();
                db.Ph_CongNoKHCF.Remove(myIDkh);
                db.SaveChanges();

            }
            //Delete Ph_CongNoNCC cho phieu xuat tra nha cung cap
            var valikhtra = db.Ph_CongNoNCCCF.FirstOrDefault(x => x.PhNhapXuat_ID == id);
            if (valikhtra != null)
            {
                //xoa voi ThuChi_ID == -1 de khong bi trung phieu xuat ban
                var myIDKhTra = db.Ph_CongNoNCCCF.Where(x => x.PhNhapXuat_ID == id && x.ThuChi_ID == -1).FirstOrDefault();
                db.Ph_CongNoNCCCF.Remove(myIDKhTra);
                db.SaveChanges();
            }
            return Json(true, JsonRequestBehavior.AllowGet);

        }
        //load sua lai phieu xuat ben tab ban co khach
        public ActionResult GetEditPhieuOrderByID(long? id)
        {
            var list = (from p in db.Ph_XuatCF
                        join c in db.DmDoiTuongCF on p.DT_ID equals c.DT_ID
                        join b in db.DmBanCF on p.Ban_ID equals b.Ban_ID
                        where p.PhNhapXuat_ID == id
                        orderby p.NgayPhieu, p.PhNhapXuat_ID descending
                        select new PhieuXuatModels()
                        {
                            Phieu_ID = p.PhNhapXuat_ID,
                            SoPhieu = p.SoPhieu + "000000".Substring(0, 6 - p.SoPhieu_ID.ToString().Length) + p.SoPhieu_ID.ToString(),
                            SoPhieu_ID = p.SoPhieu_ID,
                            NgayPhieu = p.NgayPhieu,
                            GioVao = p.GioVao,
                            DT_ID = p.DT_ID,
                            MaDT = c.MaDT,
                            TenDT = c.TenDT,
                            DiaChi = p.DiaChi,
                            TienHang = p.TienHang,
                            TongTien = p.TongTien,
                            TienThue = p.TienThue,
                            ThueSuat = p.ThueSuat,
                            TyLeGiamGia = p.TyLeGiamGia,
                            TienGiamGia = p.TienGiamGia,
                            TyLePPhucVu = p.TyLePPhucVu,
                            TienPPhucVu = p.TienPPhucVu,
                            TienPhatSinh = p.TienPhatSinh,
                            LyDoPhatSinh = p.LyDoPhatSinh,
                            ThuTienNgay = p.ThuTienNgay,
                            GhiNo = p.GhiNo,
                            NguoiGiaoNhan = p.NguoiGiaoNhan,
                            DienGiai = p.DienGiai,
                            TenBan = b.TenBan,
                            Ban_ID = p.Ban_ID,
                            GiaBan_ID = b.GiaBan,
                            TienMat = p.TienMat,
                            ChuyenKhoan = p.ChuyenKhoan,
                        }).FirstOrDefault();

            return Json(list, JsonRequestBehavior.AllowGet);
            //return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        //load sua lai phieu xuat ben tab co tat ca ban
        public ActionResult GetEditPhieuOrderByBan_ID(long? ban_id)
        {
            var list = (from p in db.Ph_XuatCF
                        join c in db.DmDoiTuongCF on p.DT_ID equals c.DT_ID
                        join b in db.DmBanCF on p.Ban_ID equals b.Ban_ID
                        where p.Ban_ID == ban_id && p.ThanhToan != 1
                        orderby p.NgayPhieu, p.PhNhapXuat_ID descending
                        select new PhieuXuatModels()
                        {
                            Phieu_ID = p.PhNhapXuat_ID,
                            SoPhieu = p.SoPhieu + "000000".Substring(0, 6 - p.SoPhieu_ID.ToString().Length) + p.SoPhieu_ID.ToString(),
                            SoPhieu_ID = p.SoPhieu_ID,
                            NgayPhieu = p.NgayPhieu,
                            GioVao = p.GioVao,
                            DT_ID = p.DT_ID,
                            MaDT = c.MaDT,
                            TenDT = c.TenDT,
                            DiaChi = p.DiaChi,
                            TienHang = p.TienHang,
                            TongTien = p.TongTien,
                            TienThue = p.TienThue,
                            ThueSuat = p.ThueSuat,
                            TyLeGiamGia = p.TyLeGiamGia,
                            TienGiamGia = p.TienGiamGia,
                            TyLePPhucVu = p.TyLePPhucVu,
                            TienPPhucVu = p.TienPPhucVu,
                            TienPhatSinh = p.TienPhatSinh,
                            LyDoPhatSinh = p.LyDoPhatSinh,
                            ThuTienNgay = p.ThuTienNgay,
                            GhiNo = p.GhiNo,
                            NguoiGiaoNhan = p.NguoiGiaoNhan,
                            DienGiai = p.DienGiai,
                            TenBan = b.TenBan,
                            Ban_ID = p.Ban_ID,
                            GiaBan_ID = b.GiaBan,
                            TienMat = p.TienMat,
                            ChuyenKhoan = p.ChuyenKhoan,
                        }).FirstOrDefault();

            return Json(list, JsonRequestBehavior.AllowGet);
            //return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        public JsonResult UpdateTamTinhOrder(Ph_XuatCF ph_XuatCF)
        {
            
            //update lai phieu xuat
            var row = db.Ph_XuatCF.FirstOrDefault(x => x.PhNhapXuat_ID == ph_XuatCF.PhNhapXuat_ID);
            row.LoaiNhapXuat_ID = ph_XuatCF.LoaiNhapXuat_ID;
            row.DT_ID = ph_XuatCF.DT_ID;
            row.DiaChi = ph_XuatCF.DiaChi;
            row.DienGiai = ph_XuatCF.DienGiai;
            row.NguoiGiaoNhan = ph_XuatCF.NguoiGiaoNhan;
            row.TenCongTy_ID = ph_XuatCF.TenCongTy_ID;
            row.NguoiDung_ID = ph_XuatCF.NguoiDung_ID;
            row.SoPhieu = ph_XuatCF.SoPhieu;
            row.NgayPhieu = ph_XuatCF.NgayPhieu;
            row.TienHang = ph_XuatCF.TienHang;
            row.TongTien = ph_XuatCF.TongTien;
            row.ThueSuat = ph_XuatCF.ThueSuat;
            row.TienThue = ph_XuatCF.TienThue;
            row.TyLeGiamGia = ph_XuatCF.TyLeGiamGia;
            row.TienGiamGia = ph_XuatCF.TienGiamGia;
            row.TyLePPhucVu = ph_XuatCF.TyLePPhucVu;
            row.TienPPhucVu = ph_XuatCF.TienPPhucVu;
            row.TienPhatSinh = ph_XuatCF.TienPhatSinh;
            row.LyDoPhatSinh = ph_XuatCF.LyDoPhatSinh;
            row.ThuTienNgay = ph_XuatCF.ThuTienNgay;
            row.GhiNo = ph_XuatCF.GhiNo;
            row.Ban_ID = ph_XuatCF.Ban_ID;
            row.Status = ph_XuatCF.Status;
            row.ThanhToan = ph_XuatCF.ThanhToan;
            row.TienMat = ph_XuatCF.TienMat;
            row.ChuyenKhoan = ph_XuatCF.ChuyenKhoan;
            db.Entry(row).State = EntityState.Modified;
            db.SaveChanges();
            //kiem tra xoa neu het id phieu xuat trong CT_XuatHang
            db.CT_XuatHangCF.RemoveRange(db.CT_XuatHangCF.Where(x => x.PhNhapXuat_ID == ph_XuatCF.PhNhapXuat_ID));
            db.SaveChanges();
            //Delete Ph_Thu
            var valiId = db.Ph_ThuCF.FirstOrDefault(x => x.PhNhapXuat_ID == ph_XuatCF.PhNhapXuat_ID);
            if (valiId != null)
            {
                var myIDt = db.Ph_ThuCF.Where(x => x.PhNhapXuat_ID == ph_XuatCF.PhNhapXuat_ID).FirstOrDefault();
                db.Ph_ThuCF.Remove(myIDt);
                db.SaveChanges();
            }
            //Delete Ph_CongNoKH
            var valiKH = db.Ph_CongNoKHCF.FirstOrDefault(x => x.PhNhapXuat_ID == ph_XuatCF.PhNhapXuat_ID);
            if (valiKH != null)
            {
                db.Ph_CongNoKHCF.RemoveRange(db.Ph_CongNoKHCF.Where(x => x.PhNhapXuat_ID == ph_XuatCF.PhNhapXuat_ID));
                db.SaveChanges();
            }
            //Delete Ph_CongNoNCC cho phieu xuat tra nha cung cap
            var valikhtra = db.Ph_CongNoNCCCF.FirstOrDefault(x => x.PhNhapXuat_ID == ph_XuatCF.PhNhapXuat_ID);
            if (valikhtra != null)
            {
                //xoa voi ThuChi_ID == -1 de khong bi trung phieu xuat ban
                var myIDKhTra = db.Ph_CongNoNCCCF.Where(x => x.PhNhapXuat_ID == ph_XuatCF.PhNhapXuat_ID && x.ThuChi_ID == -1).FirstOrDefault();
                db.Ph_CongNoNCCCF.Remove(myIDKhTra);
                db.SaveChanges();
            }
            return Json(true, JsonRequestBehavior.AllowGet);
        }
        public JsonResult UpdateOrderThanhToan(Ph_XuatCF ph_XuatCF)
        {
            //update lai phieu xuat
            var row = db.Ph_XuatCF.FirstOrDefault(x => x.PhNhapXuat_ID == ph_XuatCF.PhNhapXuat_ID);
            row.LoaiNhapXuat_ID = ph_XuatCF.LoaiNhapXuat_ID;
            row.DT_ID = ph_XuatCF.DT_ID;
            row.DiaChi = ph_XuatCF.DiaChi;
            row.DienGiai = ph_XuatCF.DienGiai;
            row.NguoiGiaoNhan = ph_XuatCF.NguoiGiaoNhan;
            row.TenCongTy_ID = ph_XuatCF.TenCongTy_ID;
            row.NguoiDung_ID = ph_XuatCF.NguoiDung_ID;
            row.SoPhieu = ph_XuatCF.SoPhieu;
            row.NgayPhieu = ph_XuatCF.NgayPhieu;
            row.TienHang = ph_XuatCF.TienHang;
            row.TongTien = ph_XuatCF.TongTien;
            row.ThueSuat = ph_XuatCF.ThueSuat;
            row.TienThue = ph_XuatCF.TienThue;
            row.TyLeGiamGia = ph_XuatCF.TyLeGiamGia;
            row.TienGiamGia = ph_XuatCF.TienGiamGia;
            row.TyLePPhucVu = ph_XuatCF.TyLePPhucVu;
            row.TienPPhucVu = ph_XuatCF.TienPPhucVu;
            row.TienPhatSinh = ph_XuatCF.TienPhatSinh;
            row.LyDoPhatSinh = ph_XuatCF.LyDoPhatSinh;
            row.ThuTienNgay = ph_XuatCF.ThuTienNgay;
            row.GhiNo = ph_XuatCF.GhiNo;
            row.Ban_ID = ph_XuatCF.Ban_ID;
            row.Status = ph_XuatCF.Status;
            row.ThanhToan = ph_XuatCF.ThanhToan;
            row.TienMat = ph_XuatCF.TienMat;
            row.ChuyenKhoan = ph_XuatCF.ChuyenKhoan;
            db.Entry(row).State = EntityState.Modified;
            db.SaveChanges();
            //update lai DmBan là bàn đã mở
            var rowBan = db.DmBanCF.Find(ph_XuatCF.Ban_ID);
            rowBan.CoKhach = 0;
            db.Entry(rowBan).State = EntityState.Modified;
            db.SaveChanges();
            //kiem tra xoa neu het id phieu xuat trong CT_XuatHang
            db.CT_XuatHangCF.RemoveRange(db.CT_XuatHangCF.Where(x => x.PhNhapXuat_ID == ph_XuatCF.PhNhapXuat_ID));
            db.SaveChanges();
            //Delete Ph_Thu
            var valiId = db.Ph_ThuCF.FirstOrDefault(x => x.PhNhapXuat_ID == ph_XuatCF.PhNhapXuat_ID);
            if (valiId != null)
            {
                var myIDt = db.Ph_ThuCF.Where(x => x.PhNhapXuat_ID == ph_XuatCF.PhNhapXuat_ID).FirstOrDefault();
                db.Ph_ThuCF.Remove(myIDt);
                db.SaveChanges();
            }
            //Delete Ph_CongNoKH
            var valiKH = db.Ph_CongNoKHCF.FirstOrDefault(x => x.PhNhapXuat_ID == ph_XuatCF.PhNhapXuat_ID);
            if (valiKH != null)
            {
                db.Ph_CongNoKHCF.RemoveRange(db.Ph_CongNoKHCF.Where(x => x.PhNhapXuat_ID == ph_XuatCF.PhNhapXuat_ID));
                db.SaveChanges();
            }
            //Delete Ph_CongNoNCC cho phieu xuat tra nha cung cap
            var valikhtra = db.Ph_CongNoNCCCF.FirstOrDefault(x => x.PhNhapXuat_ID == ph_XuatCF.PhNhapXuat_ID);
            if (valikhtra != null)
            {
                //xoa voi ThuChi_ID == -1 de khong bi trung phieu xuat ban
                var myIDKhTra = db.Ph_CongNoNCCCF.Where(x => x.PhNhapXuat_ID == ph_XuatCF.PhNhapXuat_ID && x.ThuChi_ID == -1).FirstOrDefault();
                db.Ph_CongNoNCCCF.Remove(myIDKhTra);
                db.SaveChanges();
            }
            return Json(true, JsonRequestBehavior.AllowGet);
        }
        public JsonResult DeleteEdit(long id)
        {
            ////su ly phan nhat ky nguoi dung xoa phieu
            //var row = db.ThamSoHeThongs.FirstOrDefault();
            //if (row.NhatKyND == true)
            //{
            //    var item = db.Ph_Xuat.Where(x => x.PhNhapXuat_ID == id).FirstOrDefault();
            //    var sotien = item.TongTien;
            //    DmNhatKyND dmNhatKyND = new DmNhatKyND();
            //    dmNhatKyND.NguoiDung_ID = Session["id"].ToString();
            //    dmNhatKyND.NgayGio = DateTime.Now;
            //    dmNhatKyND.ThaoTac = "Xóa";
            //    dmNhatKyND.ChucNang = "Xuất bán";
            //    dmNhatKyND.ThamChieu = "XB" + ("000000".Remove(0, id.ToString().Length) + id);
            //    dmNhatKyND.ThamSo = "Đang order";
            //    dmNhatKyND.SoTien = sotien;
            //    db.DmNhatKyND.Add(dmNhatKyND);
            //    db.SaveChanges();
            //}

            //Delete Ph_Xuat
            var myID = db.Ph_XuatCF.Where(x => x.PhNhapXuat_ID == id).FirstOrDefault();

            //update lai DmBan là bàn đã mở
            var rowBan = db.DmBanCF.FirstOrDefault(x => x.Ban_ID == myID.Ban_ID);
            rowBan.CoKhach = 0;
            db.Entry(rowBan).State = EntityState.Modified;
            db.SaveChanges();
            //Delete Ph_Xuat
            db.Ph_XuatCF.Remove(myID);
            db.SaveChanges();
            //Delete CT_XuatHang
            db.CT_XuatHangCF.RemoveRange(db.CT_XuatHangCF.Where(x => x.PhNhapXuat_ID == id));
            db.SaveChanges();
            //Delete Ph_Thu
            var valiId = db.Ph_ThuCF.FirstOrDefault(x => x.PhNhapXuat_ID == id);
            if (valiId != null)
            {
                var myIDc = db.Ph_ThuCF.Where(x => x.PhNhapXuat_ID == id).FirstOrDefault();
                db.Ph_ThuCF.Remove(myIDc);
                db.SaveChanges();
            }
            //Delete Ph_CongNoKH
            var valiNCC = db.Ph_CongNoKHCF.FirstOrDefault(x => x.PhNhapXuat_ID == id);
            if (valiNCC != null)
            {
                db.Ph_CongNoKHCF.RemoveRange(db.Ph_CongNoKHCF.Where(x => x.PhNhapXuat_ID == id));
                db.SaveChanges();

            }

            return Json(true, JsonRequestBehavior.AllowGet);

        }
        public ActionResult EditPhieu()
        {
            var user_id = Convert.ToString(System.Web.HttpContext.Current.Session[CommonConstants.USER_SESSION]);
            if (user_id != null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("Login", "Users");
            }
        }
        public ActionResult GetIdLoaiNhapXuat(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }

            Ph_XuatCF ph_XuatCF = db.Ph_XuatCF.Find(id);
            if (ph_XuatCF == null)
            {
                return HttpNotFound();
            }
            return Json(ph_XuatCF, JsonRequestBehavior.AllowGet);
            //return View(dmDoiTuong);
            //return RedirectToAction("Details");
        }
        public ActionResult GetPhieuThuTienByID(long? id)
        {
            var list = (from p in db.Ph_ThuCF
                        join n in db.DmNganHangCF on p.NganHang_ID equals n.NganHang_ID
                        where p.PhNhapXuat_ID == id
                        select new PhieuThuChiModels()
                        {
                            NganHang_ID = p.NganHang_ID,
                            HinhThucThanhToan = p.HinhThucThanhToan,
                            TenNganHang = n.TenNganHang,
                        }).FirstOrDefault();

            return Json(list, JsonRequestBehavior.AllowGet);
            //return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        public ActionResult ListNganHang()
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var listn = db.DmNganHangCF.Where(x => x.NganHang_ID > 0 && x.TenCongTy_ID == congty_id).ToList();
            return Json(listn, JsonRequestBehavior.AllowGet);
        }
        public ActionResult ExportToPDF(long id, string pagesize)
        {
            Session["PhieuXuat_id"] = id;
            Session["PageSizePX"] = pagesize.Trim();
            //Phần khai báo tên đơn vị
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var itemDv = db.DmCongTyCF.Where(x => x.CongTy_ID == congty_id).FirstOrDefault();
           // var pagesize = Session["PageSizePX"].ToString();
            //Report  
            DataTable dt = GetSPPhieuXuat();
            ReportViewer reportViewer = new ReportViewer();
            reportViewer.ProcessingMode = ProcessingMode.Local;
            reportViewer.LocalReport.DataSources.Clear();
            ReportDataSource datasource = new ReportDataSource("PhieuThanhToan", dt);
            //reportViewer.LocalReport.ReportPath = Server.MapPath(@"~\Reports\Report1.rdlc");
            reportViewer.LocalReport.ReportEmbeddedResource = "WebAppMVC.Reports.PhieuThanhToan80.rdlc";
            ReportParameter[] parameters = new ReportParameter[3];
            parameters[0] = new ReportParameter("TenCongTy", itemDv.TenCongTy, true);
            parameters[1] = new ReportParameter("DiaChi", itemDv.DiaChi, true);
            parameters[2] = new ReportParameter("DienThoai", itemDv.DienThoai, true);

            reportViewer.LocalReport.SetParameters(parameters);
            reportViewer.LocalReport.DataSources.Add(datasource);

            //Byte  
            Warning[] warnings;
            string[] streamids;
            string mimeType, encoding, filenameExtension;

            byte[] bytes = reportViewer.LocalReport.Render("Pdf", null, out mimeType, out encoding, out filenameExtension, out streamids, out warnings);

            //File  
            string FileName = "Test_" + DateTime.Now.Ticks.ToString() + ".pdf";
            string FilePath = HttpContext.Server.MapPath(@"~\TempFiles\") + FileName;

            //create and set PdfReader  
            PdfReader reader = new PdfReader(bytes);
            FileStream output = new FileStream(FilePath, FileMode.Create);

            string Agent = HttpContext.Request.Headers["User-Agent"].ToString();

            //create and set PdfStamper  
            PdfStamper pdfStamper = new PdfStamper(reader, output, '0', true);

            if (Agent.Contains("Firefox"))
                pdfStamper.JavaScript = "var res = app.loaded('var pp = this.getPrintParams();pp.interactive = pp.constants.interactionLevel.full;this.print(pp);');";
            else
                pdfStamper.JavaScript = "var res = app.setTimeOut('var pp = this.getPrintParams();pp.interactive = pp.constants.interactionLevel.full;this.print(pp);', 200);";

            pdfStamper.FormFlattening = false;
            pdfStamper.Close();
            reader.Close();
           
            //return file path  
            string FilePathReturn = @"TempFiles/" + FileName;
            return Content(FilePathReturn);
            
        }
        private DataTable GetSPPhieuXuat()
        {
            DataTable ResultsTable = new DataTable();
            var id = Convert.ToInt32(Session["PhieuXuat_id"]);

            try
            {
                SqlCommand cmd = new SqlCommand("PhieuThanhToanCF", SqlDataProvider.GetConnection());
                cmd.Parameters.AddWithValue("@SoPhNhapXuat", id);

                cmd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(ResultsTable);
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

            return ResultsTable;
        }
        public ActionResult PhieuOrderList()
        {
            var user_id = Convert.ToString(System.Web.HttpContext.Current.Session[CommonConstants.USER_SESSION]);
            if (user_id != null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("Login", "Users");
            }
        }
        public ActionResult GetListInOrderByDate(DateTime ngayStart, DateTime ngayEnd)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = from p in db.Ph_InBepWebCF
                       join b in db.DmBanCF on p.Ban_ID equals b.Ban_ID
                       where p.NgayGio >= ngayStart && p.NgayGio <= ngayEnd && p.TenCongTy_ID == congty_id
                       orderby p.ID descending
                       select new 
                       {
                           Id = p.ID,
                           SoPhieu = "XB" + "000000".Substring(0, 6 - p.SoPhieu_ID.ToString().Length) + p.SoPhieu_ID.ToString(),
                           NgayGio = p.NgayGio,
                           TenBan = b.TenBan,
                           TenTaiKhoan = p.TenTaiKhoan,

                       };

            //return Json(list, JsonRequestBehavior.AllowGet);
            return Json(new { data = list }, JsonRequestBehavior.AllowGet);

        }
        public ActionResult GetViewProductInOrderById(long id)
        {
            //var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = (from p in db.CT_InBepWebCF
                        join c in db.DmHangHoaCF on p.HH_ID equals c.HH_ID
                        join u in db.DmDVTCF on p.DVT_ID equals u.DVT_ID
                        where p.ID == id 
                        select new ListProductInOrderModels()
                        {
                            MaHH = c.MaHH,
                            TenHH = c.TenHH,
                            TenDVT = u.TenDVT,
                            SoLuong = p.SLMon,

                        }).ToList()
               .Concat(from p in db.CT_InBepWebCF
                       join c in db.DmDinhNghiaMHCF on p.DnMH_ID equals c.DnMH_ID
                       join u in db.DmDVTCF on p.DVT_ID equals u.DVT_ID
                       where p.ID == id
                       select new ListProductInOrderModels()
                       {
                           MaHH = c.MaDnMH,
                           TenHH = c.TenDnMH,
                           TenDVT = u.TenDVT,
                           SoLuong = p.SLMon,

                       }).ToList().OrderBy(p => p.CT_ID);


            // return Json(list, JsonRequestBehavior.AllowGet);
            return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        public ActionResult GetListDmBanInPhieuOrder()
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = db.DmBanCF.Where(x => x.TenCongTy_ID == congty_id).ToList().OrderBy(x => x.TenBan);
            return Json(list, JsonRequestBehavior.AllowGet);
            //return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        public ActionResult GetListInOrderByBan_IDAndDate(DateTime ngayStart, DateTime ngayEnd, long Ban_ID)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = from p in db.Ph_InBepWebCF
                       join b in db.DmBanCF on p.Ban_ID equals b.Ban_ID
                       where p.NgayGio >= ngayStart && p.NgayGio <= ngayEnd
                       where p.Ban_ID == Ban_ID && p.TenCongTy_ID == congty_id
                       orderby p.ID descending
                       select new 
                       {
                           Id = p.ID,
                           SoPhieu = "XB" + "000000".Substring(0, 6 - p.SoPhieu_ID.ToString().Length) + p.SoPhieu_ID.ToString(),
                           NgayGio = p.NgayGio,
                           TenBan = b.TenBan,
                           TenTaiKhoan = p.TenTaiKhoan,

                       };

            //return Json(list, JsonRequestBehavior.AllowGet);
            return Json(new { data = list }, JsonRequestBehavior.AllowGet);

        }
        public ActionResult GetListInOrderBySoPhieu(long? soPhieu)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = from p in db.Ph_InBepWebCF
                       join b in db.DmBanCF on p.Ban_ID equals b.Ban_ID
                       where p.SoPhieu_ID == soPhieu && p.TenCongTy_ID == congty_id
                       orderby p.SoPhieu_ID descending
                       select new 
                       {
                           Id = p.ID,
                           SoPhieu = "XB" + "000000".Substring(0, 6 - p.SoPhieu_ID.ToString().Length) + p.SoPhieu_ID.ToString(),
                           NgayGio = p.NgayGio,
                           TenBan = b.TenBan,
                           TenTaiKhoan = p.TenTaiKhoan,
                           //TienHang - TongTien - isnull(TienGiamTru,0) + isnull(TienDichVu,0) as ChietKhau
                       };

            //return Json(list, JsonRequestBehavior.AllowGet);
            return Json(new { data = list }, JsonRequestBehavior.AllowGet);

        }
        [HttpPost]
        public JsonResult DeletePhieuOrder(long id)
        {
            //Delete Ph_InBep
            var myID = db.Ph_InBepWebCF.Where(x => x.ID == id).FirstOrDefault();
            db.Ph_InBepWebCF.Remove(myID);
            db.SaveChanges();
            //Delete CT_InBepWebCF
            db.CT_InBepWebCF.RemoveRange(db.CT_InBepWebCF.Where(x => x.ID == id));
            db.SaveChanges();
           
            return Json(true, JsonRequestBehavior.AllowGet);

        }

        public ActionResult CheckQuyenCreate()
        {
            string UserId = Convert.ToString(System.Web.HttpContext.Current.Session[CommonConstants.USER_SESSION]);
            var validateName = db.AccessRightCF.Count(x => x.QuyenID == "FrmPhieuXuat" && x.TaiKhoan == UserId && x.Tao == true);
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
            var validateName = db.AccessRightCF.Count(x => x.QuyenID == "FrmPhieuXuat" && x.TaiKhoan == UserId && x.Sua == true);
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
            var validateName = db.AccessRightCF.Count(x => x.QuyenID == "FrmPhieuXuat" && x.TaiKhoan == UserId && x.Xoa == true);
            if (validateName == 1)
            {
                TempData["thongbao"] = "Bạn có muốn xóa vĩnh viễn phiếu này ?";
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
            var validateName = db.AccessRightCF.Count(x => x.QuyenID == "FrmPhieuXuat" && x.TaiKhoan == UserId && x.InPhieu == true);
            if (validateName == 1)
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
        }
        public ActionResult CheckQuyenInPhieuOrder()
        {
            string UserId = Convert.ToString(System.Web.HttpContext.Current.Session[CommonConstants.USER_SESSION]);
            var validateName = db.AccessRightCF.Count(x => x.QuyenID == "FrmPhieuInOrder" && x.TaiKhoan == UserId && x.InPhieu == true);
            if (validateName == 1)
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
        }
        public ActionResult _PartialMessageBoxDel()
        {
            return PartialView();
        }
    }
}