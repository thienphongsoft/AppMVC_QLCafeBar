using MyDatabase;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Management;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.Mvc;
using WebAppMVC.ClassCommon;

namespace WebAppMVC.Controllers
{
    public class DangKyController : Controller
    {
        // GET: DangKy
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
        // GET: DangKy
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult UploadFiles()
        {
            bool isSuccess = false;
            string serverMessage = string.Empty;
            var fileOne = Request.Files[0] as HttpPostedFileBase;
            string uploadPath = ConfigurationManager.AppSettings["UPLOAD_PATH"].ToString();
            string newFileOne = Path.Combine(uploadPath, fileOne.FileName);

            fileOne.SaveAs(newFileOne);


            if (System.IO.File.Exists(newFileOne))
            {
                isSuccess = true;
                serverMessage = "Files have been uploaded successfully";
            }
            else
            {
                isSuccess = false;
                serverMessage = "Files upload is failed. Please try again.";
            }
            return Json(new { IsSucccess = isSuccess, ServerMessage = serverMessage }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult GetSerial()
        {
            try
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
            catch
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }
        }
        public string GetThienPhong()
        {

            //ArrayList hardDriveDetails = new ArrayList();
            string serialNumber = "";
            ManagementObjectSearcher moSearcher = new
            ManagementObjectSearcher("SELECT * FROM Win32_DiskDrive");

            foreach (ManagementObject wmi_HD in moSearcher.Get())
            {
                //HardDrive hd = new HardDrive();  // User Defined Class
                ////hd.Model = wmi_HD["Model"].ToString();  //Model Number
                ////hd.Type = wmi_HD["InterfaceType"].ToString();  //Interface Type
                //hd.SerialNo = wmi_HD["SerialNumber"].ToString(); //Serial Number
                //hardDriveDetails.Add(hd);
                //label1.Text = "Model : " + hd.Model;
                //label2.Text = " Type : " + hd.Type;
                serialNumber = wmi_HD["SerialNumber"].ToString(); //Serial Number
            }
            return serialNumber;

        }

        public ActionResult _BanQuyen()
        {
            return PartialView();
        }
        public ActionResult GetBanQuyen()
        {
            try
            {
                var items = db.DmDonViCF.Where(x => x.DonVi_ID == 1).FirstOrDefault();

                var TenCty = ThienPhong.Decrypt(items.TenDonVi, "412110");
                return Json(new { TenCty }, JsonRequestBehavior.AllowGet);
            }
            catch
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }

        }
        public JsonResult UpdateDangKy(string Ma01, string Ma02, string Ma03, string Ma04)
        {
            try
            {
                GetSerial();
                bool isSuccess = false;
                string serverMessage = string.Empty;
                //insert 
                if (masohdd != Ma01)
                {
                    isSuccess = false;
                    serverMessage = "Bản quyền không đúng. Bạn đăng ký thất bại.";
                    return Json(new { IsSucccess = isSuccess, ServerMessage = serverMessage }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    isSuccess = true;
                    serverMessage = "Chúc mừng! Bạn đã đăng ký thành công.";
                    string sten = "Thiên Phong";
                    DmDonViCF dmDonVi = new DmDonViCF();
                    dmDonVi.TenDonVi = ThienPhong.Encrypt(sten, "412110");
                    dmDonVi.MS = Ma01.Trim();
                    db.DmDonViCF.Add(dmDonVi);
                    db.SaveChanges();


                    //update
                    var row = db.DmDonViCF.FirstOrDefault(x => x.DonVi_ID == 1);
                    row.MS = Ma01; //MA HDD
                    db.Entry(row).State = EntityState.Modified;
                    db.SaveChanges();

                    return Json(new { IsSucccess = isSuccess, ServerMessage = serverMessage }, JsonRequestBehavior.AllowGet);
                }
            }
            catch
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }

        }
    }
}