using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace MyDatabase
{
    public partial class MyDB : DbContext
    {
        public MyDB()
            : base("name=MyDB")
        {
        }

        public virtual DbSet<AccessRightCF> AccessRightCF { get; set; }
        public virtual DbSet<CT_NhapHangCF> CT_NhapHangCF { get; set; }
        public virtual DbSet<CT_XuatHangCF> CT_XuatHangCF { get; set; }
        public virtual DbSet<ChietTinhPhieuXuat_IDCF> ChietTinhPhieuXuat_IDCF { get; set; }
        public virtual DbSet<ChiTietDinhNghiaMHCF> ChiTietDinhNghiaMHCF { get; set; }
        public virtual DbSet<DmBanCF> DmBanCF { get; set; }
        public virtual DbSet<DmCongTyCF> DmCongTyCF { get; set; }
        public virtual DbSet<DmDinhNghiaMHCF> DmDinhNghiaMHCF { get; set; }
        public virtual DbSet<DmDoiTuongCF> DmDoiTuongCF { get; set; }
        public virtual DbSet<DmDonViCF> DmDonViCF { get; set; }
        public virtual DbSet<DmDVTCF> DmDVTCF { get; set; }
        public virtual DbSet<DmHangHoaCF> DmHangHoaCF { get; set; }
        public virtual DbSet<DmKhoGiayInCF> DmKhoGiayInCF { get; set; }
        public virtual DbSet<DmLoaiDTCF> DmLoaiDTCF { get; set; }
        public virtual DbSet<DmLoaiHHCF> DmLoaiHHCF { get; set; }
        public virtual DbSet<DmNganHangCF> DmNganHangCF { get; set; }
        public virtual DbSet<DmNhatKyNDCF> DmNhatKyNDCF { get; set; }
        public virtual DbSet<DmThuChiCF> DmThuChiCF { get; set; }
        public virtual DbSet<Ph_CongNoKHCF> Ph_CongNoKHCF { get; set; }
        public virtual DbSet<Ph_CongNoNCCCF> Ph_CongNoNCCCF { get; set; }
        public virtual DbSet<Ph_ChiCF> Ph_ChiCF { get; set; }
        public virtual DbSet<Ph_NhapCF> Ph_NhapCF { get; set; }
        public virtual DbSet<Ph_ThuCF> Ph_ThuCF { get; set; }
        public virtual DbSet<Ph_XuatCF> Ph_XuatCF { get; set; }
        public virtual DbSet<ScreenCF> ScreenCF { get; set; }
        public virtual DbSet<SD_TonKhoCF> SD_TonKhoCF { get; set; }
        public virtual DbSet<ThamSoHeThongCF> ThamSoHeThongCF { get; set; }
        public virtual DbSet<UserCF> UserCF { get; set; }
        public virtual DbSet<SD_TienMatCF> SD_TienMatCF { get; set; }
        public virtual DbSet<CT_InBepWebCF> CT_InBepWebCF { get; set; }
        public virtual DbSet<Ph_InBepWebCF> Ph_InBepWebCF { get; set; }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<CT_NhapHangCF>()
                .Property(e => e.SoLuong)
                .HasPrecision(19, 4);

            modelBuilder.Entity<CT_NhapHangCF>()
                .Property(e => e.DonGiaVon)
                .HasPrecision(19, 4);

            modelBuilder.Entity<CT_NhapHangCF>()
                .Property(e => e.ThanhTienVon)
                .HasPrecision(19, 4);

            modelBuilder.Entity<CT_NhapHangCF>()
                .Property(e => e.DonGiaTraLai)
                .HasPrecision(19, 4);

            modelBuilder.Entity<CT_NhapHangCF>()
                .Property(e => e.ThanhTienTraLai)
                .HasPrecision(19, 4);

            modelBuilder.Entity<CT_NhapHangCF>()
                .Property(e => e.TienChietKhau)
                .HasPrecision(19, 4);

            modelBuilder.Entity<CT_NhapHangCF>()
                .Property(e => e.TyLeChietKhau)
                .HasPrecision(19, 4);

            modelBuilder.Entity<CT_NhapHangCF>()
                .Property(e => e.DonGiaBan)
                .HasPrecision(19, 4);

            modelBuilder.Entity<CT_XuatHangCF>()
                .Property(e => e.SoLuong)
                .HasPrecision(19, 4);

            modelBuilder.Entity<CT_XuatHangCF>()
                .Property(e => e.DonGiaBan)
                .HasPrecision(19, 4);

            modelBuilder.Entity<CT_XuatHangCF>()
                .Property(e => e.ThanhTienBan)
                .HasPrecision(19, 4);

            modelBuilder.Entity<CT_XuatHangCF>()
                .Property(e => e.DonGiaVon)
                .HasPrecision(19, 4);

            modelBuilder.Entity<CT_XuatHangCF>()
                .Property(e => e.ThanhTienVon)
                .HasPrecision(19, 4);

            modelBuilder.Entity<CT_XuatHangCF>()
                .Property(e => e.TyleChietKhau)
                .HasPrecision(19, 4);

            modelBuilder.Entity<CT_XuatHangCF>()
                .Property(e => e.TienChietKhau)
                .HasPrecision(19, 4);
                       
            modelBuilder.Entity<ChiTietDinhNghiaMHCF>()
                .Property(e => e.SoLuong)
                .HasPrecision(19, 4);

            modelBuilder.Entity<DmDinhNghiaMHCF>()
                .Property(e => e.GiaBan1)
                .HasPrecision(19, 4);

            modelBuilder.Entity<DmDinhNghiaMHCF>()
                .Property(e => e.GiaBan2)
                .HasPrecision(19, 4);

            modelBuilder.Entity<DmDinhNghiaMHCF>()
                .Property(e => e.GiaBan3)
                .HasPrecision(19, 4);

            modelBuilder.Entity<DmDoiTuongCF>()
                .Property(e => e.MaDT)
                .IsFixedLength();

            modelBuilder.Entity<DmHangHoaCF>()
                .Property(e => e.GiaMua)
                .HasPrecision(19, 4);

            modelBuilder.Entity<DmHangHoaCF>()
                .Property(e => e.GiaBan1)
                .HasPrecision(19, 4);

            modelBuilder.Entity<DmHangHoaCF>()
                .Property(e => e.GiaBan2)
                .HasPrecision(19, 4);

            modelBuilder.Entity<DmHangHoaCF>()
                .Property(e => e.GiaBan3)
                .HasPrecision(19, 4);

            modelBuilder.Entity<DmNhatKyNDCF>()
                .Property(e => e.SoTien)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Ph_CongNoKHCF>()
                .Property(e => e.GiaTri)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Ph_CongNoKHCF>()
                .Property(e => e.CongNo)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Ph_CongNoKHCF>()
                .Property(e => e.SoChungTu)
                .IsFixedLength();

            modelBuilder.Entity<Ph_CongNoNCCCF>()
                .Property(e => e.GiaTri)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Ph_CongNoNCCCF>()
                .Property(e => e.CongNo)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Ph_CongNoNCCCF>()
                .Property(e => e.SoChungTu)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Ph_ChiCF>()
                .Property(e => e.SoTien)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Ph_NhapCF>()
                .Property(e => e.TienHang)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Ph_NhapCF>()
                .Property(e => e.TienThue)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Ph_NhapCF>()
                .Property(e => e.TongTien)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Ph_NhapCF>()
                .Property(e => e.ThueSuat)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Ph_NhapCF>()
                .Property(e => e.Status)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Ph_ThuCF>()
                .Property(e => e.SoTien)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Ph_XuatCF>()
                .Property(e => e.TienHang)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Ph_XuatCF>()
                .Property(e => e.TienThue)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Ph_XuatCF>()
                .Property(e => e.TongTien)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Ph_XuatCF>()
                .Property(e => e.ThueSuat)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Ph_XuatCF>()
                .Property(e => e.TyLeGiamGia)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Ph_XuatCF>()
                .Property(e => e.TienGiamGia)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Ph_XuatCF>()
                .Property(e => e.TyLePPhucVu)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Ph_XuatCF>()
                .Property(e => e.TienPPhucVu)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Ph_XuatCF>()
                .Property(e => e.TienPhatSinh)
                .HasPrecision(19, 4);

            modelBuilder.Entity<SD_TonKhoCF>()
                .Property(e => e.SoLuong)
                .HasPrecision(19, 4);

            modelBuilder.Entity<SD_TonKhoCF>()
                .Property(e => e.GiaVon)
                .HasPrecision(19, 4);

            modelBuilder.Entity<SD_TonKhoCF>()
                .Property(e => e.GiaTri)
                .HasPrecision(19, 4);

            modelBuilder.Entity<SD_TonKhoCF>()
                .Property(e => e.Status)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<SD_TienMatCF>()
                .Property(e => e.SoTien)
                .HasPrecision(19, 4);
        }
    }
}
