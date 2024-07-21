using MyDatabase;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebAppMVC.ClassCommon
{
    public class CustomAuthorizeCreate: AuthorizeAttribute
    {
        private MyDB db = new MyDB();
        public string RoleID { set; get; }
        public bool QuyenTao { set; get; }
        protected override bool AuthorizeCore(HttpContextBase httpContext)
        {
            //get session from login page
            var userid = HttpContext.Current.Session[ClassCommon.CommonConstants.USER_SESSION];
            //if user not login to app
            if (userid == null)
            {
                HttpContext.Current.Response.Redirect("~/");
                return false;
            }
            //check roles for action
            var validateName = db.AccessRightCF.FirstOrDefault(x => x.QuyenID == this.RoleID && x.TaiKhoan == userid.ToString() && x.Tao == this.QuyenTao);
            if (validateName != null)
            {
                return true;
            }
            else
            {
                //HttpContext.Current.Response.Redirect("~/QuanLyBan/Index");
                return false;
            }
        }
        protected override void HandleUnauthorizedRequest(AuthorizationContext filterContext)
        {
            //  get the view bag
            var viewBag = filterContext.Controller.ViewBag;
            // set the viewbag values
            viewBag.CustomValue = "CustomValue";
            filterContext.Result = new ViewResult
            {
                ViewName = "~/Views/Shared/No_Right.cshtml"
            };
        }
    }
}