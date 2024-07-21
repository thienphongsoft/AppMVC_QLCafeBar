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
    public class QuanLyUsersController : Controller
    {
        private MyDB db = new MyDB();
        // GET: QuanLyUsers
        [CustomAuthorizeAttribute(RoleID = "FrmAccessRight", QuyenXem = true)]
        public ActionResult Index()
        {
            return View();
        }
        
        public ActionResult Create()
        {
            return View();
        }
        public ActionResult CreatePhieu(UserCF userCF)
        {
                UserCF userTC1 = new UserCF();
              
                userTC1.UserID = userCF.UserID;
                userTC1.UserName = userCF.UserName;
                userTC1.PassWord = ThienPhong.Encrypt(userCF.PassWord, "412110");
                userTC1.TenCongTy_ID = userCF.TenCongTy_ID;
                userTC1.ThamSo = userCF.ThamSo;
                db.UserCF.Add(userTC1);
                db.SaveChanges();
               
                return Json(userTC1, JsonRequestBehavior.AllowGet);
        }
        public JsonResult InsertChiTiets(List<AccessRightCF> accessRightTCs)
        {

            foreach (AccessRightCF accessRightTC in accessRightTCs)
            {
                db.AccessRightCF.Add(accessRightTC);
            }
            int insertedRecords = db.SaveChanges();
            return Json(insertedRecords);

        }
        public JsonResult CheckInputDoiTuong(string DoiTuong)
        {
            //var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session["congty_id"]);
            var validateName = db.UserCF.FirstOrDefault(x => x.UserID.Trim() == DoiTuong);
            if (validateName != null)
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
        }
        public ActionResult GetListQuyenAll()
        {
            //var listAll = db.Screen.ToList().OrderBy(x => x.LoaiCN);

            var listAll = (from a in db.ScreenCF
                           orderby a.LoaiQuyen, a.DeScr ascending
                           select new
                           {
                               ScreenID = a.ScreenID,
                               DeScr = a.DeScr,
                               LoaiQuyen = a.LoaiQuyen,
                               Xem = a.Xem,
                               Tao = a.Tao,
                               Sua = a.Sua,
                               Xoa = a.Xoa,
                               InPhieu = a.InPhieu

                           }).ToList();
            return Json(new { data = listAll }, JsonRequestBehavior.AllowGet);

            //a ? b : c ? d : e
            //a ? b : (c ? d : e)
            //var q = (from h in entity.Results
            //         group h by new { h.UserID } into hh
            //         select new
            //         {
            //             hh.Key.UserID,
            //             Score = hh.Sum(s => s.Points)
            //         }).OrderByDescending(i => i.Points);
        }
        public ActionResult GetListUsers()
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session["congty_id"]);
            var list = db.UserCF.Where(x => x.TenCongTy_ID == congty_id && x.UserID != "SysAdmin").ToList();
            return Json(new { data = list }, JsonRequestBehavior.AllowGet);
            //return Json(list, JsonRequestBehavior.AllowGet);
        }
       
        public ActionResult GetUserPassByID(long TK_ID)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session["congty_id"]);
            string pass = db.UserCF.Where(x => x.TK_ID == TK_ID).Select(i => i.PassWord).FirstOrDefault();
            var item = ThienPhong.Decrypt(pass, "412110");
            
            return Json(item, JsonRequestBehavior.AllowGet);
        }
        public ActionResult GetListQuyenByID(long TK_ID)
        {
            var list = (from a in db.AccessRightCF
                        where a.TK_ID == TK_ID
                        orderby a.LoaiQuyen, a.TenQuyen ascending
                        select new
                        {
                            TK_ID = a.TK_ID,
                            QuyenID = a.QuyenID,
                            TenQuyen = a.TenQuyen,
                            LoaiQuyen = a.LoaiQuyen,
                            Xem = a.Xem,
                            Tao = a.Tao,
                            Sua = a.Sua,
                            Xoa = a.Xoa,
                            InPhieu = a.InPhieu
                        }).ToList();

            return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult DeleteUser(long id)
        {
            var myUs = db.UserCF.Where(x => x.TK_ID == id).FirstOrDefault();
            if(myUs.ThamSo == 1)
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
            else
            {
                db.UserCF.Remove(myUs);
                db.SaveChanges();
                //xoa quyen user
                db.AccessRightCF.RemoveRange(db.AccessRightCF.Where(x => x.TK_ID == id));
                db.SaveChanges();

                return Json(true, JsonRequestBehavior.AllowGet);
            }    
           
            

        }
        public ActionResult UpdatePhieu(UserCF userCF)
        {
            //var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session["congty_id"]);
            var id_id = db.UserCF.Where(x => x.TK_ID == userCF.TK_ID && x.UserID == userCF.UserID).FirstOrDefault();
            if (id_id != null)
            {
                //update user 
                var row = db.UserCF.Find(userCF.TK_ID);
                row.UserID = userCF.UserID;
                row.UserName = userCF.UserName;
                db.Entry(row).State = EntityState.Modified;
                db.SaveChanges();

                //kiem tra xoa quyen
                db.AccessRightCF.RemoveRange(db.AccessRightCF.Where(x => x.TK_ID == userCF.TK_ID));
                db.SaveChanges();
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                var valiName = db.UserCF.FirstOrDefault(x => x.UserID.Trim() == userCF.UserID);
                if (valiName != null) //có ten trung 
                {
                    return Json(false, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    //update user 
                    var row = db.UserCF.Find(userCF.TK_ID);
                    row.UserID = userCF.UserID;
                    row.UserName = userCF.UserName;
                    db.Entry(row).State = EntityState.Modified;
                    db.SaveChanges();

                    //kiem tra xoa quyen
                    db.AccessRightCF.RemoveRange(db.AccessRightCF.Where(x => x.TK_ID == userCF.TK_ID));
                    db.SaveChanges();
                    return Json(true, JsonRequestBehavior.AllowGet);
                }

            }


            
        }
        public ActionResult UpdatePassNew(UserCF userCF)
        {
            //update pass new
            var row = db.UserCF.Find(userCF.TK_ID);
            row.PassWord = ThienPhong.Encrypt(userCF.PassWord, "412110");
            db.Entry(row).State = EntityState.Modified;
            db.SaveChanges();
            return Json(true, JsonRequestBehavior.AllowGet);
        }
        public ActionResult GetUserByID(long TK_ID)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var item = (from p in db.UserCF
                        where p.TK_ID == TK_ID && p.TenCongTy_ID == congty_id
                        select new
                        {
                            TK_ID = p.TK_ID,
                            UserID = p.UserID,
                            UserName = p.UserName,
                            ThamSo = p.ThamSo,
                        }).FirstOrDefault();

            //var item = db.UserTC.Where(x => x.TK_ID == TK_ID && x.TenCongTy_ID == congty_id).FirstOrDefault();
            return Json(item, JsonRequestBehavior.AllowGet);
        }
    }
}