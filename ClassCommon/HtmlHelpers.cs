using MyDatabase;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Common;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebAppMVC.ClassCommon
{
    public static class HtmlHelpers
    {   // ten may chu in slq server
        private static MyDB db = new MyDB();

        public static IHtmlString RenderDataSource(this HtmlHelper htmlHelper)
        {
            var cnstr = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;
            var builder = new DbConnectionStringBuilder();
            builder.ConnectionString = cnstr;
            return new MvcHtmlString(builder["Data Source"].ToString());
        }
        // name database in slq server
        public static IHtmlString RenderDataName(this HtmlHelper htmlHelper)
        {
            var cnstr = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;
            var builder = new DbConnectionStringBuilder();
            builder.ConnectionString = cnstr;
            return new MvcHtmlString(builder["initial catalog"].ToString());
        }
        //Ten cong ty chi nhanh tung cong ty luc login
        public static IHtmlString RenderCompanyLogin(this HtmlHelper htmlHelper)
        {
            var id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            //var id = Convert.ToInt32(System.Web.HttpContext.Current.Session["congty_id"]);
            try
            {
                var items = db.DmCongTyCF.Where(x => x.CongTy_ID == id).FirstOrDefault();

                var TenCty = items.TenCongTy;
                return new MvcHtmlString(TenCty);
                //var Address = items.DiaChi;
                //var DateCap = ThienPhong.Decrypt(items.TenDonVi3, "hientai@2018@cungtroi");
                //var DateHetHan = ThienPhong.Decrypt(items.TenDonVi4, "thien@04120110@cungtroi");

                // return Json(new { TenCty, Address, DateCap, DateHetHan }, JsonRequestBehavior.AllowGet);
            }
            catch
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }

        }
        public static IHtmlString RenderNgayDangKy(this HtmlHelper htmlHelper)
        {
            var id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            //var id = Convert.ToInt32(System.Web.HttpContext.Current.Session["congty_id"]);
            try
            {
                var items = db.DmCongTyCF.Where(x => x.CongTy_ID == id).FirstOrDefault();

                var ndk = ThienPhong.Decrypt(items.MS01, "hientai@2018@cungtroi");
                return new MvcHtmlString(ndk);
            }
            catch
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }

        }
        public static IHtmlString RenderNgayEnd(this HtmlHelper htmlHelper)
        {
            var id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            //var id = Convert.ToInt32(System.Web.HttpContext.Current.Session["congty_id"]);
            try
            {
                var items = db.DmCongTyCF.Where(x => x.CongTy_ID == id).FirstOrDefault();

                var nde = ThienPhong.Decrypt(items.MS02, "thien@04120110@cungtroi");
                return new MvcHtmlString(nde);
            }
            catch
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }

        }
        //Ten cong ty
        public static IHtmlString RenderCompanyName(this HtmlHelper htmlHelper)
        {
            try
            {
                var items = db.DmDonViCF.Where(x => x.DonVi_ID == 1).FirstOrDefault();

                var TenCty = ThienPhong.Decrypt(items.TenDonVi, "412110");
                return new MvcHtmlString(TenCty);
                //var Address = items.DiaChi;
                //var DateCap = ThienPhong.Decrypt(items.TenDonVi3, "hientai@2018@cungtroi");
                //var DateHetHan = ThienPhong.Decrypt(items.TenDonVi4, "thien@04120110@cungtroi");

                // return Json(new { TenCty, Address, DateCap, DateHetHan }, JsonRequestBehavior.AllowGet);
            }
            catch
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }

        }
        public static IHtmlString RenderTenPhanMem(this HtmlHelper htmlHelper)
        {
            try
            {
                var items = db.DmDonViCF.Where(x => x.DonVi_ID == 1).FirstOrDefault();

                var TenPhanMem = items.TenPhanMem;
                return new MvcHtmlString(TenPhanMem);
                //var Address = items.DiaChi;
                //var DateCap = ThienPhong.Decrypt(items.TenDonVi3, "hientai@2018@cungtroi");
                //var DateHetHan = ThienPhong.Decrypt(items.TenDonVi4, "thien@04120110@cungtroi");

                // return Json(new { TenCty, Address, DateCap, DateHetHan }, JsonRequestBehavior.AllowGet);
            }
            catch
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }

        }
        private static IHtmlString Json(bool v, JsonRequestBehavior allowGet)
        {
            throw new NotImplementedException();
        }

        public static IHtmlString RenderIpClient(this HtmlHelper htmlHelper)
        {
            HttpRequest currentRequest = HttpContext.Current.Request;
            string ipAddress = currentRequest.ServerVariables["HTTP_X_FORWARDED_FOR"];

            if (ipAddress == null || ipAddress.ToLower() == "")
                ipAddress = currentRequest.ServerVariables["REMOTE_ADDR"];

            return new MvcHtmlString(ipAddress);
        }
        //Get computer name
        public static IHtmlString RenderComputerName(this HtmlHelper htmlHelper)
        {
            // Try the following C# code 
            // System.Net.IPHostEntry host = new System.Net.IPHostEntry();
            //host = System.Net.Dns.GetHostByAddress(Request.ServerVariables["REMOTE_HOST"]);

            HttpRequest currentRequest = HttpContext.Current.Request;

            //string ServerName =System.Net.Dns.GetHostName();
            string ClientName = System.Net.Dns.GetHostEntry(currentRequest.ServerVariables["REMOTE_ADDR"]).HostName.ToString();
            if (ClientName == null || ClientName == "")
            {
                ClientName = System.Net.Dns.GetHostName();
            }
            else
            {
                ClientName = System.Net.Dns.GetHostEntry(currentRequest.ServerVariables["REMOTE_ADDR"]).HostName.ToString();
            }

            return new MvcHtmlString(ClientName);
        }
        public static string GetIPAddress(this HttpRequest Request)
        {
            if (Request.Headers["CF-CONNECTING-IP"] != null) return Request.Headers["CF-CONNECTING-IP"].ToString();

            if (Request.ServerVariables["HTTP_X_FORWARDED_FOR"] != null) return Request.ServerVariables["HTTP_X_FORWARDED_FOR"].ToString();

            return Request.UserHostAddress;
        }
        public static IHtmlString RenderUserNameLogin(this HtmlHelper htmlHelper)
        {
            string sten = Convert.ToString(System.Web.HttpContext.Current.Session[CommonConstants.NAME_SESSION]);

            return new MvcHtmlString(sten);
        }
    }
}