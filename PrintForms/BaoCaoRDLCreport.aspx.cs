using Microsoft.Reporting.WebForms;
using MyDatabase;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebAppMVC.ClassCommon;

namespace WebAppMVC.PrintForms
{
    public partial class BaoCaoRDLCreport : System.Web.UI.Page
    {
        private MyDB db = new MyDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                //var list = db.DmHangHoaCF.ToList();

                //ReportViewer1.Reset();
                //ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Reports/Report1.rdlc");
                //ReportViewer1.ProcessingMode = ProcessingMode.Local;
                //ReportViewer1.LocalReport.DataSources.Clear();
                //ReportDataSource rdc = new ReportDataSource("DmHangHoa", list);
                //ReportViewer1.LocalReport.DataSources.Add(rdc);
                //ReportViewer1.AsyncRendering = false; // Force inline/remove iFrame
                //ReportViewer1.SizeToReportContent = true; // Fit report to screen
                //ReportViewer1.ZoomMode = ZoomMode.PageWidth;
                //ReportViewer1.LocalReport.Refresh();
                //ReportViewer1.DataBind();
                // dung thu proceduce
                if (Session["stt"].ToString() == "1")
                {
                    BaoCaoDoanhThu();
                    return;
                }
                else if (Session["stt"].ToString() == "2")
                {
                    BaoCaoDoanhThuNgay();
                    return;

                }
                else if (Session["stt"].ToString() == "3")
                {
                    BaoCaoDoanhThuTheoTaiKhoanAll();
                    return;

                }
                else if (Session["stt"].ToString() == "4")
                {
                    BaoCaoDoanhThuTheoTaiKhoan();
                    return;

                }

            }

        }
        void BaoCaoDoanhThu()
        {
            //Phần khai báo tên đơn vị
            //chu y trường tên congty va dia chi so dien thoại phải có không đc để trống
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var itemDv = db.DmCongTyCF.Where(x => x.CongTy_ID == congty_id).FirstOrDefault();

            var ngaystart = Session["ngaystart"];
            var ngayend = Session["ngayend"];
            var tienphucvu = Session["tienphucvu"];
            var tienphatsinh = Session["tienphatsinh"];
            var tienthue = Session["tienthue"];
            var tiengiamgia = Session["tiengiamgia"];
            //hien thi ngay tren phieu
            var ngaystart1 = Convert.ToDateTime(ngaystart).ToString("dd/MM/yyyy");
            var ngayend1 = Convert.ToDateTime(ngayend).ToString("dd/MM/yyyy");


            ReportViewer1.Reset();
            DataTable dt = GetSPBaoCaoDoanhThu();
            //ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Reports/BaoCaoDoanhThu.rdlc");
            ReportViewer1.LocalReport.ReportEmbeddedResource = "WebAppMVC.Reports.BaoCaoDoanhThu.rdlc";
            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportDataSource datasource = new ReportDataSource("BaoCaoDoanhThu", dt);

            ReportParameter[] parameters = new ReportParameter[8];
            parameters[0] = new ReportParameter("NgayStart", ngaystart1, true);
            parameters[1] = new ReportParameter("NgayEnd", ngayend1, true);
            parameters[2] = new ReportParameter("TenCongTy", itemDv.TenCongTy, true);
            parameters[3] = new ReportParameter("DiaChi", itemDv.DiaChi, true);
            parameters[4] = new ReportParameter("DienThoai", itemDv.DienThoai, true);
            //phan cuoi form
            parameters[5] = new ReportParameter("TongTienPhucVu", Convert.ToString(tienphucvu), true);
            parameters[6] = new ReportParameter("TongTienPhatSinh", Convert.ToString(tienphatsinh), true);
            parameters[7] = new ReportParameter("TongTienThue", Convert.ToString(tienthue), true);
            ReportViewer1.LocalReport.SetParameters(parameters);

            ReportViewer1.LocalReport.DataSources.Add(datasource);
            ReportViewer1.AsyncRendering = false; // Force inline/remove iFrame
            ReportViewer1.SizeToReportContent = true; // Fit report to screen
            //ReportViewer1.ZoomMode = ZoomMode.PageWidth;
            ReportViewer1.DataBind();
            ReportViewer1.LocalReport.Refresh();
        }
        void BaoCaoDoanhThuNgay()
        {
            //Phần khai báo tên đơn vị
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var itemDv = db.DmCongTyCF.Where(x => x.CongTy_ID == congty_id).FirstOrDefault();

            var ngaystart = Session["ngaystart"];
            var ngayend = Session["ngayend"];
            var tienphucvu = Session["tienphucvu"];
            var tienphatsinh = Session["tienphatsinh"];
            var tienthue = Session["tienthue"];
            var tiengiamgia = Session["tiengiamgia"];
            //hien thi ngay tren phieu
            var ngaystart1 = Convert.ToDateTime(ngaystart).ToString("dd/MM/yyyy");
            var ngayend1 = Convert.ToDateTime(ngayend).ToString("dd/MM/yyyy");


            ReportViewer1.Reset();
            DataTable dt = GetSPBaoCaoDoanhThuNgay();
            //ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Reports/BaoCaoDoanhThu.rdlc");
            ReportViewer1.LocalReport.ReportEmbeddedResource = "WebAppMVC.Reports.BaoCaoDoanhThuTheoNgay.rdlc";
            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportDataSource datasource = new ReportDataSource("BaoCaoDoanhThuTheoNgay", dt);

            ReportParameter[] parameters = new ReportParameter[8];
            parameters[0] = new ReportParameter("NgayStart", ngaystart1, true);
            parameters[1] = new ReportParameter("NgayEnd", ngayend1, true);
            parameters[2] = new ReportParameter("TenCongTy", itemDv.TenCongTy, true);
            parameters[3] = new ReportParameter("DiaChi", itemDv.DiaChi, true);
            parameters[4] = new ReportParameter("DienThoai", itemDv.DienThoai, true);
            //phan cuoi form
            parameters[5] = new ReportParameter("TongTienPhucVu", Convert.ToString(tienphucvu), true);
            parameters[6] = new ReportParameter("TongTienPhatSinh", Convert.ToString(tienphatsinh), true);
            parameters[7] = new ReportParameter("TongTienThue", Convert.ToString(tienthue), true);
            ReportViewer1.LocalReport.SetParameters(parameters);

            ReportViewer1.LocalReport.DataSources.Add(datasource);
            ReportViewer1.AsyncRendering = false; // Force inline/remove iFrame
            ReportViewer1.SizeToReportContent = true; // Fit report to screen
            //ReportViewer1.ZoomMode = ZoomMode.PageWidth;
            ReportViewer1.DataBind();
            ReportViewer1.LocalReport.Refresh();
        }
        void BaoCaoDoanhThuTheoTaiKhoanAll()
        {
            //Phần khai báo tên đơn vị
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var itemDv = db.DmCongTyCF.Where(x => x.CongTy_ID == congty_id).FirstOrDefault();

            var ngaystart = Session["ngaystart"];
            var ngayend = Session["ngayend"];
            var tienphucvu = Session["tienphucvu"];
            var tienphatsinh = Session["tienphatsinh"];
            var tienthue = Session["tienthue"];
            var tiengiamgia = Session["tiengiamgia"];
            //hien thi ngay tren phieu
            var ngaystart1 = Convert.ToDateTime(ngaystart).ToString("dd/MM/yyyy");
            var ngayend1 = Convert.ToDateTime(ngayend).ToString("dd/MM/yyyy");


            ReportViewer1.Reset();
            DataTable dt = GetSPBaoCaoDoanhThuTheoTaiKhoanAll();
            //ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Reports/BaoCaoDoanhThu.rdlc");
            ReportViewer1.LocalReport.ReportEmbeddedResource = "WebAppMVC.Reports.BaoCaoDoanhThuTheoTaiKhoan.rdlc";
            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportDataSource datasource = new ReportDataSource("BaoCaoDoanhThuTheoTaiKhoan", dt);

            ReportParameter[] parameters = new ReportParameter[9];
            parameters[0] = new ReportParameter("NgayStart", ngaystart1, true);
            parameters[1] = new ReportParameter("NgayEnd", ngayend1, true);
            parameters[2] = new ReportParameter("TenCongTy", itemDv.TenCongTy, true);
            parameters[3] = new ReportParameter("DiaChi", itemDv.DiaChi, true);
            parameters[4] = new ReportParameter("DienThoai", itemDv.DienThoai, true);
            //phan cuoi form
            parameters[5] = new ReportParameter("TongTienPhucVu", Convert.ToString(tienphucvu), true);
            parameters[6] = new ReportParameter("TongTienPhatSinh", Convert.ToString(tienphatsinh), true);
            parameters[7] = new ReportParameter("TongTienThue", Convert.ToString(tienthue), true);
            parameters[8] = new ReportParameter("TongTienGiamGia", Convert.ToString(tiengiamgia), true);
            ReportViewer1.LocalReport.SetParameters(parameters);

            ReportViewer1.LocalReport.DataSources.Add(datasource);
            ReportViewer1.AsyncRendering = false; // Force inline/remove iFrame
            ReportViewer1.SizeToReportContent = true; // Fit report to screen
            //ReportViewer1.ZoomMode = ZoomMode.PageWidth;
            ReportViewer1.DataBind();
            ReportViewer1.LocalReport.Refresh();
        }
        void BaoCaoDoanhThuTheoTaiKhoan()
        {
            //Phần khai báo tên đơn vị
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var itemDv = db.DmCongTyCF.Where(x => x.CongTy_ID == congty_id).FirstOrDefault();

            var ngaystart = Session["ngaystart"];
            var ngayend = Session["ngayend"];
            var tienphucvu = Session["tienphucvu"];
            var tienphatsinh = Session["tienphatsinh"];
            var tienthue = Session["tienthue"];
            var tiengiamgia = Session["tiengiamgia"];
            //hien thi ngay tren phieu
            var ngaystart1 = Convert.ToDateTime(ngaystart).ToString("dd/MM/yyyy");
            var ngayend1 = Convert.ToDateTime(ngayend).ToString("dd/MM/yyyy");


            ReportViewer1.Reset();
            DataTable dt = GetSPBaoCaoDoanhThuTheoTaiKhoan();
            //ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Reports/BaoCaoDoanhThu.rdlc");
            ReportViewer1.LocalReport.ReportEmbeddedResource = "WebAppMVC.Reports.BaoCaoDoanhThuTheoTaiKhoan.rdlc";
            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportDataSource datasource = new ReportDataSource("BaoCaoDoanhThuTheoTaiKhoan", dt);

            ReportParameter[] parameters = new ReportParameter[9];
            parameters[0] = new ReportParameter("NgayStart", ngaystart1, true);
            parameters[1] = new ReportParameter("NgayEnd", ngayend1, true);
            parameters[2] = new ReportParameter("TenCongTy", itemDv.TenCongTy, true);
            parameters[3] = new ReportParameter("DiaChi", itemDv.DiaChi, true);
            parameters[4] = new ReportParameter("DienThoai", itemDv.DienThoai, true);
            //phan cuoi form
            parameters[5] = new ReportParameter("TongTienPhucVu", Convert.ToString(tienphucvu), true);
            parameters[6] = new ReportParameter("TongTienPhatSinh", Convert.ToString(tienphatsinh), true);
            parameters[7] = new ReportParameter("TongTienThue", Convert.ToString(tienthue), true);
            parameters[8] = new ReportParameter("TongTienGiamGia", Convert.ToString(tiengiamgia), true);
            ReportViewer1.LocalReport.SetParameters(parameters);

            ReportViewer1.LocalReport.DataSources.Add(datasource);
            ReportViewer1.AsyncRendering = false; // Force inline/remove iFrame
            ReportViewer1.SizeToReportContent = true; // Fit report to screen
            //ReportViewer1.ZoomMode = ZoomMode.PageWidth;
            ReportViewer1.DataBind();
            ReportViewer1.LocalReport.Refresh();
        }
        private DataTable GetSPBaoCaoDoanhThu()
        {
            DataTable ResultsTable = new DataTable();
            //Phần khai báo tên đơn vị
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var itemDv = db.DmCongTyCF.Where(x => x.CongTy_ID == congty_id).FirstOrDefault();

            var ngaystart = Session["ngaystart"];
            var ngayend = Session["ngayend"];
          
            try
            {
                SqlCommand cmd = new SqlCommand("RpBaoCaoTongHopDoanhThuCF", SqlDataProvider.GetConnection());
                

                cmd.Parameters.AddWithValue("@NgayStart", ngaystart);
                cmd.Parameters.AddWithValue("@NgayEnd", ngayend);
                cmd.Parameters.AddWithValue("@CongTy_ID", congty_id);
            
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
        private DataTable GetSPBaoCaoDoanhThuNgay()
        {
            DataTable ResultsTable = new DataTable();
            //Phần khai báo tên đơn vị
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var itemDv = db.DmCongTyCF.Where(x => x.CongTy_ID == congty_id).FirstOrDefault();

            var ngaystart = Session["ngaystart"];
            var ngayend = Session["ngayend"];
         
            try
            {
                SqlCommand cmd = new SqlCommand("BaoCaoDoanhThuTheoNgayCF", SqlDataProvider.GetConnection());


                cmd.Parameters.AddWithValue("@NgayStart", ngaystart);
                cmd.Parameters.AddWithValue("@NgayEnd", ngayend);
                cmd.Parameters.AddWithValue("@CongTy_ID", congty_id);

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
        private DataTable GetSPBaoCaoDoanhThuTheoTaiKhoanAll()
        {
            DataTable ResultsTable = new DataTable();
            //Phần khai báo tên đơn vị
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var itemDv = db.DmCongTyCF.Where(x => x.CongTy_ID == congty_id).FirstOrDefault();

            var ngaystart = Session["ngaystart"];
            var ngayend = Session["ngayend"];

            try
            {
                SqlCommand cmd = new SqlCommand("TongHopXuatCF", SqlDataProvider.GetConnection());


                cmd.Parameters.AddWithValue("@NgayStart", ngaystart);
                cmd.Parameters.AddWithValue("@NgayEnd", ngayend);
                cmd.Parameters.AddWithValue("@CongTy_ID", congty_id);

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
        private DataTable GetSPBaoCaoDoanhThuTheoTaiKhoan()
        {
            DataTable ResultsTable = new DataTable();
            //Phần khai báo tên đơn vị
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var itemDv = db.DmCongTyCF.Where(x => x.CongTy_ID == congty_id).FirstOrDefault();

            var ngaystart = Session["ngaystart"];
            var ngayend = Session["ngayend"];
            var userid = Session["userid"];
            try
            {
                SqlCommand cmd = new SqlCommand("TongHopXuatTheoNhanVienCF", SqlDataProvider.GetConnection());


                cmd.Parameters.AddWithValue("@NgayStart", ngaystart);
                cmd.Parameters.AddWithValue("@NgayEnd", ngayend);
                cmd.Parameters.AddWithValue("@CongTy_ID", congty_id);
                cmd.Parameters.AddWithValue("@UserID", userid);
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
        private DataTable GetSPDmHangHoa()
        {
            DataTable ResultsTable = new DataTable();
            ////Phần khai báo tên đơn vị
            //var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            //var itemDv = db.DmCongTyCF.Where(x => x.CongTy_ID == congty_id).FirstOrDefault();

            //var ngaystart = Session["ngaystart"];
            //var ngayend = Session["ngayend"];
            //var tienphucvu = Session["tienphucvu"];
            //var tienphatsinh = Session["tienphatsinh"];
            //var tienthue = Session["tienthue"];
            //var tiengiamgia = Session["tiengiamgia"];
            //try
            //{
                SqlCommand cmd = new SqlCommand("RpDanhMucHangHoaCF", SqlDataProvider.GetConnection());
                cmd.CommandType = CommandType.StoredProcedure;

                //cmd.Parameters.AddWithValue("@NgayStar", ngaystart);
                //cmd.Parameters.AddWithValue("@NgayEnd", ngayend);
                //cmd.Parameters.AddWithValue("@CongTy_ID", congty_id);

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(ResultsTable);
            //}

            //catch (Exception ex)
            //{
            //    Response.Write(ex.ToString());
            //}

            return ResultsTable;
        }
    }
}