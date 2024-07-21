using MyDatabase;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity.SqlServer;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebAppMVC.ClassCommon;
using WebAppMVC.Models;

namespace WebAppMVC.Controllers
{
    public class HomeController : Controller
    {
        private MyDB db = new MyDB();
        [CustomAuthorizeAttribute(RoleID = "FrmBaoCaoDoanhThu", QuyenXem = true)]
       
        public ActionResult Index()
        {
            var userid = Convert.ToString(System.Web.HttpContext.Current.Session[CommonConstants.USER_SESSION]);
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);

            var quyenAdmin = db.AccessRightCF.Count(x => x.QuyenID == "FrmBaoCaoDoanhThu" && x.TaiKhoan == userid && x.Xem == true);
            var quyenNhanVien = db.AccessRightCF.Count(x => x.QuyenID == "FrmBaoCaoDoanhThuNgay" && x.TaiKhoan == userid && x.Xem == true);
            if (quyenAdmin == 1 || quyenNhanVien == 1)
            {
                //Tong Phieu xuat 
                var list = db.Ph_XuatCF.Where(m => m.NgayPhieu == DateTime.Today && m.TenCongTy_ID == congty_id).ToList();
                ViewBag.TotalOrders = list.Count();
                float totalThanhTien = 0;
                foreach (var item in list)
                {
                    int temp = (int)item.TongTien;
                    totalThanhTien += temp;
                }
                ViewBag.TotalMoney = totalThanhTien.ToString("#,##0");

                //Tong Phieu thu
                var listThu = db.Ph_ThuCF.Where(m => m.NgayPhieu == DateTime.Today && m.TenCongTy_ID == congty_id).ToList();
                ViewBag.TotalPhieuThu = listThu.Count();
                float totalThu = 0;
                foreach (var item in listThu)
                {
                    int temp = (int)item.SoTien;
                    totalThu += temp;
                }
                ViewBag.TotalTienThu = totalThu.ToString("#,##0");
            }
            else 
            {
               
            }
            return View();
        }
        //ban dng co khach
        public ActionResult GetListBanCoKhach()
        {
            var userid = Convert.ToString(System.Web.HttpContext.Current.Session[CommonConstants.USER_SESSION]);
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
           
            var list = from p in db.Ph_XuatCF
                       join b in db.DmBanCF on p.Ban_ID equals b.Ban_ID
                       where p.LoaiNhapXuat_ID != 9 && p.ThanhToan != 1 && p.TenCongTy_ID == congty_id
                       orderby p.PhNhapXuat_ID descending
                       select new PhieuXuatModels()
                       {
                           Phieu_ID = p.PhNhapXuat_ID,
                           GioVao = p.GioVao,
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
        //Chi tiet ban dang co khach
        public ActionResult GetListViewProductById(long id)
        {
            var list = (from p in db.CT_XuatHangCF
                        join c in db.DmHangHoaCF on p.HH_ID equals c.HH_ID
                        join u in db.DmDVTCF on p.DVT_ID equals u.DVT_ID
                        where p.PhNhapXuat_ID == id
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
        public JsonResult GetDateTimeDoanhSo7Ngay()
        {
            try
            {
                var day01 = DateTime.Today;
                var day02 = DateTime.Today.AddDays(-1);
                var day03 = DateTime.Today.AddDays(-2);
                var day04 = DateTime.Today.AddDays(-3);
                var day05 = DateTime.Today.AddDays(-4);
                var day06 = DateTime.Today.AddDays(-5);
                var day07 = DateTime.Today.AddDays(-6);

                string date01 = Convert.ToDateTime(day01).ToString("dd/MM/yyyy");
                string date02 = Convert.ToDateTime(day02).ToString("dd/MM/yyyy");
                string date03 = Convert.ToDateTime(day03).ToString("dd/MM/yyyy");
                string date04 = Convert.ToDateTime(day04).ToString("dd/MM/yyyy");
                string date05 = Convert.ToDateTime(day05).ToString("dd/MM/yyyy");
                string date06 = Convert.ToDateTime(day06).ToString("dd/MM/yyyy");
                string date07 = Convert.ToDateTime(day07).ToString("dd/MM/yyyy");

                var userid = Convert.ToString(System.Web.HttpContext.Current.Session[CommonConstants.USER_SESSION]);
                var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);

                var quyenAdmin = db.AccessRightCF.Count(x => x.QuyenID == "FrmBaoCaoDoanhThu" && x.TaiKhoan == userid && x.Xem == true);
                var quyenNhanVien = db.AccessRightCF.Count(x => x.QuyenID == "FrmBaoCaoDoanhThuNgay" && x.TaiKhoan == userid && x.Xem == true);
                if (quyenAdmin == 1 || quyenNhanVien == 1)
                {
                    //Phieu xuat ngay 01
                    var TongTien01 = db.Ph_XuatCF.Where(x => x.NgayPhieu == DateTime.Today && x.TenCongTy_ID == congty_id).Sum(i => i.TongTien);
                    if (TongTien01 == null)
                    {
                        TongTien01 = 0;
                    }
                    //Phieu xuat ngay 02
                    var TongTien02 = db.Ph_XuatCF.Where(x => x.NgayPhieu == day02 && x.TenCongTy_ID == congty_id).Sum(i => i.TongTien);
                    if (TongTien02 == null)
                    {
                        TongTien02 = 0;
                    }
                    //Phieu xuat ngay 03
                    var TongTien03 = db.Ph_XuatCF.Where(x => x.NgayPhieu == day03 && x.TenCongTy_ID == congty_id).Sum(i => i.TongTien);
                    if (TongTien03 == null)
                    {
                        TongTien03 = 0;
                    }
                    //Phieu xuat ngay 04
                    var TongTien04 = db.Ph_XuatCF.Where(x => x.NgayPhieu == day04 && x.TenCongTy_ID == congty_id).Sum(i => i.TongTien);
                    if (TongTien04 == null)
                    {
                        TongTien04 = 0;
                    }
                    //Phieu xuat ngay 05
                    var TongTien05 = db.Ph_XuatCF.Where(x => x.NgayPhieu == day05 && x.TenCongTy_ID == congty_id).Sum(i => i.TongTien);
                    if (TongTien05 == null)
                    {
                        TongTien05 = 0;
                    }
                    //Phieu xuat ngay 06
                    var TongTien06 = db.Ph_XuatCF.Where(x => x.NgayPhieu == day06 && x.TenCongTy_ID == congty_id).Sum(i => i.TongTien);
                    if (TongTien06 == null)
                    {
                        TongTien06 = 0;
                    }
                    //Phieu xuat ngay 07
                    var TongTien07 = db.Ph_XuatCF.Where(x => x.NgayPhieu == day07 && x.TenCongTy_ID == congty_id).Sum(i => i.TongTien);
                    if (TongTien07 == null)
                    {
                        TongTien07 = 0;
                    }
                    var CongTien = TongTien01 + TongTien02 + TongTien03 + TongTien04 + TongTien05 + TongTien06 + TongTien07;
                    return Json(new { Date01 = date01, Date02 = date02, Date03 = date03, Date04 = date04, Date05 = date05, Date06 = date06, Date07 = date07, DoanhThu01 = TongTien01, DoanhThu02 = TongTien02, DoanhThu03 = TongTien03, DoanhThu04 = TongTien04, DoanhThu05 = TongTien05, DoanhThu06 = TongTien06, DoanhThu07 = TongTien07, TongDoanhSo = CongTien }, JsonRequestBehavior.AllowGet);
                }
                else //cho tung xe
                {

                }
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            catch
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }

        }
        [HttpPost]
        //cho vẽ chart
        public JsonResult NewChart(string strNgay01, string strNgay02, string strNgay03, string strNgay04, string strNgay05, string strNgay06, string strNgay07,
              decimal Ngay01Value, decimal Ngay02Value, decimal Ngay03Value, decimal Ngay04Value, decimal Ngay05Value, decimal Ngay06Value, decimal Ngay07Value)
        {
            Ngay01Value = Math.Round(Ngay01Value, 0);
            Ngay02Value = Math.Round(Ngay02Value, 0);
            Ngay03Value = Math.Round(Ngay03Value, 0);
            Ngay04Value = Math.Round(Ngay04Value, 0);
            Ngay05Value = Math.Round(Ngay05Value, 0);
            Ngay06Value = Math.Round(Ngay06Value, 0);
            Ngay07Value = Math.Round(Ngay07Value, 0);
            List<object> iData = new List<object>();
            //Creating sample data  
            DataTable dt = new DataTable();
            dt.Columns.Add("Expense", System.Type.GetType("System.String"));
            dt.Columns.Add("ExpenseValues", System.Type.GetType("System.Int32"));

            //For Education
            DataRow dr = dt.NewRow();
            dr["Expense"] = strNgay01;
            dr["ExpenseValues"] = Ngay01Value;
            dt.Rows.Add(dr);

            //For Lodging
            dr = dt.NewRow();
            dr["Expense"] = strNgay02;
            dr["ExpenseValues"] = Ngay02Value;
            dt.Rows.Add(dr);

            //For Fooding
            dr = dt.NewRow();
            dr["Expense"] = strNgay03;
            dr["ExpenseValues"] = Ngay03Value;
            dt.Rows.Add(dr);

            //For Travelling
            dr = dt.NewRow();
            dr["Expense"] = strNgay04;
            dr["ExpenseValues"] = Ngay04Value;
            dt.Rows.Add(dr);

            //For Communication
            dr = dt.NewRow();
            dr["Expense"] = strNgay05;
            dr["ExpenseValues"] = Ngay05Value;
            dt.Rows.Add(dr);

            //For Others
            dr = dt.NewRow();
            dr["Expense"] = strNgay06;
            dr["ExpenseValues"] = Ngay06Value;
            dt.Rows.Add(dr);

            //For Others
            dr = dt.NewRow();
            dr["Expense"] = strNgay07;
            dr["ExpenseValues"] = Ngay07Value;
            dt.Rows.Add(dr);

            //Looping and extracting each DataColumn to List<Object>  
            foreach (DataColumn dc in dt.Columns)
            {
                List<object> x = new List<object>();
                x = (from DataRow drr in dt.Rows select drr[dc.ColumnName]).ToList();
                iData.Add(x);
            }
            ViewBag.ChartData = iData;
            //Source data returned as JSON  
            return Json(iData, JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetBestSellerDoanhSo()
        {
            var ngayStart = DateTime.Today.AddDays(-6);
            var ngayEnd = DateTime.Today;
            var userid = Convert.ToString(System.Web.HttpContext.Current.Session[CommonConstants.USER_SESSION]);
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);

            var quyenAdmin = db.AccessRightCF.Count(x => x.QuyenID == "FrmBaoCaoDoanhThu" && x.TaiKhoan == userid && x.Xem == true);
            var quyenNhanVien = db.AccessRightCF.Count(x => x.QuyenID == "FrmBaoCaoDoanhThu" && x.TaiKhoan == userid && x.Xem == true);
            if (quyenAdmin == 1 || quyenNhanVien == 1)
            {
                //phan ten hang hoa
                var tenhh = (from c in db.CT_XuatHangCF
                             join p in db.Ph_XuatCF on c.PhNhapXuat_ID equals p.PhNhapXuat_ID
                             join d in db.DmHangHoaCF on c.HH_ID equals d.HH_ID
                             where p.NgayPhieu >= ngayStart && p.NgayPhieu <= ngayEnd && p.ThanhToan == 1 && p.TenCongTy_ID == congty_id
                             select new { TenHH = d.TenHH, ThanhTien = c.ThanhTienBan }
                             into ThanhTienQty
                             group ThanhTienQty by ThanhTienQty.TenHH into pg
                             let totalQuantity = pg.Sum(prod => prod.ThanhTien)
                             orderby totalQuantity descending
                             select pg.Key).Take(10)
                 .Concat(from c in db.CT_XuatHangCF
                         join p in db.Ph_XuatCF on c.PhNhapXuat_ID equals p.PhNhapXuat_ID
                         join d in db.DmDinhNghiaMHCF on c.DnMH_ID equals d.DnMH_ID
                         where p.NgayPhieu >= ngayStart && p.NgayPhieu <= ngayEnd && p.ThanhToan == 1 && p.TenCongTy_ID == congty_id
                         select new { TenHH = d.TenDnMH, ThanhTien = c.ThanhTienBan }
                             into ThanhTienQty
                         group ThanhTienQty by ThanhTienQty.TenHH into pg
                         let totalQuantity = pg.Sum(prod => prod.ThanhTien)
                         orderby totalQuantity descending
                         select pg.Key).Take(10);

                //Phan thanh tien
                var thanhtien = (from c in db.CT_XuatHangCF
                                 join p in db.Ph_XuatCF on c.PhNhapXuat_ID equals p.PhNhapXuat_ID
                                 join d in db.DmHangHoaCF on c.HH_ID equals d.HH_ID
                                 where p.NgayPhieu >= ngayStart && p.NgayPhieu <= ngayEnd && p.ThanhToan == 1 && p.TenCongTy_ID == congty_id
                                 select new { TenHH = d.TenHH, ThanhTien = c.ThanhTienBan }
                                 into ThanhTienQty
                                 group ThanhTienQty by ThanhTienQty.TenHH into pg
                                 let totalQuantity = pg.Sum(prod => prod.ThanhTien)
                                 orderby totalQuantity descending
                                 select totalQuantity).Take(10)
                      .Concat(from c in db.CT_XuatHangCF
                              join p in db.Ph_XuatCF on c.PhNhapXuat_ID equals p.PhNhapXuat_ID
                              join d in db.DmDinhNghiaMHCF on c.DnMH_ID equals d.DnMH_ID
                              where p.NgayPhieu >= ngayStart && p.NgayPhieu <= ngayEnd && p.ThanhToan == 1 && p.TenCongTy_ID == congty_id
                              select new { TenHH = d.TenDnMH, ThanhTien = c.ThanhTienBan }
                                 into ThanhTienQty
                              group ThanhTienQty by ThanhTienQty.TenHH into pg
                              let totalQuantity = pg.Sum(prod => prod.ThanhTien)
                              orderby totalQuantity descending
                              select totalQuantity).Take(10);

                //return Json(list, JsonRequestBehavior.AllowGet);
                return Json(new { TenHH = tenhh, ThanhTien = thanhtien }, JsonRequestBehavior.AllowGet);
               
            }
            else
            {
                
            }
            return Json(true, JsonRequestBehavior.AllowGet);

        }
        public JsonResult GetBestSellerSoLuong()
        {
            var ngayStart = DateTime.Today.AddDays(-6);
            var ngayEnd = DateTime.Today;
            var userid = Convert.ToString(System.Web.HttpContext.Current.Session[CommonConstants.USER_SESSION]);
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);

            var quyenAdmin = db.AccessRightCF.Count(x => x.QuyenID == "FrmBaoCaoDoanhThu" && x.TaiKhoan == userid && x.Xem == true);
            var quyenNhanVien = db.AccessRightCF.Count(x => x.QuyenID == "FrmBaoCaoDoanhThu" && x.TaiKhoan == userid && x.Xem == true);
            if (quyenAdmin == 1 || quyenNhanVien == 1)
            {
               var listTen = (from d in db.DmHangHoaCF
                           join c in db.CT_XuatHangCF on d.HH_ID equals c.HH_ID
                           join p in db.Ph_XuatCF on c.PhNhapXuat_ID equals p.PhNhapXuat_ID
                           where p.NgayPhieu >= ngayStart && p.NgayPhieu <= ngayEnd && p.ThanhToan == 1 && p.TenCongTy_ID == congty_id
                              select new { TenHH = d.TenHH, SoLuong = c.SoLuong } into productQty
                           group productQty by productQty.TenHH into pg
                           let totalQuantity = pg.Sum(prod => prod.SoLuong)
                           orderby totalQuantity descending
                           select pg.Key).Take(10)
                .Concat(from d in db.DmDinhNghiaMHCF
                        join c in db.CT_XuatHangCF on d.DnMH_ID equals c.DnMH_ID
                        join p in db.Ph_XuatCF on c.PhNhapXuat_ID equals p.PhNhapXuat_ID
                        where p.NgayPhieu >= ngayStart && p.NgayPhieu <= ngayEnd && p.ThanhToan == 1 && p.TenCongTy_ID == congty_id
                        select new { TenHH = d.TenDnMH, SoLuong = c.SoLuong } into productQty
                        group productQty by productQty.TenHH into pg
                        let totalQuantity = pg.Sum(prod => prod.SoLuong)
                        orderby totalQuantity descending
                        select pg.Key).Take(10);

                var listSL = (from d in db.DmHangHoaCF
                              join c in db.CT_XuatHangCF on d.HH_ID equals c.HH_ID
                              join p in db.Ph_XuatCF on c.PhNhapXuat_ID equals p.PhNhapXuat_ID
                              where p.NgayPhieu >= ngayStart && p.NgayPhieu <= ngayEnd && p.ThanhToan == 1 && p.TenCongTy_ID == congty_id
                              select new { TenHH = d.TenHH, SoLuong = c.SoLuong } into productQty
                              group productQty by productQty.TenHH into pg
                              let totalQuantity = pg.Sum(prod => prod.SoLuong)
                              orderby totalQuantity descending
                              select totalQuantity).Take(10)
                     .Concat(from d in db.DmDinhNghiaMHCF
                             join c in db.CT_XuatHangCF on d.DnMH_ID equals c.DnMH_ID
                             join p in db.Ph_XuatCF on c.PhNhapXuat_ID equals p.PhNhapXuat_ID
                             where p.NgayPhieu >= ngayStart && p.NgayPhieu <= ngayEnd && p.ThanhToan == 1 && p.TenCongTy_ID == congty_id
                             select new { TenHH = d.TenDnMH, SoLuong = c.SoLuong } into productQty
                             group productQty by productQty.TenHH into pg
                             let totalQuantity = pg.Sum(prod => prod.SoLuong)
                             orderby totalQuantity descending
                             select totalQuantity).Take(10);
            
                //return Json(list, JsonRequestBehavior.AllowGet);
                return Json(new { TenHH = listTen, SoLuong = listSL }, JsonRequestBehavior.AllowGet);
            
            }
            else
            {
                

            }

            return Json(true, JsonRequestBehavior.AllowGet);
        }
        public JsonResult Top10SoLuongChart(decimal TopSL01, decimal TopSL02, decimal TopSL03, decimal TopSL04, decimal TopSL05, decimal TopSL06, decimal TopSL07, decimal TopSL08, decimal TopSL09, decimal TopSL10)
        {
            TopSL01 = Math.Round(TopSL01, 0);
            TopSL02 = Math.Round(TopSL02, 0);
            TopSL03 = Math.Round(TopSL03, 0);
            TopSL04 = Math.Round(TopSL04, 0);
            TopSL05 = Math.Round(TopSL05, 0);
            TopSL06 = Math.Round(TopSL06, 0);
            TopSL07 = Math.Round(TopSL07, 0);
            TopSL08 = Math.Round(TopSL08, 0);
            TopSL09 = Math.Round(TopSL09, 0);
            TopSL10 = Math.Round(TopSL10, 0);
            List<object> iData = new List<object>();
            //Creating sample data  
            DataTable dt = new DataTable();
            //dt.Columns.Add("Expense", System.Type.GetType("System.String"));
            dt.Columns.Add("ExpenseValues", System.Type.GetType("System.Int32"));

            //For Education
            DataRow dr = dt.NewRow();
            dr["ExpenseValues"] = TopSL01;
            dt.Rows.Add(dr);

            //For Lodging
            dr = dt.NewRow();
            dr["ExpenseValues"] = TopSL02;
            dt.Rows.Add(dr);

            //For Fooding
            dr = dt.NewRow();
            dr["ExpenseValues"] = TopSL03;
            dt.Rows.Add(dr);

            //For Travelling
            dr = dt.NewRow();
            dr["ExpenseValues"] = TopSL04;
            dt.Rows.Add(dr);

            //For Communication
            dr = dt.NewRow();
            dr["ExpenseValues"] = TopSL05;
            dt.Rows.Add(dr);

            //For Others
            dr = dt.NewRow();
            dr["ExpenseValues"] = TopSL06;
            dt.Rows.Add(dr);

            //For Others
            dr = dt.NewRow();
            dr["ExpenseValues"] = TopSL07;
            dt.Rows.Add(dr);

            //For Others
            dr = dt.NewRow();
            dr["ExpenseValues"] = TopSL08;
            dt.Rows.Add(dr);

            //For Others
            dr = dt.NewRow();
            dr["ExpenseValues"] = TopSL09;
            dt.Rows.Add(dr);

            //For Others
            dr = dt.NewRow();
            dr["ExpenseValues"] = TopSL10;
            dt.Rows.Add(dr);

            //Looping and extracting each DataColumn to List<Object>  
            foreach (DataColumn dc in dt.Columns)
            {
                List<object> x = new List<object>();
                x = (from DataRow drr in dt.Rows select drr[dc.ColumnName]).ToList();
                iData.Add(x);
            }
            ViewBag.ChartData = iData;
            //Source data returned as JSON  
            return Json(iData, JsonRequestBehavior.AllowGet);
        }
        public string CallSessionUser()
        {
            //ViewBag.admiUser = Session["Admin_user"];
            string user_id = Convert.ToString(System.Web.HttpContext.Current.Session[CommonConstants.USER_SESSION]);
            return user_id;
        }
        public ActionResult GetListNhatKyByDate(DateTime ngayStart, DateTime ngayEnd)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);

            var list = (from p in db.DmNhatKyNDCF
                        where p.NgayGio >= ngayStart
                        where p.NgayGio <= ngayEnd
                        where p.TenCongTy_ID == congty_id
                        where p.NguoiDung_ID != "SysAdmin"
                        orderby p.NgayGio descending
                        select new
                        {
                            id = p.NhatKyND_ID,
                            userId = p.NguoiDung_ID,
                            chucnang = p.ChucNang,
                            ngaygio = p.NgayGio,
                            thaotac = p.ThaoTac,
                            thamchieu = p.ThamChieu,
                            thamso = p.ThamSo,
                            sotien = p.SoTien,
                            phut = SqlFunctions.DateDiff("minute", p.NgayGio, ngayEnd),
                            gio = SqlFunctions.DateDiff("hour", p.NgayGio, ngayEnd),
                            ngay = SqlFunctions.DateDiff("day", p.NgayGio, ngayEnd)


                        }).Take(20).ToList();

            //return Json(list, JsonRequestBehavior.AllowGet);

            ViewBag.DataPoints = list;
            return Json(new { data = list }, JsonRequestBehavior.AllowGet);

        }
    }
}