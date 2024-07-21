using Microsoft.Reporting.WebForms;
using MyDatabase;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using WebAppMVC.ClassCommon;

namespace WebAppMVC.PrintForms
{
    public partial class InRDLCPhieu : System.Web.UI.Page
    {
        private MyDB db = new MyDB();
       
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }
        protected void Page_Init(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //In phieu 
                if (Session["sttp"].ToString() == "1")
                {
                    InPhieuXuat();
                    return;
                }
                else if (Session["sttp"].ToString() == "2")
                {
                    InPhieuNhaBep();
                    return;
                }
                else if (Session["sttp"].ToString() == "3")
                {
                    InPhieuThu();
                    return;
                }
            }
        }
        void InPhieuXuat()
        {
            //Phần khai báo tên đơn vị
            //chu y trường tên congty va dia chi so dien thoại phải có không đc để trống
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var itemDv = db.DmCongTyCF.Where(x => x.CongTy_ID == congty_id).FirstOrDefault();
            var pagesize = Session["PageSizePX"].ToString();
            ReportViewer1.Reset();
            DataTable dt = GetSPPhieuXuat();
            //ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Reports/BaoCaoDoanhThu.rdlc");
            if (pagesize == "KhoGiay80")
            {
                ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Reports/PhieuThanhToan80.rdlc");
                //ReportViewer1.LocalReport.ReportEmbeddedResource = "WebAppMVC.Reports.PhieuThanhToan80.rdlc";
            }
            else if (pagesize == "KhoGiay80_01")
            {
                ReportViewer1.LocalReport.ReportEmbeddedResource = "WebAppMVC.Reports.PhieuThanhToan80_01.rdlc";
            }
            else if (pagesize == "KhoGiay80_02")
            {
                ReportViewer1.LocalReport.ReportEmbeddedResource = "WebAppMVC.Reports.PhieuThanhToan80_02.rdlc";
            }
            else if (pagesize == "KhoGiay58")
            {
                ReportViewer1.LocalReport.ReportEmbeddedResource = "WebAppMVC.Reports.PhieuThanhToan58.rdlc";
            }
            else if (pagesize == "KhoGiay58_01")
            {
                ReportViewer1.LocalReport.ReportEmbeddedResource = "WebAppMVC.Reports.PhieuThanhToan58_01.rdlc";
            }
            else
            {
                ReportViewer1.LocalReport.ReportEmbeddedResource = "WebAppMVC.Reports.PhieuThanhToan58_02.rdlc";
            }    
               
            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportDataSource datasource = new ReportDataSource("PhieuThanhToan", dt);

            ReportParameter[] parameters = new ReportParameter[3];
            parameters[0] = new ReportParameter("TenCongTy", itemDv.TenCongTy,true);
            parameters[1] = new ReportParameter("DiaChi", itemDv.DiaChi, true);
            parameters[2] = new ReportParameter("DienThoai", itemDv.DienThoai, true);
               
            ReportViewer1.LocalReport.SetParameters(parameters);

            ReportViewer1.LocalReport.DataSources.Add(datasource);
            ReportViewer1.AsyncRendering = false; // Force inline/remove iFrame
            ReportViewer1.SizeToReportContent = true; // Fit report to screen
                                                      //ReportViewer1.ZoomMode = ZoomMode.PageWidth;
            ReportViewer1.DataBind();
            ReportViewer1.LocalReport.Refresh();                                                                       //ReportViewer1.DataBind();
            
            ///ReportViewer1.LocalReport.Print(); chi dung dc trong winform voi nut in ngay


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
        void InPhieuNhaBep()
        {
            var pagesize = Session["PageSizeB"].ToString();
            ReportViewer1.Reset();
            DataTable dt = GetSPPhieuInNhaBep();
            //ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Reports/BaoCaoDoanhThu.rdlc");
            if (pagesize == "KhoGiay80")
            {
                ReportViewer1.LocalReport.ReportEmbeddedResource = "WebAppMVC.Reports.PhieuInNhaBep80cm.rdlc";
            }
            else
            {
                ReportViewer1.LocalReport.ReportEmbeddedResource = "WebAppMVC.Reports.PhieuInNhaBep58cm.rdlc";
            }

            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportDataSource datasource = new ReportDataSource("PhieuInNhaBep", dt);
            ReportViewer1.LocalReport.DataSources.Add(datasource);
            ReportViewer1.AsyncRendering = false; // Force inline/remove iFrame
            ReportViewer1.SizeToReportContent = true; // Fit report to screen
                                                      //ReportViewer1.ZoomMode = ZoomMode.PageWidth;
            ReportViewer1.DataBind();
            ReportViewer1.LocalReport.Refresh();
           
        }
        private DataTable GetSPPhieuInNhaBep()
        {
            DataTable ResultsTable = new DataTable();
            var id = Convert.ToInt32(Session["PhieuInOrder_id"]);

            try
            {
                SqlCommand cmd = new SqlCommand("PhieuInBepWebCF", SqlDataProvider.GetConnection());
                cmd.Parameters.AddWithValue("@ID", id);

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

        void InPhieuThu()
        {
            //Phần khai báo tên đơn vị
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var itemDv = db.DmCongTyCF.Where(x => x.CongTy_ID == congty_id).FirstOrDefault();
            var pagesize = Session["PageSizePT"].ToString();
            var id = Convert.ToInt32(Session["PhieuThu_id"]);
            ReportViewer1.Reset();
            DataTable dt = GetSPPhieuThu();
            //ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Reports/BaoCaoDoanhThu.rdlc");
            if (pagesize == "KhoGiayA5")
            {
                //ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Reports/PhieuThuA5.rdlc");
                ReportViewer1.LocalReport.ReportEmbeddedResource = "WebAppMVC.Reports.PhieuThuA5.rdlc";
                ReportViewer1.ProcessingMode = ProcessingMode.Local;
                ReportViewer1.LocalReport.DataSources.Clear();
                ReportDataSource datasource = new ReportDataSource("PhieuThuDataSet1", dt);
                //Phan bang tien
                var itemPhieu = db.Ph_ThuCF.Where(x => x.ThuChi_ID == id).FirstOrDefault();
                ReportParameter[] parameters = new ReportParameter[4];
                parameters[0] = new ReportParameter("TenCongTy", itemDv.TenCongTy, true);
                parameters[1] = new ReportParameter("DiaChi", itemDv.DiaChi, true);
                parameters[2] = new ReportParameter("DienThoai", itemDv.DienThoai, true);
                parameters[3] = new ReportParameter("BangChu", ThienPhong.DecimalToString(Convert.ToDecimal(itemPhieu.SoTien)), true);
                ReportViewer1.LocalReport.SetParameters(parameters);

                ReportViewer1.LocalReport.DataSources.Add(datasource);
                ReportViewer1.AsyncRendering = false; // Force inline/remove iFrame
                ReportViewer1.SizeToReportContent = true; // Fit report to screen
                                                          //ReportViewer1.ZoomMode = ZoomMode.PageWidth;
                ReportViewer1.DataBind();
                ReportViewer1.LocalReport.Refresh();
            }
            else if (pagesize == "KhoGiay80")
            {
                ReportViewer1.LocalReport.ReportEmbeddedResource = "WebAppMVC.Reports.PhieuThu80.rdlc";
                ReportViewer1.ProcessingMode = ProcessingMode.Local;
                ReportViewer1.LocalReport.DataSources.Clear();
                ReportDataSource datasource = new ReportDataSource("PhieuThuDataSet1", dt);

                ReportParameter[] parameters = new ReportParameter[3];
                parameters[0] = new ReportParameter("TenCongTy", itemDv.TenCongTy, true);
                parameters[1] = new ReportParameter("DiaChi", itemDv.DiaChi, true);
                parameters[2] = new ReportParameter("DienThoai", itemDv.DienThoai, true);

                ReportViewer1.LocalReport.SetParameters(parameters);

                ReportViewer1.LocalReport.DataSources.Add(datasource);
                ReportViewer1.AsyncRendering = false; // Force inline/remove iFrame
                ReportViewer1.SizeToReportContent = true; // Fit report to screen
                                                          //ReportViewer1.ZoomMode = ZoomMode.PageWidth;
                ReportViewer1.DataBind();
                ReportViewer1.LocalReport.Refresh();
            }
            else
            {
                ReportViewer1.LocalReport.ReportEmbeddedResource = "WebAppMVC.Reports.PhieuThu58.rdlc";
                ReportViewer1.ProcessingMode = ProcessingMode.Local;
                ReportViewer1.LocalReport.DataSources.Clear();
                ReportDataSource datasource = new ReportDataSource("PhieuThuDataSet1", dt);

                ReportParameter[] parameters = new ReportParameter[3];
                parameters[0] = new ReportParameter("TenCongTy", itemDv.TenCongTy, true);
                parameters[1] = new ReportParameter("DiaChi", itemDv.DiaChi, true);
                parameters[2] = new ReportParameter("DienThoai", itemDv.DienThoai, true);

                ReportViewer1.LocalReport.SetParameters(parameters);

                ReportViewer1.LocalReport.DataSources.Add(datasource);
                ReportViewer1.AsyncRendering = false; // Force inline/remove iFrame
                ReportViewer1.SizeToReportContent = true; // Fit report to screen
                                                          //ReportViewer1.ZoomMode = ZoomMode.PageWidth;
                ReportViewer1.DataBind();
                ReportViewer1.LocalReport.Refresh();
            }

                                                                            //ReportViewer1.DataBind();

            ///ReportViewer1.LocalReport.Print(); chi dung dc trong winform voi nut in ngay


        }
        private DataTable GetSPPhieuThu()
        {
            DataTable ResultsTable = new DataTable();
            var id = Convert.ToInt32(Session["PhieuThu_id"]);

            try
            {
                SqlCommand cmd = new SqlCommand("PhieuThuCF", SqlDataProvider.GetConnection());
                cmd.Parameters.AddWithValue("@SoPhThuChi", id);

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
        protected void InNgay(object sender, EventArgs e)
        {
            //Phần khai báo tên đơn vị
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var itemDv = db.DmCongTyCF.Where(x => x.CongTy_ID == congty_id).FirstOrDefault();
            var pagesize = Session["PageSizePX"].ToString();
            ReportViewer1.Reset();
            DataTable dt = GetSPPhieuXuat();
            //ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Reports/BaoCaoDoanhThu.rdlc");
            if (pagesize == "KhoGiay80")
            {
                ReportViewer1.LocalReport.ReportEmbeddedResource = "WebAppMVC.Reports.PhieuThanhToan80.rdlc";
            }
            else if (pagesize == "KhoGiay80_01")
            {
                ReportViewer1.LocalReport.ReportEmbeddedResource = "WebAppMVC.Reports.PhieuThanhToan80_01.rdlc";
            }
            else if (pagesize == "KhoGiay80_02")
            {
                ReportViewer1.LocalReport.ReportEmbeddedResource = "WebAppMVC.Reports.PhieuThanhToan80_02.rdlc";
            }
            else if (pagesize == "KhoGiay58")
            {
                ReportViewer1.LocalReport.ReportEmbeddedResource = "WebAppMVC.Reports.PhieuThanhToan58.rdlc";
            }
            else if (pagesize == "KhoGiay58_01")
            {
                ReportViewer1.LocalReport.ReportEmbeddedResource = "WebAppMVC.Reports.PhieuThanhToan58_01.rdlc";
            }
            else
            {
                ReportViewer1.LocalReport.ReportEmbeddedResource = "WebAppMVC.Reports.PhieuThanhToan58_02.rdlc";
            }

            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportDataSource datasource = new ReportDataSource("PhieuThanhToan", dt);

            ReportParameter[] parameters = new ReportParameter[3];
            parameters[0] = new ReportParameter("TenCongTy", itemDv.TenCongTy, true);
            parameters[1] = new ReportParameter("DiaChi", itemDv.DiaChi, true);
            parameters[2] = new ReportParameter("DienThoai", itemDv.DienThoai, true);

            ReportViewer1.LocalReport.SetParameters(parameters);

            ReportViewer1.LocalReport.DataSources.Add(datasource);
            ReportViewer1.AsyncRendering = false; // Force inline/remove iFrame
            ReportViewer1.SizeToReportContent = true; // Fit report to screen
            this.ReportViewer1.LocalReport.Print();
        }
       

    }
}