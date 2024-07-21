using MyDatabase;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Globalization;
using System.Linq;
using System.Management;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.Mvc;
using WebAppMVC.ClassCommon;
using System.Web.Security;
using WebAppMVC.Models;

namespace WebAppMVC.Controllers
{
    public class UsersController : Controller
    {
        // GET: Users
        private MyDB db = new MyDB();
        #region Cong Ty Thien Phong
        private const int CREATE_NEW = 1;
        private const int OPEN_EXISTING = 3;
        private const uint GENERIC_READ = 0x80000000;
        private const uint GENERIC_WRITE = 0x40000000;
        private const int FILE_SHARE_READ = 0x1;
        private const int FILE_SHARE_WRITE = 0x2;
        private const int VER_PLATFORM_WIN32_NT = 2;
        private const int DFP_RECEIVE_DRIVE_DATA = 0x7C088;
        private const int INVALID_HANDLE_VALUE = -1;

        [StructLayout(LayoutKind.Sequential, Size = 8)]
        private class IDEREGS
        {
            public byte Features;
            public byte SectorCount;
            public byte SectorNumber;
            public byte CylinderLow;
            public byte CylinderHigh;
            public byte DriveHead;
            public byte Command;
            public byte Reserved;
        }

        [StructLayout(LayoutKind.Sequential, Size = 32)]
        private class SENDCMDINPARAMS
        {
            public int BufferSize;
            public IDEREGS DriveRegs;
            public byte DriveNumber;
            [MarshalAs(UnmanagedType.ByValArray, SizeConst = 3)]
            public byte[] Reserved;
            [MarshalAs(UnmanagedType.ByValArray, SizeConst = 4)]
            public int[] Reserved2;
            public SENDCMDINPARAMS()
            {
                DriveRegs = new IDEREGS();
                Reserved = new byte[3];
                Reserved2 = new int[4];
            }
        }
        [StructLayout(LayoutKind.Sequential, Size = 12)]
        private class DRIVERSTATUS
        {
            public byte DriveError;
            public byte IDEStatus;
            [MarshalAs(UnmanagedType.ByValArray, SizeConst = 2)]
            public byte[] Reserved;
            [MarshalAs(UnmanagedType.ByValArray, SizeConst = 2)]
            public int[] Reserved2;
            public DRIVERSTATUS()
            {
                Reserved = new byte[2];
                Reserved2 = new int[2];
            }
        }

        [StructLayout(LayoutKind.Sequential)]
        private class IDSECTOR
        {
            public short GenConfig;
            public short NumberCylinders;
            public short Reserved;
            public short NumberHeads;
            public short BytesPerTrack;
            public short BytesPerSector;
            public short SectorsPerTrack;
            [MarshalAs(UnmanagedType.ByValArray, SizeConst = 3)]
            public short[] VendorUnique;
            [MarshalAs(UnmanagedType.ByValArray, SizeConst = 20)]
            public char[] SerialNumber;
            public short BufferClass;
            public short BufferSize;
            public short ECCSize;
            [MarshalAs(UnmanagedType.ByValArray, SizeConst = 8)]
            public char[] FirmwareRevision;
            [MarshalAs(UnmanagedType.ByValArray, SizeConst = 40)]
            public char[] ModelNumber;
            public short MoreVendorUnique;
            public short DoubleWordIO;
            public short Capabilities;
            public short Reserved1;
            public short PIOTiming;
            public short DMATiming;
            public short BS;
            public short NumberCurrentCyls;
            public short NumberCurrentHeads;
            public short NumberCurrentSectorsPerTrack;
            public int CurrentSectorCapacity;
            public short MultipleSectorCapacity;
            public short MultipleSectorStuff;
            public int TotalAddressableSectors;
            public short SingleWordDMA;
            public short MultiWordDMA;
            [MarshalAs(UnmanagedType.ByValArray, SizeConst = 382)]
            public byte[] Reserved2;
            public IDSECTOR()
            {
                VendorUnique = new short[3];
                Reserved2 = new byte[382];
                FirmwareRevision = new char[8];
                SerialNumber = new char[20];
                ModelNumber = new char[40];
            }
        }

        [StructLayout(LayoutKind.Sequential)]
        private class SENDCMDOUTPARAMS
        {
            public int BufferSize;
            public DRIVERSTATUS Status;
            public IDSECTOR IDS;
            public SENDCMDOUTPARAMS()
            {
                Status = new DRIVERSTATUS();
                IDS = new IDSECTOR();
            }
        }

        [System.Runtime.InteropServices.DllImport("kernel32.dll")]
        private static extern int CloseHandle(int hObject);

        [System.Runtime.InteropServices.DllImport("kernel32.dll")]
        private static extern int CreateFile(
                    string lpFileName,
                    uint dwDesiredAccess,
                    int dwShareMode,
                    int lpSecurityAttributes,
                    int dwCreationDisposition,
                    int dwFlagsAndAttributes,
                    int hTemplateFile
                );

        [System.Runtime.InteropServices.DllImport("kernel32.dll")]
        private static extern int DeviceIoControl(
                int hDevice,
                int dwIoControlCode,
                [In(), Out()] SENDCMDINPARAMS lpInBuffer,
                int lpInBufferSize,
                [In(), Out()] SENDCMDOUTPARAMS lpOutBuffer,
                int lpOutBufferSize,
                ref int lpBytesReturned,
                int lpOverlapped
            );

        private string SwapChars(char[] chars)
        {
            for (int i = 0; i <= chars.Length - 2; i += 2)
            {
                char t;
                t = chars[i];
                chars[i] = chars[i + 1];
                chars[i + 1] = t;
            }
            string s = new string(chars);
            return s;
        }

        #endregion

        public string masohdd = "";
        // GET: Users
        public ActionResult Login()
        {
       
            return View();
        }
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult Login(LoginViewModel UserCF)
        {
            try
            {
                GetSerial();
                if (!ModelState.IsValid)
                {
                    return View(UserCF);
                }
                //kien tra ma
                var valima = db.DmDonViCF.Where(x => x.MS == masohdd.Trim()).FirstOrDefault();
                if (valima == null)
                {
                    TempData["thongbao"] = "Chưa cấp bản quyền sử dụng cho host.";
                    TempData["message"] = 1;
                    return View(UserCF);
                }
                else
                {
                    //kiem tra han su dung
                    var usid = UserCF.UserID.Trim();
                    var itemUser = db.UserCF.Where(x => x.UserID == usid).FirstOrDefault();
                    var cty_id = itemUser.TenCongTy_ID;
                    var item = db.DmCongTyCF.Where(x => x.CongTy_ID == cty_id).FirstOrDefault();
                    
                    string sngayhethan = ThienPhong.Decrypt(item.MS02, "thien@04120110@cungtroi");
                    string sngayHienTai = ThienPhong.Decrypt(item.MS01, "hientai@2018@cungtroi");
                   
                    DateTime datehethan = DateTime.ParseExact(sngayhethan, "dd/MM/yyyy", CultureInfo.InvariantCulture);
                    DateTime datehientai = DateTime.ParseExact(sngayHienTai, "dd/MM/yyyy", CultureInfo.InvariantCulture);
                    DateTime dateWindow = DateTime.Now;
                    
                    if (datehethan <= datehientai || datehethan <= dateWindow )
                    {
                        TempData["thongbao"] = "Bạn hết hạn bản quyền sử dụng.";
                        TempData["message"] = 1;
                        return View(UserCF);
                    }

                    var Us = UserCF.UserID;
                    var pw = ThienPhong.Encrypt(UserCF.PassWord, "412110");
                    bool remberMe = UserCF.RememberMe;
                    var valiName = db.UserCF.FirstOrDefault(x => x.UserID == Us && x.PassWord == pw);
                    if (valiName != null)
                    {
                        //set userid login for Session
                        Session.Add(CommonConstants.USER_SESSION, Us);
                        //phan username    
                        var Un = valiName.UserName;
                        Session.Add(CommonConstants.NAME_SESSION, Un);
                        //phan ten cong ty
                        var congty = valiName.TenCongTy_ID;
                        Session.Add(CommonConstants.CONGTY_SESSION, congty);
                       
                        Session["user_id"] = valiName.UserID.Trim();
                        Session["congty_id"] = valiName.TenCongTy_ID;
                        Session["user_name"] = valiName.UserName;
                        Session["Password"] = valiName.PassWord;
                        Session.Timeout = 90;
                        ViewBag.id = Session["user_id"];
                        ViewBag.name = Session["user_name"];
                        GhiNhatKy();
                        if (remberMe)
                        {
                            // Add Cookies.
                            HttpCookie mycookie = new HttpCookie("LoginDetail");
                            mycookie.Values["user_id"] = UserCF.UserID;
                            mycookie.Values["Password"] = UserCF.PassWord;
                            mycookie.Expires = System.DateTime.Now.AddDays(365);
                            Response.Cookies.Add(mycookie);
                        }
                        
                        //kiem tra quyen xem bao cao cho admin
                        var validateName = db.AccessRightCF.Count(x => x.QuyenID == "FrmBaoCaoDoanhThu" && x.TaiKhoan == Us && x.Xem == true);
                        if (validateName == 1)
                        {
                            TempData["message"] = 0;
                            return RedirectToAction("Index", "Home");
                        }
                        else
                        {
                            TempData["message"] = 0;
                            return RedirectToAction("Index", "QuanLyBan");
                        }    
                    }
                    else
                    {
                        TempData["thongbao"] = "Tên đăng nhập hoặc mật khẩu không đúng.";
                        TempData["message"] = 1;
                        return View(UserCF);
                      
                    }
                }
            }
            catch
            {
                TempData["thongbao"] = "Tên đăng nhập hoặc mật khẩu không đúng.";
                TempData["message"] = 1;
                return View(UserCF);
            }

        }
        void GhiNhatKy()
        {
            var congty_id = Convert.ToInt32(System.Web.HttpContext.Current.Session[CommonConstants.CONGTY_SESSION]);
            string ipaddress;
            ipaddress = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
            if (ipaddress == "" || ipaddress == null)
                ipaddress = Request.ServerVariables["REMOTE_ADDR"];

            DmNhatKyNDCF dmNhatKyNDCF = new DmNhatKyNDCF();
            dmNhatKyNDCF.NguoiDung_ID = Session["user_id"].ToString();
            dmNhatKyNDCF.ChucNang = "Đăng nhập";
            dmNhatKyNDCF.NgayGio = DateTime.Now;
            dmNhatKyNDCF.ThaoTac = "Vừa đăng nhập";
            dmNhatKyNDCF.ThamChieu = ipaddress;
            dmNhatKyNDCF.ThamSo = "";
            dmNhatKyNDCF.SoTien = 0;
            dmNhatKyNDCF.TenCongTy_ID = congty_id;
            db.DmNhatKyNDCF.Add(dmNhatKyNDCF);
            db.SaveChanges();

        }
        public ActionResult LoginGiao()
        {
            return View();
        }
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult LoginGiao(UserCF userCF)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return View(userCF);
                }
                var UsGiao = userCF.UserID;
                var pwGiao = userCF.PassWord;
                //var valiName = db.User.FirstOrDefault(x => x.UserID == Us && x.PassWord == pw);
                if (UsGiao == "thienphong" && pwGiao == "vethoi@04120110")
                {
                    ////set name of user login for Session
                    //Session.Add(CommonConstants.USER_SESSION, Us);
                    //Session["giaoid"] = UsGiao;
                    //Session["user"] = valiName.UserName;
                    //ViewBag.id = Session["id"];
                    //ViewBag.name = Session["user"];

                    Session.Add(CommonConstants.SESSION_GIAO, UsGiao);
                    return RedirectToAction("Index", "UpdateProgram");

                }
                else
                {
                    //return Json(true, JsonRequestBehavior.AllowGet);
                    ModelState.AddModelError("", "Tên đăng nhập hoặc mật khẩu sai.");
                    return View(userCF);
                }
            }
            catch
            {
                ModelState.AddModelError("", "Liên hệ Mr Giao - 0913 423 525.");
                return View(userCF);
            }

        }
        public ActionResult logout()
        {
           
            Session["user_id"] = "";
            Session["congty_id"] = "";
            Session["user_name"] = "";
            Session.Add(CommonConstants.USER_SESSION, "");
            Session.Add(CommonConstants.NAME_SESSION, "");
            Session.Add(CommonConstants.CONGTY_SESSION, "");
            Session.Add(CommonConstants.SESSION_GIAO, "");
            // Remove Cookies.
            if (Request.Cookies["LoginDetail"] != null)
            {
                HttpCookie mycookie = Request.Cookies["LoginDetail"];
                mycookie.Expires = System.DateTime.Now.AddDays(-1);
                Response.Cookies.Add(mycookie);
            }    
            Response.Redirect("~/");
            return View();
        }
        void ShowSerialHdd()
        {
            string serialNumber = "";
            int handle, returnSize = 0;
            SENDCMDINPARAMS sci = new SENDCMDINPARAMS();
            SENDCMDOUTPARAMS sco = new SENDCMDOUTPARAMS();

            if (Environment.OSVersion.Platform == PlatformID.Win32NT)
                //               \\.\PhysicalDrive0    Opens the first physical drive.
                //               \\.\PhysicalDrive2    Opens the third physical drive.
                // see more info on http://msdn.microsoft.com/en-us/library/aa365247%28VS.85%29.aspx
                handle = CreateFile("\\\\.\\PhysicalDrive" + "0", GENERIC_READ | GENERIC_WRITE, FILE_SHARE_READ | FILE_SHARE_WRITE, 0, OPEN_EXISTING, 0, 0);
            else // for win'9x
                handle = CreateFile("\\\\.\\Smartvsd", 0, 0, 0, CREATE_NEW, 0, 0);
            if (handle != INVALID_HANDLE_VALUE)
            {
                sci.DriveRegs.Command = 0xEC;

                if (DeviceIoControl(handle, DFP_RECEIVE_DRIVE_DATA, sci, Marshal.SizeOf(sci), sco, Marshal.SizeOf(sco), ref returnSize, 0) != 0)
                {
                    serialNumber = SwapChars(sco.IDS.SerialNumber);
                }
                //txtMaSo.Text = ThienPhong.Encrypt(serialNumber.Trim(), "nhanbiet@041201101318@vethoi");

            }
            else
            {
                //txtMaSo.Text = ThienPhong.Encrypt(Getkhongcogi().Trim(), "nhanbiet@041201101318@vethoi");
            }
        }
        public ActionResult GetSerial()
        {
            //var masohdd = "";
            string serialNumber = "";
            int handle, returnSize = 0;
            SENDCMDINPARAMS sci = new SENDCMDINPARAMS();
            SENDCMDOUTPARAMS sco = new SENDCMDOUTPARAMS();

            if (Environment.OSVersion.Platform == PlatformID.Win32NT)
                //               \\.\PhysicalDrive0    Opens the first physical drive.
                //               \\.\PhysicalDrive2    Opens the third physical drive.
                // see more info on http://msdn.microsoft.com/en-us/library/aa365247%28VS.85%29.aspx
                handle = CreateFile("\\\\.\\PhysicalDrive" + "0", GENERIC_READ | GENERIC_WRITE, FILE_SHARE_READ | FILE_SHARE_WRITE, 0, OPEN_EXISTING, 0, 0);
            else // for win'9x
                handle = CreateFile("\\\\.\\Smartvsd", 0, 0, 0, CREATE_NEW, 0, 0);
            if (handle != INVALID_HANDLE_VALUE)
            {
                sci.DriveRegs.Command = 0xEC;

                if (DeviceIoControl(handle, DFP_RECEIVE_DRIVE_DATA, sci, Marshal.SizeOf(sci), sco, Marshal.SizeOf(sco), ref returnSize, 0) != 0)
                {
                    serialNumber = SwapChars(sco.IDS.SerialNumber);
                }
                masohdd = ThienPhong.Encrypt(serialNumber.Trim(), "nhanbiet@041201101318@vethoi");
                //masohdd = serialNumber.Trim();
            }
            else
            {
                masohdd = ThienPhong.Encrypt(GetThienPhong().Trim(), "nhanbiet@041201101318@vethoi");
                //masohdd = GetThienPhong().Trim();
            }
            return Json(masohdd, JsonRequestBehavior.AllowGet);
        }
        public string GetThienPhong()
        {

            //ArrayList hardDriveDetails = new ArrayList();
            string serialNumber = "";
            ManagementObjectSearcher moSearcher = new
            ManagementObjectSearcher("SELECT * FROM Win32_DiskDrive");

            foreach (ManagementObject wmi_HD in moSearcher.Get())
            {
                serialNumber = wmi_HD["SerialNumber"].ToString(); //Serial Number
            }
            return serialNumber;

        }
        public ActionResult GetMaKhachHang()
        {
            //var masohdd = "";
            string serialNumber = "";
            int handle, returnSize = 0;
            SENDCMDINPARAMS sci = new SENDCMDINPARAMS();
            SENDCMDOUTPARAMS sco = new SENDCMDOUTPARAMS();

            if (Environment.OSVersion.Platform == PlatformID.Win32NT)
                //               \\.\PhysicalDrive0    Opens the first physical drive.
                //               \\.\PhysicalDrive2    Opens the third physical drive.
                // see more info on http://msdn.microsoft.com/en-us/library/aa365247%28VS.85%29.aspx
                handle = CreateFile("\\\\.\\PhysicalDrive" + "0", GENERIC_READ | GENERIC_WRITE, FILE_SHARE_READ | FILE_SHARE_WRITE, 0, OPEN_EXISTING, 0, 0);
            else // for win'9x
                handle = CreateFile("\\\\.\\Smartvsd", 0, 0, 0, CREATE_NEW, 0, 0);
            if (handle != INVALID_HANDLE_VALUE)
            {
                sci.DriveRegs.Command = 0xEC;

                if (DeviceIoControl(handle, DFP_RECEIVE_DRIVE_DATA, sci, Marshal.SizeOf(sci), sco, Marshal.SizeOf(sco), ref returnSize, 0) != 0)
                {
                    serialNumber = SwapChars(sco.IDS.SerialNumber);
                }
                //masohdd = ThienPhong.Encrypt(serialNumber.Trim(), "nhanbiet@041201101318@vethoi");
                masohdd = serialNumber.Trim();
            }
            else
            {
                //masohdd = ThienPhong.Encrypt(GetThienPhong().Trim(), "nhanbiet@041201101318@vethoi");
                masohdd = GetThienPhong().Trim();
            }
            return Json(masohdd, JsonRequestBehavior.AllowGet);
        }
        public ActionResult CheckUserPass(string UserID)
        {
            //var passE = ThienPhong.Encrypt(Pass, "412110");
            var valiName = db.UserCF.FirstOrDefault(x => x.UserID == UserID);
            if (valiName != null)
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
        }
        public ActionResult ResetPass()
        {
            return View();
        }
        public ActionResult CheckUseIdAndPass(string UserID, string Pass)
        {
            var pass = ThienPhong.Encrypt(Pass, "412110");
            var valiValue = db.UserCF.Where(x => x.UserID == UserID && x.PassWord == pass).FirstOrDefault();
            if (valiValue != null)
            {
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
        }
        public ActionResult _PartialMessageBox()
        {
            return PartialView();
        }
    }
}