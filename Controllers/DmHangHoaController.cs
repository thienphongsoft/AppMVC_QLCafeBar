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

namespace WebAppMVC.Controllers
{
    public class DmHangHoaController : Controller
    {
        private MyDB db = new MyDB();
        // GET: DmHangHoa
        [CustomAuthorizeAttribute(RoleID = "FrmHangHoa", QuyenXem = true)]
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
        public ActionResult GetListDmHangHoa()
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = (from p in db.DmHangHoaCF
                        join c in db.DmLoaiHHCF
                        on p.LoaiHH_ID equals c.LoaiHH_ID
                        join u in db.DmDVTCF
                        on p.DVT_ID equals u.DVT_ID
                        where p.TenCongTy_ID == congty_id && p.Status == 0
                        orderby p.TenHH descending
                        select new DmHangHoaModels()
                        {
                            MaHH = p.MaHH,
                            TenHH = p.TenHH,
                            TenDVT = u.TenDVT,
                            TenNhomHang = c.TenLoaiHH,
                            GiaMua = p.GiaMua,
                            GiaBan1 = p.GiaBan1,
                            GiaBan2 = p.GiaBan2,
                            GiaBan3 = p.GiaBan3,
                            Status = p.Status,
                            HH_ID = p.HH_ID,
                            LoaiHH_ID =p.LoaiHH_ID,
                            DVT_ID =p.DVT_ID
                            
                        })
              .Concat(from p in db.DmDinhNghiaMHCF
                      join c in db.DmLoaiHHCF
                      on p.LoaiHH_ID equals c.LoaiHH_ID
                      join u in db.DmDVTCF
                      on p.DVT_ID equals u.DVT_ID
                      where p.TenCongTy_ID == congty_id && p.Status == 0
                      orderby p.TenDnMH descending
                      select new DmHangHoaModels()
                      {
                          MaHH = p.MaDnMH,
                          TenHH = p.TenDnMH,
                          TenDVT = u.TenDVT,
                          TenNhomHang = c.TenLoaiHH,
                          GiaMua = (decimal?)0,
                          GiaBan1 = p.GiaBan1,
                          GiaBan2 = p.GiaBan2,
                          GiaBan3 = p.GiaBan3,
                          Status = p.Status,
                          HH_ID = p.DnMH_ID,
                          LoaiHH_ID = p.LoaiHH_ID,
                          DVT_ID = p.DVT_ID
                      });

            //return Json(list, JsonRequestBehavior.AllowGet);
            return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        public ActionResult GetListProductByStatus(long id)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = (from p in db.DmHangHoaCF
                        join c in db.DmLoaiHHCF
                        on p.LoaiHH_ID equals c.LoaiHH_ID
                        join u in db.DmDVTCF
                        on p.DVT_ID equals u.DVT_ID
                        where p.TenCongTy_ID == congty_id && p.Status == id
                        orderby p.TenHH descending
                        select new DmHangHoaModels()
                        {
                            MaHH = p.MaHH,
                            TenHH = p.TenHH,
                            TenDVT = u.TenDVT,
                            TenNhomHang = c.TenLoaiHH,
                            GiaMua = p.GiaMua,
                            GiaBan1 = p.GiaBan1,
                            GiaBan2 = p.GiaBan2,
                            GiaBan3 = p.GiaBan3,
                            Status = p.Status,
                            HH_ID = p.HH_ID,
                            LoaiHH_ID = p.LoaiHH_ID,
                            DVT_ID = p.DVT_ID

                        })
              .Concat(from p in db.DmDinhNghiaMHCF
                      join c in db.DmLoaiHHCF
                      on p.LoaiHH_ID equals c.LoaiHH_ID
                      join u in db.DmDVTCF
                      on p.DVT_ID equals u.DVT_ID
                      where p.TenCongTy_ID == congty_id && p.Status == id
                      orderby p.TenDnMH descending
                      select new DmHangHoaModels()
                      {
                          MaHH = p.MaDnMH,
                          TenHH = p.TenDnMH,
                          TenDVT = u.TenDVT,
                          TenNhomHang = c.TenLoaiHH,
                          GiaMua = (decimal?)0,
                          GiaBan1 = p.GiaBan1,
                          GiaBan2 = p.GiaBan2,
                          GiaBan3 = p.GiaBan3,
                          Status = p.Status,
                          HH_ID = p.DnMH_ID,
                          LoaiHH_ID = p.LoaiHH_ID,
                          DVT_ID = p.DVT_ID
                      });
            //return Json(list, JsonRequestBehavior.AllowGet);
            return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        public ActionResult GetListProductByStatusAndIdGroup(long id, long status)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = (from p in db.DmHangHoaCF
                        join c in db.DmLoaiHHCF
                        on p.LoaiHH_ID equals c.LoaiHH_ID
                        join u in db.DmDVTCF
                        on p.DVT_ID equals u.DVT_ID
                        where p.LoaiHH_ID == id && p.Status == status && p.TenCongTy_ID == congty_id
                        orderby p.TenHH descending
                        select new DmHangHoaModels()
                        {
                            MaHH = p.MaHH,
                            TenHH = p.TenHH,
                            TenDVT = u.TenDVT,
                            TenNhomHang = c.TenLoaiHH,
                            GiaMua = p.GiaMua,
                            GiaBan1 = p.GiaBan1,
                            GiaBan2 = p.GiaBan2,
                            GiaBan3 = p.GiaBan3,
                            Status = p.Status,
                            HH_ID = p.HH_ID,
                            LoaiHH_ID = p.LoaiHH_ID,
                            DVT_ID = p.DVT_ID
                        })
                .Concat(from p in db.DmDinhNghiaMHCF
                        join c in db.DmLoaiHHCF
                        on p.LoaiHH_ID equals c.LoaiHH_ID
                        join u in db.DmDVTCF
                        on p.DVT_ID equals u.DVT_ID
                        where p.LoaiHH_ID == id && p.Status == status && p.TenCongTy_ID == congty_id
                        orderby p.TenDnMH descending
                        select new DmHangHoaModels()
                        {
                            MaHH = p.MaDnMH,
                            TenHH = p.TenDnMH,
                            TenDVT = u.TenDVT,
                            TenNhomHang = c.TenLoaiHH,
                            GiaMua = (decimal?)0,
                            GiaBan1 = p.GiaBan1,
                            GiaBan2 = p.GiaBan2,
                            GiaBan3 = p.GiaBan3,
                            Status = p.Status,
                            HH_ID = p.DnMH_ID,
                            LoaiHH_ID = p.LoaiHH_ID,
                            DVT_ID = p.DVT_ID
                        });

            //return Json(list, JsonRequestBehavior.AllowGet);
            return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        public ActionResult GetListProductByCodeName(string CodeName)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = (from p in db.DmHangHoaCF
                        join c in db.DmLoaiHHCF
                        on p.LoaiHH_ID equals c.LoaiHH_ID
                        join u in db.DmDVTCF
                        on p.DVT_ID equals u.DVT_ID
                        where p.MaHH.Contains(CodeName) && p.TenCongTy_ID == congty_id
                        || p.TenHH.Contains(CodeName) && p.TenCongTy_ID == congty_id
                        orderby p.TenHH descending
                        select new DmHangHoaModels()
                        {
                            MaHH = p.MaHH,
                            TenHH = p.TenHH,
                            TenDVT = u.TenDVT,
                            TenNhomHang = c.TenLoaiHH,
                            GiaMua = p.GiaMua,
                            GiaBan1 = p.GiaBan1,
                            GiaBan2 = p.GiaBan2,
                            GiaBan3 = p.GiaBan3,
                            Status = p.Status,
                            HH_ID = p.HH_ID,
                            LoaiHH_ID = p.LoaiHH_ID,
                            DVT_ID = p.DVT_ID
                        })
               .Concat(from p in db.DmDinhNghiaMHCF
                       join c in db.DmLoaiHHCF
                       on p.LoaiHH_ID equals c.LoaiHH_ID
                       join u in db.DmDVTCF
                       on p.DVT_ID equals u.DVT_ID
                       where p.MaDnMH.Contains(CodeName) && p.TenCongTy_ID == congty_id
                       || p.TenDnMH.Contains(CodeName) && p.TenCongTy_ID == congty_id
                       orderby p.TenDnMH descending
                       select new DmHangHoaModels()
                       {
                           MaHH = p.MaDnMH,
                           TenHH = p.TenDnMH,
                           TenDVT = u.TenDVT,
                           TenNhomHang = c.TenLoaiHH,
                           GiaMua = (decimal?)0,
                           GiaBan1 = p.GiaBan1,
                           GiaBan2 = p.GiaBan2,
                           GiaBan3 = p.GiaBan3,
                           Status = p.Status,
                           HH_ID = p.DnMH_ID,
                           LoaiHH_ID = p.LoaiHH_ID,
                           DVT_ID = p.DVT_ID
                       });

            //return Json(list, JsonRequestBehavior.AllowGet);
            return Json(new { data = list }, JsonRequestBehavior.AllowGet);

        }
        [CustomAuthorizeCreate(RoleID = "FrmHangHoa", QuyenTao = true)]
        public ActionResult Create()
        {
            return View();
        }
        [CustomAuthorizeCreate(RoleID = "FrmHangHoa", QuyenTao = true)]
        public ActionResult Copy()
        {
            return View();
        }
        [CustomAuthorizeEdit(RoleID = "FrmHangHoa", QuyenSua = true)]
        public ActionResult Edit()
        {
            return View();
        }
        [CustomAuthorizeCreate(RoleID = "FrmHangHoa", QuyenTao = true)]
        public ActionResult CreatePhaChe()
        {
            return View();
        }
        [CustomAuthorizeEdit(RoleID = "FrmHangHoa", QuyenSua = true)]
        public ActionResult EditPhaChe()
        {
            return View();
        }
        [CustomAuthorizeCreate(RoleID = "FrmHangHoa", QuyenTao = true)]
        public ActionResult CopyPhaChe()
        {
            return View();
        }
        public ActionResult _PartialDVT()
        {
            return PartialView();
        }
        public ActionResult _PartialNhomHang()
        {
            return PartialView();
        }
        public ActionResult GetListDmDVT()
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session["congty_id"]);
            var list = db.DmDVTCF.Where(m => m.TenCongTy_ID == congty_id && m.DVT_ID > 0).ToList();

            //return Json(list, JsonRequestBehavior.AllowGet);
            return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        public ActionResult LoadLaiDVT()
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session["congty_id"]);
            var listunit = db.DmDVTCF.Where(m => m.TenCongTy_ID == congty_id && m.DVT_ID > 0).ToList();
            return Json(listunit, JsonRequestBehavior.AllowGet);
        }
        public JsonResult CheckDVT(string unitname)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var validateName = db.DmDVTCF.FirstOrDefault(x => x.TenDVT == unitname && x.TenCongTy_ID == congty_id);
            if (validateName != null)
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
        }
        public JsonResult CreateDVT(DmDVTCF dmDVTCF)
        {
            db.DmDVTCF.Add(dmDVTCF);
            db.SaveChanges();
            return Json(dmDVTCF, JsonRequestBehavior.AllowGet);
        }
        public ActionResult EditDmDVTByID(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DmDVTCF dmDVTCF = db.DmDVTCF.Find(id);
            if (dmDVTCF == null)
            {
                return HttpNotFound();
            }
            return Json(dmDVTCF, JsonRequestBehavior.AllowGet);

        }
        public JsonResult UpdateEditDmDVT(DmDVTCF dmDVTCF)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var validateIdName = db.DmDVTCF.FirstOrDefault(x => x.DVT_ID == dmDVTCF.DVT_ID && x.TenDVT == dmDVTCF.TenDVT && x.TenCongTy_ID == congty_id);
            if (validateIdName != null)
            {

                //dùng row để update lại giá trị theo ý mình
                var row = db.DmDVTCF.Find(dmDVTCF.DVT_ID);
                row.TenDVT = dmDVTCF.TenDVT;
                row.Status = 0;
                db.Entry(row).State = EntityState.Modified;
                db.SaveChanges();
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                var validateName = db.DmDVTCF.FirstOrDefault(x => x.TenDVT == dmDVTCF.TenDVT && x.TenCongTy_ID == congty_id);
                if (validateName != null)
                {
                    return Json(false, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    db.Entry(dmDVTCF).State = EntityState.Modified;
                    db.SaveChanges();
                    return Json(true, JsonRequestBehavior.AllowGet);
                }
            }


        }
        public JsonResult CheckDVTinDmHangHoa(long Id)
        {
            var validateName = db.DmHangHoaCF.FirstOrDefault(x => x.DVT_ID == Id);
            if (validateName != null)
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
        }
        [HttpPost]
        public JsonResult DeleteDmDVT(long id)
        {
            var myID = db.DmDVTCF.Where(x => x.DVT_ID == id).FirstOrDefault();
            db.DmDVTCF.Remove(myID);
            db.SaveChanges();
            return Json(true, JsonRequestBehavior.AllowGet);

        }
        public ActionResult GetListNhomHang()
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = db.DmLoaiHHCF.Where(x => x.TenCongTy_ID == congty_id).ToList();

            //return Json(list, JsonRequestBehavior.AllowGet);
            return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        public JsonResult CheckNhomHang(string name)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var validateName = db.DmLoaiHHCF.FirstOrDefault(x => x.TenLoaiHH == name && x.TenCongTy_ID == congty_id);
            if (validateName != null)
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
        }
        public JsonResult CreateNhomHang(DmLoaiHHCF dmLoaiHHCF)
        {
            db.DmLoaiHHCF.Add(dmLoaiHHCF);
            db.SaveChanges();
            return Json(dmLoaiHHCF, JsonRequestBehavior.AllowGet);
        }
        public JsonResult CheckIdNhomHang(long Id)
        {
            var validateName = db.DmHangHoaCF.FirstOrDefault(x => x.LoaiHH_ID == Id);
            if (validateName != null)
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
        }
        public JsonResult CheckNhomHangByName(string name)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var validateName = db.DmLoaiHHCF.FirstOrDefault(x => x.TenLoaiHH == name && x.TenCongTy_ID == congty_id);
            if (validateName != null)
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
        }
        [HttpPost]
        public JsonResult DeleteNhomHang(long id)
        {
            var myID = db.DmLoaiHHCF.Where(x => x.LoaiHH_ID == id).FirstOrDefault();
            db.DmLoaiHHCF.Remove(myID);
            db.SaveChanges();
            return Json(true, JsonRequestBehavior.AllowGet);

        }
       
        public JsonResult UpdateEditNhomHang(DmLoaiHHCF dmLoaiHHCF)
        {
           
                db.Entry(dmLoaiHHCF).State = EntityState.Modified;
                db.SaveChanges();
                return Json(true, JsonRequestBehavior.AllowGet);
           

        }
        public ActionResult NhomHangList()
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var nhomhanglist = db.DmLoaiHHCF.Where(x => x.TenCongTy_ID == congty_id).ToList();
            return Json(nhomhanglist, JsonRequestBehavior.AllowGet);
        }
        public ActionResult EditNhomHangById(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DmLoaiHHCF dmLoaiHHCF = db.DmLoaiHHCF.Find(id);
            if (dmLoaiHHCF == null)
            {
                return HttpNotFound();
            }
            return Json(dmLoaiHHCF, JsonRequestBehavior.AllowGet);

        }
        public JsonResult CheckNhomHanginDmHangHoa(long Id)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var validateName = db.DmHangHoaCF.FirstOrDefault(x => x.LoaiHH_ID == Id && x.TenCongTy_ID == congty_id);
            if (validateName != null)
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
        }
        public JsonResult CheckIdAndTenNhom(long id, string name)
        {
            var IdAndName = db.DmLoaiHHCF.FirstOrDefault(x => x.LoaiHH_ID == id && x.TenLoaiHH == name);
            if (IdAndName != null ) //đủ điều kiện
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
        }
        public JsonResult CheckTenNhomHang(string name)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var IdAndName = db.DmLoaiHHCF.FirstOrDefault(x => x.TenLoaiHH == name && x.TenCongTy_ID == congty_id);
            if (IdAndName != null) //đủ điều kiện
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
        }
        public JsonResult CheckMaHH(string CodeProduct)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var validateName = db.DmHangHoaCF.FirstOrDefault(x => x.MaHH == CodeProduct && x.TenCongTy_ID == congty_id);
            var validateNameDn = db.DmDinhNghiaMHCF.FirstOrDefault(x => x.MaDnMH == CodeProduct && x.TenCongTy_ID == congty_id);
            if (validateName != null || validateNameDn != null)
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
        }

        public ActionResult CreateDmHangHoa(DmHangHoaCF dmHangHoaCF)
        {
            db.DmHangHoaCF.Add(dmHangHoaCF);
            db.SaveChanges();
            return Json(dmHangHoaCF, JsonRequestBehavior.AllowGet);
        }

        public JsonResult CheckMaHHForEdit(string Ma)
        {
            var code = db.DmHangHoaCF.FirstOrDefault(x => x.MaHH == Ma);
            if (code != null) //đủ điều kiện
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
        }
        public ActionResult GetEditByCode(string Ma)
        {
            if (Ma == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DmHangHoaCF dmHangHoa = db.DmHangHoaCF.Where(x => x.MaHH == Ma).FirstOrDefault();
            if (dmHangHoa == null)
            {
                return HttpNotFound();
            }
            return Json(dmHangHoa, JsonRequestBehavior.AllowGet);
        }
        public JsonResult CheckIdAndCodeProduct(long id, string code)
        {
            var IdAndName = db.DmHangHoaCF.FirstOrDefault(x => x.HH_ID == id && x.MaHH == code);
            var validateNameDn = db.DmDinhNghiaMHCF.FirstOrDefault(x => x.DnMH_ID == id && x.MaDnMH == code);
            if (IdAndName != null || validateNameDn != null) //đủ điều kiện
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
        }
        public JsonResult UpdateProductDn(DmDinhNghiaMHCF dmDinhNghiaMHCF)
        {
            db.Entry(dmDinhNghiaMHCF).State = EntityState.Modified;
            db.SaveChanges();
            //kiem tra xoa neu het id chi tiet dinh luong
            db.ChiTietDinhNghiaMHCF.RemoveRange(db.ChiTietDinhNghiaMHCF.Where(x => x.DnMH_ID == dmDinhNghiaMHCF.DnMH_ID));
            db.SaveChanges();

            return Json(true, JsonRequestBehavior.AllowGet);
        }
        public JsonResult UpdateDmHangHoa(DmHangHoaCF dmHangHoaCF)
        {
            db.Entry(dmHangHoaCF).State = EntityState.Modified;
            db.SaveChanges();
            return Json(true, JsonRequestBehavior.AllowGet);
        }

        public JsonResult CheckCodeProduct(string code)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var IdAndName = db.DmHangHoaCF.FirstOrDefault(x => x.MaHH == code && x.TenCongTy_ID == congty_id);
            var IdAndNameDn = db.DmDinhNghiaMHCF.FirstOrDefault(x => x.MaDnMH == code && x.TenCongTy_ID == congty_id);
            if (IdAndName != null || IdAndNameDn != null) //đủ điều kiện
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
        }
        public JsonResult Pause(string Ma)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var row = db.DmHangHoaCF.Where(x => x.MaHH == Ma && x.TenCongTy_ID == congty_id).FirstOrDefault();
            if (row != null)
            {
                row.Status = 1;
                db.Entry(row).State = EntityState.Modified;
                db.SaveChanges();
            }
            else
            {
                var rowDn = db.DmDinhNghiaMHCF.Where(x => x.MaDnMH == Ma && x.TenCongTy_ID == congty_id).FirstOrDefault();
                rowDn.Status = 1;
                db.Entry(rowDn).State = EntityState.Modified;
                db.SaveChanges();
            }

            return Json(true, JsonRequestBehavior.AllowGet);
        }
        public JsonResult MoveTrash(string Ma)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var row = db.DmHangHoaCF.Where(x => x.MaHH == Ma && x.TenCongTy_ID == congty_id).FirstOrDefault();
            if (row != null)
            {
                row.Status = 2;
                db.Entry(row).State = EntityState.Modified;
                db.SaveChanges();
            }
            else
            {
                var rowDn = db.DmDinhNghiaMHCF.Where(x => x.MaDnMH == Ma && x.TenCongTy_ID == congty_id).FirstOrDefault();
                rowDn.Status = 2;
                db.Entry(rowDn).State = EntityState.Modified;
                db.SaveChanges();
            }

            return Json(true, JsonRequestBehavior.AllowGet);
        }
        public JsonResult RestoreTrash(string Ma)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var row = db.DmHangHoaCF.Where(x => x.MaHH == Ma && x.TenCongTy_ID == congty_id).FirstOrDefault();
            if (row != null)
            {
                row.Status = 0;
                db.Entry(row).State = EntityState.Modified;
                db.SaveChanges();
            }
            else
            {
                var rowDn = db.DmDinhNghiaMHCF.Where(x => x.MaDnMH == Ma && x.TenCongTy_ID == congty_id).FirstOrDefault();
                rowDn.Status = 0;
                db.Entry(rowDn).State = EntityState.Modified;
                db.SaveChanges();
            }

            return Json(true, JsonRequestBehavior.AllowGet);
        }
        public JsonResult RestorePause(string Ma)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var row = db.DmHangHoaCF.Where(x => x.MaHH == Ma && x.TenCongTy_ID == congty_id).FirstOrDefault();
            if (row != null)
            {
                row.Status = 0;
                db.Entry(row).State = EntityState.Modified;
                db.SaveChanges();
            }
            else
            {
                var rowDn = db.DmDinhNghiaMHCF.Where(x => x.MaDnMH == Ma && x.TenCongTy_ID == congty_id).FirstOrDefault();
                rowDn.Status = 0;
                db.Entry(rowDn).State = EntityState.Modified;
                db.SaveChanges();
            }

            return Json(true, JsonRequestBehavior.AllowGet);
        }
        public JsonResult CheckProductCodeDelete(string Ma)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var myCode = db.DmHangHoaCF.Where(x => x.MaHH == Ma && x.TenCongTy_ID == congty_id).FirstOrDefault();
            if (myCode != null)
            {
                var phDauKy = db.SD_TonKhoCF.FirstOrDefault(x => x.HH_ID == myCode.HH_ID);
                var phXuat_ID = db.CT_XuatHangCF.FirstOrDefault(x => x.HH_ID == myCode.HH_ID);
                var phNhap_ID = db.CT_NhapHangCF.FirstOrDefault(x => x.HH_ID == myCode.HH_ID);
                if (phXuat_ID != null || phNhap_ID != null || phDauKy != null)
                {
                    return Json(false, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(true, JsonRequestBehavior.AllowGet);
                }
            }
            else
            {
                var myCodeDn = db.DmDinhNghiaMHCF.Where(x => x.MaDnMH == Ma && x.TenCongTy_ID == congty_id).FirstOrDefault();
                var phXuat_ID = db.CT_XuatHangCF.FirstOrDefault(x => x.DnMH_ID == myCodeDn.DnMH_ID);
                if (phXuat_ID != null)
                {
                    return Json(false, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(true, JsonRequestBehavior.AllowGet);
                }
            }
        }
        [HttpPost]
        public JsonResult DeleteTrash(string Ma)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var myID = db.DmHangHoaCF.Where(x => x.MaHH == Ma && x.TenCongTy_ID == congty_id).FirstOrDefault();
            if (myID != null)
            {
                db.DmHangHoaCF.Remove(myID);
                db.SaveChanges();
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                //Delete DmDinhNghiaMH
                var myIDDnMH = db.DmDinhNghiaMHCF.Where(x => x.MaDnMH == Ma && x.TenCongTy_ID == congty_id).FirstOrDefault();
                db.DmDinhNghiaMHCF.Remove(myIDDnMH);
                db.SaveChanges();
                //Delete ChiTietDinhNghiaMH
                db.ChiTietDinhNghiaMHCF.RemoveRange(db.ChiTietDinhNghiaMHCF.Where(x => x.DnMH_ID == myIDDnMH.DnMH_ID));
                db.SaveChanges();

                return Json(false, JsonRequestBehavior.AllowGet);
            }

        }

        public ActionResult GetListNguyenLieu()
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = (from p in db.DmHangHoaCF
                        join c in db.DmLoaiHHCF
                        on p.LoaiHH_ID equals c.LoaiHH_ID
                        join u in db.DmDVTCF
                        on p.DVT_ID equals u.DVT_ID
                        where p.TenCongTy_ID == congty_id && p.Status == 0 && c.NhomNguyenLieu == true
                        orderby p.TenHH descending
                        select new DmHangHoaModels()
                        {
                            MaHH = p.MaHH,
                            TenHH = p.TenHH,
                            TenDVT = u.TenDVT,
                            TenNhomHang = c.TenLoaiHH,
                            GiaMua = p.GiaMua,
                            GiaBan1 = p.GiaBan1,
                            GiaBan2 = p.GiaBan2,
                            GiaBan3 = p.GiaBan3,
                            Status = p.Status,
                            HH_ID = p.HH_ID,
                            DVT_ID = p.DVT_ID
                        }).ToList();


            //return Json(list, JsonRequestBehavior.AllowGet);
            return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult GetDmHangHoaByID(long id)
        {
            var list = (from p in db.DmHangHoaCF
                        join u in db.DmDVTCF
                        on p.DVT_ID equals u.DVT_ID
                        where p.Status == 0 && p.HH_ID == id
                        select new DmHangHoaModels()
                        {
                            MaHH = p.MaHH,
                            TenHH = p.TenHH,
                            TenDVT = u.TenDVT,
                            GiaMua = p.GiaMua,
                            GiaBan1 = p.GiaBan1,
                            GiaBan2 = p.GiaBan2,
                            GiaBan3 = p.GiaBan3,
                            DVT_ID = p.DVT_ID,
                            HH_ID = p.HH_ID
                        }).FirstOrDefault();

            return Json(list, JsonRequestBehavior.AllowGet);
            //return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        public JsonResult CheckMaHangHoa(string CodeProduct)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var validateName = db.DmHangHoaCF.FirstOrDefault(x => x.MaHH == CodeProduct && x.TenCongTy_ID == congty_id);
            var validateNameDn = db.DmDinhNghiaMHCF.FirstOrDefault(x => x.MaDnMH == CodeProduct && x.TenCongTy_ID == congty_id);
            if (validateName != null || validateNameDn != null)
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
        }
        public ActionResult CreateDanhMucDnMH(DmDinhNghiaMHCF dmDinhNghiaMHCF)
        {
            db.DmDinhNghiaMHCF.Add(dmDinhNghiaMHCF);
            db.SaveChanges();
            return Json(dmDinhNghiaMHCF, JsonRequestBehavior.AllowGet);
        }
        public JsonResult InsertChiTietNguyenLieu(List<ChiTietDinhNghiaMHCF> chiTietDinhNghiaMHCF)
        {

            foreach (ChiTietDinhNghiaMHCF chiTietDinhNghia in chiTietDinhNghiaMHCF)
            {
                db.ChiTietDinhNghiaMHCF.Add(chiTietDinhNghia);
            }
            int insertedRecords = db.SaveChanges();
            return Json(insertedRecords);

        }
        public ActionResult GetDetailDinhLuongByCode(string Ma)
        {
            if (Ma == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            DmDinhNghiaMHCF dmDinhNghiaMHCF = db.DmDinhNghiaMHCF.Where(x => x.MaDnMH == Ma && x.TenCongTy_ID == congty_id).FirstOrDefault();
            if (dmDinhNghiaMHCF == null)
            {
                return HttpNotFound();
            }
            return Json(dmDinhNghiaMHCF, JsonRequestBehavior.AllowGet);
   
        }
        public ActionResult GetListEditProductDinhLuongById(long id)
        {
            var list = (from p in db.ChiTietDinhNghiaMHCF
                        join c in db.DmHangHoaCF on p.HH_ID equals c.HH_ID
                        join u in db.DmDVTCF on p.DVT_ID equals u.DVT_ID
                        where p.DnMH_ID == id
                        select new DmHangHoaModels()
                        {
                            ChiTietDnMH_ID = p.ChiTietDnMH_ID,
                            HH_ID = c.HH_ID,
                            DVT_ID = p.DVT_ID,
                            MaHH = c.MaHH,
                            TenHH = c.TenHH,
                            TenDVT = u.TenDVT,
                            SoLuong = p.SoLuong,

                        }).ToList().OrderBy(p => p.ChiTietDnMH_ID);

            return Json(list, JsonRequestBehavior.AllowGet);
            //return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        public ActionResult ChonProductByName(string name)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = (from p in db.DmHangHoaCF
                        join c in db.DmLoaiHHCF
                        on p.LoaiHH_ID equals c.LoaiHH_ID
                        join u in db.DmDVTCF
                        on p.DVT_ID equals u.DVT_ID
                        where p.TenHH.Contains(name) && p.Status == 0 && p.TenCongTy_ID == congty_id
                        orderby p.TenHH descending
                        select new DmHangHoaModels()
                        {
                            MaHH = p.MaHH,
                            TenHH = p.TenHH,
                            TenDVT = u.TenDVT,
                            TenNhomHang = c.TenLoaiHH,
                            GiaMua = p.GiaMua,
                            GiaBan1 = p.GiaBan1,
                            GiaBan2 = p.GiaBan2,
                            GiaBan3 = p.GiaBan3,
                            Status = p.Status,
                            HH_ID = p.HH_ID,
                            SoLuong = 0
                        }).Take(15).ToList()
             .Concat(from p in db.DmDinhNghiaMHCF
                     join c in db.DmLoaiHHCF
                     on p.LoaiHH_ID equals c.LoaiHH_ID
                     join u in db.DmDVTCF
                     on p.DVT_ID equals u.DVT_ID
                     where p.TenDnMH.Contains(name) && p.Status == 0 && p.TenCongTy_ID == congty_id
                     orderby p.TenDnMH descending
                     select new DmHangHoaModels()
                     {
                         MaHH = p.MaDnMH,
                         TenHH = p.TenDnMH,
                         TenDVT = u.TenDVT,
                         TenNhomHang = c.TenLoaiHH,
                         GiaMua = (decimal?)0,
                         GiaBan1 = p.GiaBan1,
                         GiaBan2 = p.GiaBan2,
                         GiaBan3 = p.GiaBan3,
                         Status = p.Status,
                         HH_ID = p.DnMH_ID,
                         SoLuong = 0
                     }).Take(15).ToList();

            return Json(list, JsonRequestBehavior.AllowGet);
            //return Json(new { data = list }, JsonRequestBehavior.AllowGet);

        }
        public ActionResult NhomHang()
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = db.DmLoaiHHCF.Where(x => x.TenCongTy_ID == congty_id).ToList();
            return Json(list, JsonRequestBehavior.AllowGet);
            //return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        }
        public ActionResult GetProductbyID(string ProductCode)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = (from item in db.DmHangHoaCF
                        join u in db.DmDVTCF
                        on item.DVT_ID equals u.DVT_ID
                        where item.TenCongTy_ID == congty_id && item.MaHH == ProductCode
                        select new ProductSearchModels()
                        {
                            label = item.TenHH,
                            code = item.MaHH.Trim(),
                            TenDVT = u.TenDVT,
                            giamua = item.GiaMua,
                            giaban1 = item.GiaBan1,
                            giaban2 = item.GiaBan2,
                            giaban3 = item.GiaBan3,
                            valDVT = item.DVT_ID,
                            val = item.HH_ID,
                            valDn = (long)0
                        })
                  .Concat(from item in db.DmDinhNghiaMHCF
                          join u in db.DmDVTCF
                          on item.DVT_ID equals u.DVT_ID
                          where item.TenCongTy_ID == congty_id && item.MaDnMH == ProductCode
                          select new ProductSearchModels()
                          {
                              label = item.TenDnMH,
                              code = item.MaDnMH.Trim(),
                              TenDVT = u.TenDVT,
                              giamua = (decimal?)0,
                              giaban1 = item.GiaBan1,
                              giaban2 = item.GiaBan2,
                              giaban3 = item.GiaBan3,
                              valDVT = item.DVT_ID,
                              val = (long)0,
                              valDn = item.DnMH_ID
                          }).FirstOrDefault();

            //return Json(new { data = list }, JsonRequestBehavior.AllowGet);
            return Json(list, JsonRequestBehavior.AllowGet);
        }
        public ActionResult ChonProductByIdNhomSP(long id)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var list = (from p in db.DmHangHoaCF
                        join c in db.DmLoaiHHCF
                        on p.LoaiHH_ID equals c.LoaiHH_ID
                        join u in db.DmDVTCF
                        on p.DVT_ID equals u.DVT_ID
                        where p.LoaiHH_ID == id && p.TenCongTy_ID == congty_id
                        && p.Status == 0
                        orderby p.TenHH descending
                        select new DmHangHoaModels()
                        {
                            MaHH = p.MaHH,
                            TenHH = p.TenHH,
                            TenDVT = u.TenDVT,
                            TenNhomHang = c.TenLoaiHH,
                            GiaMua = p.GiaMua,
                            GiaBan1 = p.GiaBan1,
                            GiaBan2 = p.GiaBan2,
                            GiaBan3 = p.GiaBan3,
                            Status = p.Status,
                            HH_ID = p.HH_ID,
                            SoLuong = 0
                        }).Take(15).ToList()
             .Concat(from p in db.DmDinhNghiaMHCF
                     join c in db.DmLoaiHHCF
                     on p.LoaiHH_ID equals c.LoaiHH_ID
                     join u in db.DmDVTCF
                     on p.DVT_ID equals u.DVT_ID
                     where p.LoaiHH_ID == id && p.TenCongTy_ID == congty_id
                     && p.Status == 0
                     orderby p.TenDnMH descending
                     select new DmHangHoaModels()
                     {
                         MaHH = p.MaDnMH,
                         TenHH = p.TenDnMH,
                         TenDVT = u.TenDVT,
                         TenNhomHang = c.TenLoaiHH,
                         GiaMua = (decimal?)0,
                         GiaBan1 = p.GiaBan1,
                         GiaBan2 = p.GiaBan2,
                         GiaBan3 = p.GiaBan3,
                         Status = p.Status,
                         HH_ID = p.DnMH_ID,
                         SoLuong = 0
                     }).Take(15).ToList();

            return Json(list, JsonRequestBehavior.AllowGet);
            //return Json(new { data = list }, JsonRequestBehavior.AllowGet);

        }
        public ActionResult CheckProductName(string Name)
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            var items = (from item in db.DmHangHoaCF
                         where item.TenCongTy_ID == congty_id && item.TenHH == Name
                         select new
                         {
                             label = item.TenHH,
                         })
                   .Concat(from item in db.DmDinhNghiaMHCF
                           where item.TenCongTy_ID == congty_id && item.TenDnMH == Name
                           select new
                           {
                               label = item.TenDnMH,
                           }).FirstOrDefault();


            if (items.label != null)
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
            var validateName = db.AccessRightCF.Count(x => x.QuyenID == "FrmHangHoa" && x.TaiKhoan == UserId && x.Xoa == true);
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