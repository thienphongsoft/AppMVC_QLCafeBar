using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MyDatabase;

namespace WebAppMVC.ClassCommon
{
    public class GiaoAuthorizeAttribute : AuthorizeAttribute
    {
        
        public string RoleID { set; get; }
        protected override bool AuthorizeCore(HttpContextBase httpContext)
        {
            //get session from login page
            var userid = HttpContext.Current.Session[ClassCommon.CommonConstants.SESSION_GIAO];
            //if user not login to app
            if (userid == null)
            {
                HttpContext.Current.Response.Redirect("~/");
                return false;
            }
            //check roles for action
            //var validateName = db.AccessRight.FirstOrDefault(x => x.ScreenId == this.RoleID && x.UserId == userid.ToString());
            var validateName = userid.ToString();
            if (validateName == "thienphong")
            {
                return true;
            }
            else
            {
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