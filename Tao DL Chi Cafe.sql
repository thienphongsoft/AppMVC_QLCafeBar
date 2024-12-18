USE [ThienPhong]
GO
/****** Object:  Table [dbo].[Ph_XuatCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ph_XuatCF](
	[PhNhapXuat_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[LoaiNhapXuat_ID] [bigint] NULL,
	[DT_ID] [bigint] NULL,
	[NguoiDung_ID] [nvarchar](150) NULL,
	[SoPhieu] [nvarchar](10) NULL,
	[SoPhieu_ID] [bigint] NULL,
	[NgayPhieu] [datetime] NULL,
	[NguoiGiaoNhan] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[TienHang] [money] NULL,
	[TienThue] [money] NULL,
	[TongTien] [money] NULL,
	[ThueSuat] [money] NULL,
	[DienGiai] [nvarchar](max) NULL,
	[ThuTienNgay] [bit] NULL,
	[Status] [int] NULL,
	[Ban_ID] [bigint] NULL,
	[ThanhToan] [int] NULL,
	[TyLeGiamGia] [money] NULL,
	[TienGiamGia] [money] NULL,
	[TyLePPhucVu] [money] NULL,
	[TienPPhucVu] [money] NULL,
	[TienPhatSinh] [money] NULL,
	[LyDoPhatSinh] [nvarchar](max) NULL,
	[GioVao] [datetime] NULL,
	[GioRa] [datetime] NULL,
	[TenCongTy_ID] [bigint] NULL,
	[GhiNo] [bit] NULL,
	[TienMat] [bit] NULL,
	[ChuyenKhoan] [bit] NULL,
 CONSTRAINT [PK_Ph_XuatCF] PRIMARY KEY CLUSTERED 
(
	[PhNhapXuat_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ph_XuatCF] ON
INSERT [dbo].[Ph_XuatCF] ([PhNhapXuat_ID], [LoaiNhapXuat_ID], [DT_ID], [NguoiDung_ID], [SoPhieu], [SoPhieu_ID], [NgayPhieu], [NguoiGiaoNhan], [DiaChi], [TienHang], [TienThue], [TongTien], [ThueSuat], [DienGiai], [ThuTienNgay], [Status], [Ban_ID], [ThanhToan], [TyLeGiamGia], [TienGiamGia], [TyLePPhucVu], [TienPPhucVu], [TienPhatSinh], [LyDoPhatSinh], [GioVao], [GioRa], [TenCongTy_ID], [GhiNo], [TienMat], [ChuyenKhoan]) VALUES (201, 2, 6, N'Admin', N'XB', 3, CAST(0x0000AFAC00000000 AS DateTime), N' ', NULL, 210000.0000, 0.0000, 210000.0000, 0.0000, N' ', 1, 1, 7, 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, N' ', CAST(0x0000AFAC00FCDF8C AS DateTime), NULL, 1, 0, 0, 0)
INSERT [dbo].[Ph_XuatCF] ([PhNhapXuat_ID], [LoaiNhapXuat_ID], [DT_ID], [NguoiDung_ID], [SoPhieu], [SoPhieu_ID], [NgayPhieu], [NguoiGiaoNhan], [DiaChi], [TienHang], [TienThue], [TongTien], [ThueSuat], [DienGiai], [ThuTienNgay], [Status], [Ban_ID], [ThanhToan], [TyLeGiamGia], [TienGiamGia], [TyLePPhucVu], [TienPPhucVu], [TienPhatSinh], [LyDoPhatSinh], [GioVao], [GioRa], [TenCongTy_ID], [GhiNo], [TienMat], [ChuyenKhoan]) VALUES (204, 2, 6, N'admin', N'XB', 5, CAST(0x0000AFC400000000 AS DateTime), N'', N'', 0.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 1, 11, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, N'', CAST(0x0000AFC40160B048 AS DateTime), NULL, 1, 0, 0, 0)
INSERT [dbo].[Ph_XuatCF] ([PhNhapXuat_ID], [LoaiNhapXuat_ID], [DT_ID], [NguoiDung_ID], [SoPhieu], [SoPhieu_ID], [NgayPhieu], [NguoiGiaoNhan], [DiaChi], [TienHang], [TienThue], [TongTien], [ThueSuat], [DienGiai], [ThuTienNgay], [Status], [Ban_ID], [ThanhToan], [TyLeGiamGia], [TienGiamGia], [TyLePPhucVu], [TienPPhucVu], [TienPhatSinh], [LyDoPhatSinh], [GioVao], [GioRa], [TenCongTy_ID], [GhiNo], [TienMat], [ChuyenKhoan]) VALUES (205, 2, 13, N'ben', N'XB', 1, CAST(0x0000AFC400000000 AS DateTime), N'', N'', 0.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 1, 37, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, N'', CAST(0x0000AFC40160EAE0 AS DateTime), NULL, 13, 0, 0, 0)
INSERT [dbo].[Ph_XuatCF] ([PhNhapXuat_ID], [LoaiNhapXuat_ID], [DT_ID], [NguoiDung_ID], [SoPhieu], [SoPhieu_ID], [NgayPhieu], [NguoiGiaoNhan], [DiaChi], [TienHang], [TienThue], [TongTien], [ThueSuat], [DienGiai], [ThuTienNgay], [Status], [Ban_ID], [ThanhToan], [TyLeGiamGia], [TienGiamGia], [TyLePPhucVu], [TienPPhucVu], [TienPhatSinh], [LyDoPhatSinh], [GioVao], [GioRa], [TenCongTy_ID], [GhiNo], [TienMat], [ChuyenKhoan]) VALUES (211, 2, 6, N'Admin', N'XB', 6, CAST(0x0000B01A00000000 AS DateTime), N' ', NULL, 40000.0000, 0.0000, 40000.0000, 0.0000, N' ', 1, 1, 17, 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, N' ', CAST(0x0000B01A0125FC28 AS DateTime), CAST(0x0000B01A0125FC28 AS DateTime), 1, 0, 1, 0)
INSERT [dbo].[Ph_XuatCF] ([PhNhapXuat_ID], [LoaiNhapXuat_ID], [DT_ID], [NguoiDung_ID], [SoPhieu], [SoPhieu_ID], [NgayPhieu], [NguoiGiaoNhan], [DiaChi], [TienHang], [TienThue], [TongTien], [ThueSuat], [DienGiai], [ThuTienNgay], [Status], [Ban_ID], [ThanhToan], [TyLeGiamGia], [TienGiamGia], [TyLePPhucVu], [TienPPhucVu], [TienPhatSinh], [LyDoPhatSinh], [GioVao], [GioRa], [TenCongTy_ID], [GhiNo], [TienMat], [ChuyenKhoan]) VALUES (212, 2, 6, N'Admin', N'XB', 7, CAST(0x0000B04900000000 AS DateTime), N' ', NULL, 23000.0000, 0.0000, 23000.0000, 0.0000, N' ', 1, 1, 5, 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, N' ', CAST(0x0000B04901084200 AS DateTime), CAST(0x0000B04901084200 AS DateTime), 1, 0, 1, 0)
SET IDENTITY_INSERT [dbo].[Ph_XuatCF] OFF
/****** Object:  Table [dbo].[Ph_ThuCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ph_ThuCF](
	[ThuChi_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PhNhapXuat_ID] [bigint] NULL,
	[DT_ID] [bigint] NULL,
	[LoaiThuChi_ID] [bigint] NULL,
	[SoPhieu_ID] [bigint] NULL,
	[SoPhieu] [nvarchar](20) NULL,
	[NgayPhieu] [datetime] NULL,
	[NguoiNhanNop] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[LyDo] [nvarchar](50) NULL,
	[SoTien] [money] NULL,
	[HinhThucThanhToan] [bit] NULL,
	[NganHang_ID] [bigint] NULL,
	[TenCongTy_ID] [bigint] NULL,
	[UserID] [nvarchar](100) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Ph_ThuCF] PRIMARY KEY CLUSTERED 
(
	[ThuChi_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ph_ThuCF] ON
INSERT [dbo].[Ph_ThuCF] ([ThuChi_ID], [PhNhapXuat_ID], [DT_ID], [LoaiThuChi_ID], [SoPhieu_ID], [SoPhieu], [NgayPhieu], [NguoiNhanNop], [DiaChi], [LyDo], [SoTien], [HinhThucThanhToan], [NganHang_ID], [TenCongTy_ID], [UserID], [Status]) VALUES (147, 0, 3, 1, 1, N'PT', CAST(0x0000AFAC00000000 AS DateTime), N'', N'', N'', 100000.0000, 0, 1, 1, N'Admin', 0)
INSERT [dbo].[Ph_ThuCF] ([ThuChi_ID], [PhNhapXuat_ID], [DT_ID], [LoaiThuChi_ID], [SoPhieu_ID], [SoPhieu], [NgayPhieu], [NguoiNhanNop], [DiaChi], [LyDo], [SoTien], [HinhThucThanhToan], [NganHang_ID], [TenCongTy_ID], [UserID], [Status]) VALUES (148, 0, 5, 1, 2, N'PT', CAST(0x0000AFAC00000000 AS DateTime), N'', N'cxvcx', N'', 55555.0000, 0, 9, 1, N'Admin', 0)
INSERT [dbo].[Ph_ThuCF] ([ThuChi_ID], [PhNhapXuat_ID], [DT_ID], [LoaiThuChi_ID], [SoPhieu_ID], [SoPhieu], [NgayPhieu], [NguoiNhanNop], [DiaChi], [LyDo], [SoTien], [HinhThucThanhToan], [NganHang_ID], [TenCongTy_ID], [UserID], [Status]) VALUES (149, 0, 3, 1, 3, N'PT', CAST(0x0000AFAC00000000 AS DateTime), NULL, NULL, NULL, 500000.0000, 1, 0, 1, NULL, 0)
INSERT [dbo].[Ph_ThuCF] ([ThuChi_ID], [PhNhapXuat_ID], [DT_ID], [LoaiThuChi_ID], [SoPhieu_ID], [SoPhieu], [NgayPhieu], [NguoiNhanNop], [DiaChi], [LyDo], [SoTien], [HinhThucThanhToan], [NganHang_ID], [TenCongTy_ID], [UserID], [Status]) VALUES (157, 201, 6, 1, 10, N'PT', CAST(0x0000AFAC00000000 AS DateTime), NULL, NULL, N' ', 210000.0000, 0, NULL, 1, N'Admin', 0)
INSERT [dbo].[Ph_ThuCF] ([ThuChi_ID], [PhNhapXuat_ID], [DT_ID], [LoaiThuChi_ID], [SoPhieu_ID], [SoPhieu], [NgayPhieu], [NguoiNhanNop], [DiaChi], [LyDo], [SoTien], [HinhThucThanhToan], [NganHang_ID], [TenCongTy_ID], [UserID], [Status]) VALUES (159, 211, 6, 1, 11, N'PT', CAST(0x0000B01A00000000 AS DateTime), NULL, NULL, N' ', 40000.0000, 1, 0, 1, N'Admin', 0)
INSERT [dbo].[Ph_ThuCF] ([ThuChi_ID], [PhNhapXuat_ID], [DT_ID], [LoaiThuChi_ID], [SoPhieu_ID], [SoPhieu], [NgayPhieu], [NguoiNhanNop], [DiaChi], [LyDo], [SoTien], [HinhThucThanhToan], [NganHang_ID], [TenCongTy_ID], [UserID], [Status]) VALUES (160, 212, 6, 1, 12, N'PT', CAST(0x0000B04900000000 AS DateTime), NULL, NULL, N' ', 23000.0000, 1, 0, 1, N'Admin', 0)
SET IDENTITY_INSERT [dbo].[Ph_ThuCF] OFF
/****** Object:  Table [dbo].[Ph_NhapCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ph_NhapCF](
	[PhNhapXuat_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[LoaiNhapXuat_ID] [bigint] NULL,
	[DT_ID] [bigint] NULL,
	[KhoNhap_ID] [bigint] NULL,
	[NguoiDung_ID] [nvarchar](20) NULL,
	[SoPhieu] [nvarchar](10) NULL,
	[NgayPhieu] [datetime] NULL,
	[NguoiGiaoNhan] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[TienHang] [money] NULL,
	[TienThue] [money] NULL,
	[TongTien] [money] NULL,
	[ThueSuat] [money] NULL,
	[DienGiai] [nvarchar](50) NULL,
	[TraTienNgay] [bit] NULL,
	[Status] [char](2) NULL,
	[TenCongTy_ID] [bigint] NULL,
 CONSTRAINT [PK_Ph_NhapCF] PRIMARY KEY CLUSTERED 
(
	[PhNhapXuat_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ph_InBepWebCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ph_InBepWebCF](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Ban_ID] [bigint] NULL,
	[SoPhieu] [bigint] NULL,
	[SoPhieu_ID] [bigint] NULL,
	[NgayGio] [datetime] NULL,
	[TenTaiKhoan] [nvarchar](20) NULL,
	[TenCongTy_ID] [bigint] NULL,
 CONSTRAINT [PK_PhieuInBepWebCF] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ph_CongNoNCCCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ph_CongNoNCCCF](
	[CongNo_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PhNhapXuat_ID] [bigint] NULL,
	[ThuChi_ID] [bigint] NULL,
	[PhChiPhi_ID] [bigint] NULL,
	[DT_ID] [bigint] NULL,
	[LoaiCongNo_ID] [bigint] NULL,
	[DonVi_ID] [bigint] NULL,
	[GiaTri] [money] NULL,
	[CongNo] [money] NULL,
	[NgayPhatSinh] [datetime] NULL,
	[DienGiai] [nvarchar](50) NULL,
	[SoChungTu] [char](10) NULL,
	[HanThanhToan] [datetime] NULL,
	[ThamSo] [int] NULL,
 CONSTRAINT [PK_Ph_CongNoNCCCF] PRIMARY KEY CLUSTERED 
(
	[CongNo_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ph_CongNoKHCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ph_CongNoKHCF](
	[CongNo_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PhNhapXuat_ID] [bigint] NULL,
	[ThuChi_ID] [bigint] NULL,
	[DT_ID] [bigint] NULL,
	[LoaiCongNo_ID] [bigint] NULL,
	[DonVi_ID] [bigint] NULL,
	[GiaTri] [money] NULL,
	[CongNo] [money] NULL,
	[NgayPhatSinh] [datetime] NULL,
	[DienGiai] [nvarchar](50) NULL,
	[SoChungTu] [nchar](10) NULL,
	[HanThanhToan] [datetime] NULL,
	[ThamSo] [int] NULL,
	[UserID] [nvarchar](100) NULL,
	[TenCongTy_ID] [bigint] NULL,
 CONSTRAINT [PK_Ph_CongNoKHCF] PRIMARY KEY CLUSTERED 
(
	[CongNo_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ph_CongNoKHCF] ON
INSERT [dbo].[Ph_CongNoKHCF] ([CongNo_ID], [PhNhapXuat_ID], [ThuChi_ID], [DT_ID], [LoaiCongNo_ID], [DonVi_ID], [GiaTri], [CongNo], [NgayPhatSinh], [DienGiai], [SoChungTu], [HanThanhToan], [ThamSo], [UserID], [TenCongTy_ID]) VALUES (25, 0, 147, 3, 1, 1, -100000.0000, NULL, CAST(0x0000AFAC00000000 AS DateTime), N'Nợ có', N'PT1       ', NULL, NULL, N'Admin', 1)
INSERT [dbo].[Ph_CongNoKHCF] ([CongNo_ID], [PhNhapXuat_ID], [ThuChi_ID], [DT_ID], [LoaiCongNo_ID], [DonVi_ID], [GiaTri], [CongNo], [NgayPhatSinh], [DienGiai], [SoChungTu], [HanThanhToan], [ThamSo], [UserID], [TenCongTy_ID]) VALUES (28, 0, 148, 5, 1, 1, -55555.0000, NULL, CAST(0x0000AFAC00000000 AS DateTime), N'Nợ có', N'PT2       ', NULL, NULL, N'Admin', 1)
INSERT [dbo].[Ph_CongNoKHCF] ([CongNo_ID], [PhNhapXuat_ID], [ThuChi_ID], [DT_ID], [LoaiCongNo_ID], [DonVi_ID], [GiaTri], [CongNo], [NgayPhatSinh], [DienGiai], [SoChungTu], [HanThanhToan], [ThamSo], [UserID], [TenCongTy_ID]) VALUES (29, 0, 149, 3, 1, 1, -500000.0000, NULL, CAST(0x0000AFAC00000000 AS DateTime), N'Nợ có', N'PT        ', NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Ph_CongNoKHCF] OFF
/****** Object:  Table [dbo].[Ph_ChiCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ph_ChiCF](
	[ThuChi_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TinhCuoc_ID] [bigint] NULL,
	[DT_ID] [bigint] NULL,
	[LoaiThuChi_ID] [bigint] NULL,
	[SoPhieu] [bigint] NULL,
	[NgayPhieu] [datetime] NULL,
	[NguoiNhanNop] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[LyDo] [nvarchar](50) NULL,
	[SoTien] [money] NULL,
	[HinhThucThanhToan] [bit] NULL,
	[NganHang_ID] [bigint] NULL,
	[TenCongTy_ID] [bigint] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Ph_ChiCF] PRIMARY KEY CLUSTERED 
(
	[ThuChi_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DmThuChiCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DmThuChiCF](
	[LoaiThuChi_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TenLoaiThuChi] [nvarchar](50) NULL,
	[ThuHayChi] [bigint] NULL,
	[CongNo] [bit] NULL,
	[TenCongTy_ID] [bigint] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_DmThuChiCF] PRIMARY KEY CLUSTERED 
(
	[LoaiThuChi_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DmThuChiCF] ON
INSERT [dbo].[DmThuChiCF] ([LoaiThuChi_ID], [TenLoaiThuChi], [ThuHayChi], [CongNo], [TenCongTy_ID], [Status]) VALUES (1, N'Thu tiền bán hàng', 1, 1, 1, 0)
INSERT [dbo].[DmThuChiCF] ([LoaiThuChi_ID], [TenLoaiThuChi], [ThuHayChi], [CongNo], [TenCongTy_ID], [Status]) VALUES (4, N'Thu khác', 1, 0, 1, 0)
INSERT [dbo].[DmThuChiCF] ([LoaiThuChi_ID], [TenLoaiThuChi], [ThuHayChi], [CongNo], [TenCongTy_ID], [Status]) VALUES (7, N'Thu tiền bán hàng', 1, 1, 4, 0)
INSERT [dbo].[DmThuChiCF] ([LoaiThuChi_ID], [TenLoaiThuChi], [ThuHayChi], [CongNo], [TenCongTy_ID], [Status]) VALUES (8, N'Thu khác', 1, 0, 4, 0)
INSERT [dbo].[DmThuChiCF] ([LoaiThuChi_ID], [TenLoaiThuChi], [ThuHayChi], [CongNo], [TenCongTy_ID], [Status]) VALUES (13, N'Chi tiền mua hàng', 0, 1, 1, 0)
SET IDENTITY_INSERT [dbo].[DmThuChiCF] OFF
/****** Object:  Table [dbo].[DmNhatKyNDCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DmNhatKyNDCF](
	[NhatKyND_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[NguoiDung_ID] [nvarchar](10) NULL,
	[ChucNang] [nvarchar](50) NULL,
	[NgayGio] [datetime] NULL,
	[ThaoTac] [nvarchar](100) NULL,
	[ThamChieu] [nvarchar](max) NULL,
	[ThamSo] [nvarchar](50) NULL,
	[SoTien] [money] NULL,
	[TenCongTy_ID] [bigint] NULL,
 CONSTRAINT [PK_DmNhatKyNDCF] PRIMARY KEY CLUSTERED 
(
	[NhatKyND_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DmNhatKyNDCF] ON
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (145, N'Admin', N'Đăng nhập', CAST(0x0000AECE010AAF2B AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (146, N'Admin', N'Đăng nhập', CAST(0x0000AECE010CF699 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (147, N'Admin', N'Đăng nhập', CAST(0x0000AECE010DBCDC AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (148, N'Admin', N'Đăng nhập', CAST(0x0000AECE010F12F6 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (149, N'Admin', N'Xuất bán', CAST(0x0000AECE010F2347 AS DateTime), N'Thêm', N'XB000005', N'Đã trả tiền', 40000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (150, N'Admin', N'Đăng nhập', CAST(0x0000AECE0110DD90 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (151, N'Admin', N'Xuất bán', CAST(0x0000AECE0110F875 AS DateTime), N'Tạm tính', N'XB000013', N'Đã trả tiền', 85000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (152, N'Admin', N'Đăng nhập', CAST(0x0000AECE01111EC9 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (153, N'Admin', N'Đăng nhập', CAST(0x0000AECE0113C62B AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (154, N'Admin', N'Đăng nhập', CAST(0x0000AECE0115C2F3 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (155, N'Admin', N'Đăng nhập', CAST(0x0000AED1007F4B39 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (156, N'Admin', N'Đăng nhập', CAST(0x0000AED100879137 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (157, N'Admin', N'Xuất bán', CAST(0x0000AED10087ABD3 AS DateTime), N'Tạm tính', N'XB000014', N'Đã trả tiền', 70000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (158, N'Admin', N'Đăng nhập', CAST(0x0000AED100899BA6 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (159, N'Admin', N'Xuất bán', CAST(0x0000AED10089C149 AS DateTime), N'Tạm tính', N'XB000015', N'Đã trả tiền', 159000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (160, N'Admin', N'Đăng nhập', CAST(0x0000AED1008B6B69 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (161, N'Admin', N'Đăng nhập', CAST(0x0000AED1008D6A4D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (162, N'Admin', N'Đăng nhập', CAST(0x0000AED100AC0F8A AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (163, N'Admin', N'Đăng nhập', CAST(0x0000AED100AE5483 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (164, N'Admin', N'Đăng nhập', CAST(0x0000AED100E6D4FC AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (165, N'Admin', N'Đăng nhập', CAST(0x0000AED100E74E94 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (166, N'Dat', N'Đăng nhập', CAST(0x0000AED100E7A4FF AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 3)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (167, N'Dat', N'Đăng nhập', CAST(0x0000AED100E868B3 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 3)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (168, N'Dat', N'Đăng nhập', CAST(0x0000AED100E95516 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 3)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (169, N'Dat', N'Đăng nhập', CAST(0x0000AED100E9661F AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 3)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (170, N'Dat', N'Đăng nhập', CAST(0x0000AED100EBFF25 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 3)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (171, N'Admin', N'Đăng nhập', CAST(0x0000AED100EFEE6B AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (172, N'Dat', N'Đăng nhập', CAST(0x0000AED100F00206 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 3)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (173, N'Admin', N'Đăng nhập', CAST(0x0000AED100F0531E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (174, N'Dat', N'Đăng nhập', CAST(0x0000AED100F069D7 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 3)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (175, N'Dat', N'Đăng nhập', CAST(0x0000AED100F1E73D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 3)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (176, N'Admin', N'Đăng nhập', CAST(0x0000AED100F2B5EE AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (177, N'Dat', N'Đăng nhập', CAST(0x0000AED100F321DA AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 3)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (178, N'Dat', N'Đăng nhập', CAST(0x0000AED100FA200A AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 3)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (179, N'Admin', N'Đăng nhập', CAST(0x0000AED100FBA443 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (180, N'Admin', N'Đăng nhập', CAST(0x0000AED100FC23D3 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (181, N'Admin', N'Đăng nhập', CAST(0x0000AED100FD6EF2 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (182, N'Dat', N'Đăng nhập', CAST(0x0000AED100FD7C2A AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 3)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (183, N'Dat', N'Đăng nhập', CAST(0x0000AED100FFA35E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 3)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (184, N'Admin', N'Đăng nhập', CAST(0x0000AED1010113CE AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (185, N'Dat', N'Đăng nhập', CAST(0x0000AED10102363E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 3)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (186, N'Admin', N'Đăng nhập', CAST(0x0000AED10102BD27 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (187, N'Dat', N'Đăng nhập', CAST(0x0000AED10105391F AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 3)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (188, N'Admin', N'Đăng nhập', CAST(0x0000AED1011647BF AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (189, N'Dat', N'Đăng nhập', CAST(0x0000AED10116D2B7 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 3)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (190, N'Admin', N'Đăng nhập', CAST(0x0000AED10118B5F0 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (191, N'Dat', N'Đăng nhập', CAST(0x0000AED101214A9E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 3)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (192, N'Admin', N'Đăng nhập', CAST(0x0000AED10125895D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (193, N'Admin', N'Đăng nhập', CAST(0x0000AED101276352 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (194, N'Dat', N'Đăng nhập', CAST(0x0000AED10127E4E0 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 3)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (195, N'Dat', N'Đăng nhập', CAST(0x0000AED10129DB0D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 3)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (196, N'Admin', N'Đăng nhập', CAST(0x0000AED2007096FF AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (197, N'Dat', N'Đăng nhập', CAST(0x0000AED20070F7C7 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 3)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (198, N'Admin', N'Đăng nhập', CAST(0x0000AED20072DD6E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (199, N'Dat', N'Đăng nhập', CAST(0x0000AED20072F2FF AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 3)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (200, N'Admin', N'Đăng nhập', CAST(0x0000AED200753D09 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (201, N'Dat', N'Đăng nhập', CAST(0x0000AED200758E38 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 3)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (202, N'Dat', N'Đăng nhập', CAST(0x0000AED2007642D3 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 3)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (203, N'Dat', N'Đăng nhập', CAST(0x0000AED200772D9F AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 3)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (204, N'Admin', N'Đăng nhập', CAST(0x0000AED20077A66F AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (205, N'Dat', N'Đăng nhập', CAST(0x0000AED200795D37 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 3)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (206, N'Admin', N'Đăng nhập', CAST(0x0000AED20081E17B AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (207, N'Admin', N'Đăng nhập', CAST(0x0000AED2008A24B5 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (208, N'Admin', N'Đăng nhập', CAST(0x0000AED200924AFB AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (209, N'Dat', N'Đăng nhập', CAST(0x0000AED2009629D8 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 3)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (210, N'Admin', N'Đăng nhập', CAST(0x0000AED8009716C6 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (211, N'Admin', N'Đăng nhập', CAST(0x0000AED8009FD1CE AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (212, N'Admin', N'Đăng nhập', CAST(0x0000AEDB007CC405 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (213, N'Admin', N'Đăng nhập', CAST(0x0000AEE1009BC672 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (214, N'Admin', N'Đăng nhập', CAST(0x0000AEE1009E7B0A AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (215, N'Admin', N'Đăng nhập', CAST(0x0000AEE100A2291A AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (216, N'Admin', N'Đăng nhập', CAST(0x0000AF0E00F9D10D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (217, N'Admin', N'Đăng nhập', CAST(0x0000AF0E010618F0 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (218, N'Admin', N'Xuất bán', CAST(0x0000AF0E01066660 AS DateTime), N'Thêm', N'XB000009', N'Đã trả tiền', 63000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (219, N'Admin', N'Đăng nhập', CAST(0x0000AF0F00710ED6 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (220, N'Admin', N'Đăng nhập', CAST(0x0000AF1500877A1E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (221, N'Admin', N'Đăng nhập', CAST(0x0000AF160130788E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (222, N'Admin', N'Đăng nhập', CAST(0x0000AF17006FF449 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (223, N'Admin', N'Đăng nhập', CAST(0x0000AF1700870C3F AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (224, N'Admin', N'Đăng nhập', CAST(0x0000AF17008A7383 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (225, N'Admin', N'Đăng nhập', CAST(0x0000AF17008BA2A6 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (226, N'Admin', N'Đăng nhập', CAST(0x0000AF17008E38FA AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (227, N'Admin', N'Xuất bán', CAST(0x0000AF17008E5731 AS DateTime), N'Thêm', N'XB000010', N'Đã trả tiền', 40000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (228, N'Admin', N'Đăng nhập', CAST(0x0000AF17008E837D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (229, N'Admin', N'Đăng nhập', CAST(0x0000AF17008FBEC8 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (230, N'Admin', N'Đăng nhập', CAST(0x0000AF170090007D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (231, N'Admin', N'Đăng nhập', CAST(0x0000AF170090D3E8 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (232, N'Admin', N'Đăng nhập', CAST(0x0000AF1700914107 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (233, N'Admin', N'Đăng nhập', CAST(0x0000AF190109AF4B AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (234, N'Admin', N'Đăng nhập', CAST(0x0000AF19011D82C7 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (235, N'Admin', N'Đăng nhập', CAST(0x0000AF1A00756F69 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (236, N'Admin', N'Đăng nhập', CAST(0x0000AF1A011AB308 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (237, N'Admin', N'Đăng nhập', CAST(0x0000AF1A011BEA6C AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (238, N'Admin', N'Đăng nhập', CAST(0x0000AF1A01208EEA AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (239, N'Admin', N'Đăng nhập', CAST(0x0000AF1A0123DAD0 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (240, N'Admin', N'Đăng nhập', CAST(0x0000AF1A01253313 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (241, N'Admin', N'Đăng nhập', CAST(0x0000AF1A01278CAA AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (242, N'Admin', N'Đăng nhập', CAST(0x0000AF1A01281D9D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (243, N'Admin', N'Đăng nhập', CAST(0x0000AF1A014E46CB AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (244, N'Admin', N'Đăng nhập', CAST(0x0000AF1B00B13E6F AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (245, N'Admin', N'Đăng nhập', CAST(0x0000AF1B00E3C82B AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (246, N'Admin', N'Xuất bán', CAST(0x0000AF1B00E4BEA0 AS DateTime), N'Thêm', N'XB000009', N'Đã trả tiền', 40000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (247, N'Admin', N'Đăng nhập', CAST(0x0000AF1B00E86937 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (248, N'Admin', N'Đăng nhập', CAST(0x0000AF1B00EA18B4 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (249, N'Admin', N'Đăng nhập', CAST(0x0000AF1B00EC070E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (250, N'Admin', N'Xuất bán', CAST(0x0000AF1B00EC4862 AS DateTime), N'Thêm', N'XB000009', N'Đã trả tiền', 90000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (251, N'Admin', N'Đăng nhập', CAST(0x0000AF1B00ED541D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (252, N'Admin', N'Xuất bán', CAST(0x0000AF1B00ED6AD5 AS DateTime), N'Thêm', N'XB000009', N'Đã trả tiền', 23000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (253, N'Admin', N'Đăng nhập', CAST(0x0000AF1B00EDBCF5 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (254, N'Admin', N'Xuất bán', CAST(0x0000AF1B00EDD38A AS DateTime), N'Thêm', N'XB000009', N'Đã trả tiền', 14000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (255, N'Admin', N'Đăng nhập', CAST(0x0000AF1B00EE89AD AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (256, N'Admin', N'Xuất bán', CAST(0x0000AF1B00EECF10 AS DateTime), N'Thêm', N'XB000009', N'Đã trả tiền', 40000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (257, N'Admin', N'Đăng nhập', CAST(0x0000AF1B00EF6B2F AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (258, N'Admin', N'Xuất bán', CAST(0x0000AF1B00EF7F38 AS DateTime), N'Thêm', N'XB000009', N'Đã trả tiền', 40000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (259, N'Admin', N'Đăng nhập', CAST(0x0000AF1B00F002AE AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (260, N'Admin', N'Xuất bán', CAST(0x0000AF1B00F0149C AS DateTime), N'Thêm', N'XB000009', N'Đã trả tiền', 40000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (261, N'Admin', N'Đăng nhập', CAST(0x0000AF1B00F0C3B1 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (262, N'Admin', N'Xuất bán', CAST(0x0000AF1B00F0D1EF AS DateTime), N'Thêm', N'XB000009', N'Đã trả tiền', 40000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (263, N'Admin', N'Đăng nhập', CAST(0x0000AF1B00F126DF AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (264, N'Admin', N'Xuất bán', CAST(0x0000AF1B00F13E0C AS DateTime), N'Thêm', N'XB000009', N'Đã trả tiền', 40000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (265, N'Admin', N'Đăng nhập', CAST(0x0000AF1B00F2297D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (266, N'Admin', N'Xuất bán', CAST(0x0000AF1B00F23C33 AS DateTime), N'Thêm', N'XB000009', N'Đã trả tiền', 40000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (267, N'Admin', N'Xuất bán', CAST(0x0000AF1B00F2830D AS DateTime), N'Thêm', N'XB000009', N'Ghi công nợ', 40000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (268, N'Admin', N'Đăng nhập', CAST(0x0000AF1B00F52171 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (269, N'Admin', N'Xuất bán', CAST(0x0000AF1B00F531D8 AS DateTime), N'Thêm', N'XB000009', N'Đã trả tiền', 40000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (270, N'Admin', N'Đăng nhập', CAST(0x0000AF1B00F5C3C9 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (271, N'Admin', N'Xuất bán', CAST(0x0000AF1B00F5D439 AS DateTime), N'Thêm', N'XB000009', N'Đã trả tiền', 40000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (272, N'Admin', N'Đăng nhập', CAST(0x0000AF1B00F901ED AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (273, N'Admin', N'Xuất bán', CAST(0x0000AF1B00F9166F AS DateTime), N'Thêm', N'XB000009', N'Đã trả tiền', 40000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (274, N'Admin', N'Đăng nhập', CAST(0x0000AF1B00FA4818 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (275, N'Admin', N'Xuất bán', CAST(0x0000AF1B00FA57DF AS DateTime), N'Thêm', N'XB000009', N'Đã trả tiền', 40000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (276, N'Admin', N'Đăng nhập', CAST(0x0000AF1B01029AAC AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (277, N'Admin', N'Xuất bán', CAST(0x0000AF1B0102B0E6 AS DateTime), N'Thêm', N'XB000009', N'Ghi công nợ', 40000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (278, N'Admin', N'Đăng nhập', CAST(0x0000AF1B01044D7B AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (279, N'Admin', N'Đăng nhập', CAST(0x0000AF1B010523F0 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (280, N'Admin', N'Đăng nhập', CAST(0x0000AF1B0106E1B1 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (281, N'Admin', N'Xuất bán', CAST(0x0000AF1B0106FD37 AS DateTime), N'Thêm', N'XB000009', N'Đã trả tiền', 105000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (282, N'Admin', N'Xuất bán', CAST(0x0000AF1B01074F09 AS DateTime), N'Thêm', N'XB000010', N'Đã trả tiền', 40000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (283, N'Admin', N'Đăng nhập', CAST(0x0000AF1B01082B16 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (284, N'Admin', N'Xuất bán', CAST(0x0000AF1B01085B63 AS DateTime), N'Tạm tính', N'XB000036', N'Đã trả tiền', 40000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (285, N'Admin', N'Đăng nhập', CAST(0x0000AF1B0118EBBC AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (286, N'Admin', N'Xuất bán', CAST(0x0000AF1B0119502A AS DateTime), N'Tạm tính', N'XB000037', N'Đã trả tiền', 40000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (287, N'Admin', N'Đăng nhập', CAST(0x0000AF1B0119F346 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (288, N'Admin', N'Xuất bán', CAST(0x0000AF1B011A0535 AS DateTime), N'Tạm tính', N'XB000038', N'Đã trả tiền', 23000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (289, N'Admin', N'Xuất bán', CAST(0x0000AF1B011A8FD3 AS DateTime), N'Tạm tính', N'XB000039', N'Đã trả tiền', 90000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (290, N'Admin', N'Đăng nhập', CAST(0x0000AF1B011B0972 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (291, N'Admin', N'Xuất bán', CAST(0x0000AF1B011B198B AS DateTime), N'Tạm tính', N'XB000040', N'Đã trả tiền', 40000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (292, N'Admin', N'Đăng nhập', CAST(0x0000AF1C007BD121 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (293, N'Admin', N'Đăng nhập', CAST(0x0000AF1C00875AE6 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (294, N'Admin', N'Đăng nhập', CAST(0x0000AF1C008B07A7 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (295, N'Admin', N'Đăng nhập', CAST(0x0000AF1C008C3893 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (296, N'Admin', N'Đăng nhập', CAST(0x0000AF1C00F24807 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (297, N'Admin', N'Đăng nhập', CAST(0x0000AF1C00F87B39 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (298, N'Admin', N'Đăng nhập', CAST(0x0000AF1C014D915D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (299, N'Admin', N'Đăng nhập', CAST(0x0000AF1C0153CB62 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (300, N'Admin', N'Đăng nhập', CAST(0x0000AF1C015514C5 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (301, N'Admin', N'Đăng nhập', CAST(0x0000AF1C01560449 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (302, N'Admin', N'Đăng nhập', CAST(0x0000AF1C0157053D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (303, N'Admin', N'Đăng nhập', CAST(0x0000AF1C0157AAF1 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (304, N'Admin', N'Đăng nhập', CAST(0x0000AF1D00667AC6 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (305, N'Admin', N'Đăng nhập', CAST(0x0000AF1D0071DAF5 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (306, N'Admin', N'Đăng nhập', CAST(0x0000AF1D008271B4 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (307, N'Admin', N'Xuất bán', CAST(0x0000AF1D00831284 AS DateTime), N'Tạm tính', N'XB000041', N'Ghi công nợ', 33000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (308, N'Admin', N'Đăng nhập', CAST(0x0000AF1D0085F3FA AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (309, N'Admin', N'Đăng nhập', CAST(0x0000AF1D0088F2E3 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (310, N'Admin', N'Đăng nhập', CAST(0x0000AF1D008A1ACA AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (311, N'Admin', N'Xuất bán', CAST(0x0000AF1D008CBA47 AS DateTime), N'Tạm tính', N'XB000042', N'Ghi công nợ', 50000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (312, N'Admin', N'Đăng nhập', CAST(0x0000AF1D008E0709 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (313, N'Admin', N'Đăng nhập', CAST(0x0000AF1D00908E0D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (314, N'Admin', N'Đăng nhập', CAST(0x0000AF1D00913B87 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (315, N'Admin', N'Đăng nhập', CAST(0x0000AF1D0091FDE8 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (316, N'Admin', N'Đăng nhập', CAST(0x0000AF1D0092F981 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (317, N'Admin', N'Đăng nhập', CAST(0x0000AF1D00937B37 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (318, N'Admin', N'Đăng nhập', CAST(0x0000AF1D009C0571 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (319, N'Admin', N'Đăng nhập', CAST(0x0000AF1D009C6B39 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (320, N'Admin', N'Đăng nhập', CAST(0x0000AF1D00A0817D AS DateTime), N'Vừa đăng nhập', N'::1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (321, N'Admin', N'Đăng nhập', CAST(0x0000AF1D00A21DBB AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (322, N'Admin', N'Đăng nhập', CAST(0x0000AF1D00A635B7 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (323, N'Admin', N'Đăng nhập', CAST(0x0000AF1D00B1E276 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (324, N'Admin', N'Đăng nhập', CAST(0x0000AF1D00B68004 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (325, N'Admin', N'Đăng nhập', CAST(0x0000AF1D00B8D031 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (326, N'Admin', N'Đăng nhập', CAST(0x0000AF1D00DE6115 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (327, N'Admin', N'Đăng nhập', CAST(0x0000AF1D00E1B7EB AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (328, N'Admin', N'Đăng nhập', CAST(0x0000AF1D00E29350 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (329, N'Admin', N'Đăng nhập', CAST(0x0000AF1D00E4B4B5 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (330, N'Admin', N'Đăng nhập', CAST(0x0000AF1D00E5930A AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (331, N'Admin', N'Đăng nhập', CAST(0x0000AF1D00E81D15 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (332, N'Admin', N'Đăng nhập', CAST(0x0000AF1D00ED8A27 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (333, N'Admin', N'Đăng nhập', CAST(0x0000AF1D00FD73CD AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (334, N'Admin', N'Đăng nhập', CAST(0x0000AF1D00FDF103 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (335, N'Admin', N'Đăng nhập', CAST(0x0000AF1D0100F1E2 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (336, N'Admin', N'Đăng nhập', CAST(0x0000AF1D01045175 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (337, N'Admin', N'Đăng nhập', CAST(0x0000AF1D0106DFA7 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (338, N'Admin', N'Đăng nhập', CAST(0x0000AF1D0108CFAC AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (339, N'Admin', N'Đăng nhập', CAST(0x0000AF1D010A5FEE AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (340, N'Admin', N'Đăng nhập', CAST(0x0000AF1E006CCAC7 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (341, N'Admin', N'Đăng nhập', CAST(0x0000AF1E0072A2AE AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (342, N'Admin', N'Đăng nhập', CAST(0x0000AF1E007F0E70 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (343, N'Admin', N'Đăng nhập', CAST(0x0000AF1E00A800CB AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (344, N'Admin', N'Đăng nhập', CAST(0x0000AF1E00AA907D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (345, N'Admin', N'Đăng nhập', CAST(0x0000AF1E00E1558B AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
GO
print 'Processed 200 total records'
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (346, N'Admin', N'Đăng nhập', CAST(0x0000AF1E00E376EA AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (347, N'Admin', N'Đăng nhập', CAST(0x0000AF1E00E7EFFC AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (348, N'Admin', N'Đăng nhập', CAST(0x0000AF1E00E96744 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (349, N'Admin', N'Đăng nhập', CAST(0x0000AF1E00EA995B AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (350, N'Admin', N'Đăng nhập', CAST(0x0000AF1E00EBA418 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (351, N'Admin', N'Đăng nhập', CAST(0x0000AF1E00EC69A0 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (352, N'Admin', N'Đăng nhập', CAST(0x0000AF1E00EF7100 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (353, N'Admin', N'Đăng nhập', CAST(0x0000AF1E00F12977 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (354, N'Admin', N'Đăng nhập', CAST(0x0000AF1E00F818FD AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (355, N'Admin', N'Xuất bán', CAST(0x0000AF1E00F87098 AS DateTime), N'Thêm', N'XB000006', N'Ghi công nợ', 63000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (356, N'Admin', N'Đăng nhập', CAST(0x0000AF1E00FA10F9 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (357, N'Admin', N'Đăng nhập', CAST(0x0000AF1E00FC4EFB AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (358, N'Admin', N'Xuất bán', CAST(0x0000AF1E00FC980F AS DateTime), N'Thêm', N'XB000006', N'Ghi công nợ', 33000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (359, N'Admin', N'Đăng nhập', CAST(0x0000AF1E00FFAE16 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (360, N'Admin', N'Đăng nhập', CAST(0x0000AF1E0100E569 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (361, N'Admin', N'Xuất bán', CAST(0x0000AF1E0101042E AS DateTime), N'Thêm', N'XB000007', N'Đã trả tiền', 33000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (362, N'Admin', N'Xuất bán', CAST(0x0000AF1E010133E0 AS DateTime), N'Thêm', N'XB000008', N'Đã trả tiền', 23000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (363, N'Admin', N'Đăng nhập', CAST(0x0000AF1E01034728 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (364, N'Admin', N'Đăng nhập', CAST(0x0000AF1E01051851 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (365, N'Admin', N'Đăng nhập', CAST(0x0000AF1E01078577 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (366, N'Admin', N'Đăng nhập', CAST(0x0000AF1E0109AA45 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (367, N'Admin', N'Đăng nhập', CAST(0x0000AF1E010A6794 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (368, N'Admin', N'Xuất bán', CAST(0x0000AF1E010AD959 AS DateTime), N'Thêm', N'XB000009', N'Ghi công nợ', 50000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (369, N'Admin', N'Đăng nhập', CAST(0x0000AF1E0118982E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (370, N'Admin', N'Xuất bán', CAST(0x0000AF1E0118A8DC AS DateTime), N'Thêm', N'XB000010', N'Đã trả tiền', 40000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (371, N'Admin', N'Đăng nhập', CAST(0x0000AF1E0129A736 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (372, N'Admin', N'Đăng nhập', CAST(0x0000AF27006504C3 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (373, N'Admin', N'Đăng nhập', CAST(0x0000AF2700665913 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (374, N'Admin', N'Đăng nhập', CAST(0x0000AF270068602E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (375, N'Admin', N'Đăng nhập', CAST(0x0000AF27006A6FEA AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (376, N'Admin', N'Đăng nhập', CAST(0x0000AF27006DC1C8 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (377, N'Admin', N'Xuất bán', CAST(0x0000AF27006E004B AS DateTime), N'Thêm', N'XB000011', N'Đã trả tiền', 40000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (378, N'Admin', N'Đăng nhập', CAST(0x0000AF27007F0C63 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (379, N'Admin', N'Đăng nhập', CAST(0x0000AF27007F8400 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (380, N'Admin', N'Đăng nhập', CAST(0x0000AF27008039D3 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (381, N'Admin', N'Đăng nhập', CAST(0x0000AF270082CD11 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (382, N'Admin', N'Đăng nhập', CAST(0x0000AF28006B2BCE AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (383, N'Admin', N'Đăng nhập', CAST(0x0000AF2800A4D9FF AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (384, N'Admin', N'Đăng nhập', CAST(0x0000AF2800A5E459 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (385, N'Admin', N'Đăng nhập', CAST(0x0000AF2800A9074D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (386, N'Admin', N'Đăng nhập', CAST(0x0000AF2800AD3BDD AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (387, N'Admin', N'Đăng nhập', CAST(0x0000AF2800E6E44F AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (388, N'Admin', N'Đăng nhập', CAST(0x0000AF2900F19975 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (389, N'Giao1', N'Đăng nhập', CAST(0x0000AF2900F21F5B AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (390, N'Admin', N'Đăng nhập', CAST(0x0000AF2D007C6FC6 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (391, N'Admin', N'Đăng nhập', CAST(0x0000AF2D00F2CEB5 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (392, N'Admin', N'Đăng nhập', CAST(0x0000AF47013231E8 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (393, N'Admin', N'Đăng nhập', CAST(0x0000AF470133DE8A AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (394, N'Admin', N'Đăng nhập', CAST(0x0000AF470136B987 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (395, N'Admin', N'Đăng nhập', CAST(0x0000AF47013766FE AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (396, N'Admin', N'Đăng nhập', CAST(0x0000AF4701407A88 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (397, N'Admin', N'Đăng nhập', CAST(0x0000AF470140F9C5 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (398, N'Admin', N'Đăng nhập', CAST(0x0000AF4701421616 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (399, N'Admin', N'Đăng nhập', CAST(0x0000AF4701434B50 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (400, N'Admin', N'Xuất bán', CAST(0x0000AF4701438076 AS DateTime), N'Thêm', N'XB000012', N'Đã trả tiền', 79000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (401, N'Admin', N'Đăng nhập', CAST(0x0000AF470143EF74 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (402, N'Admin', N'Xuất bán', CAST(0x0000AF4701444803 AS DateTime), N'Thêm', N'XB000013', N'Đã trả tiền', 52095.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (403, N'Admin', N'Đăng nhập', CAST(0x0000AF470146D14E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (404, N'Admin', N'Đăng nhập', CAST(0x0000AF4701475419 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (405, N'Admin', N'Đăng nhập', CAST(0x0000AF4701483029 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (406, N'Admin', N'Đăng nhập', CAST(0x0000AF4800787B58 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (407, N'Admin', N'Đăng nhập', CAST(0x0000AF48008149D3 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (408, N'Admin', N'Đăng nhập', CAST(0x0000AF480082FEDA AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (409, N'Admin', N'Đăng nhập', CAST(0x0000AF480084E144 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (410, N'Admin', N'Đăng nhập', CAST(0x0000AF48008647C7 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (411, N'Admin', N'Đăng nhập', CAST(0x0000AF4800875192 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (412, N'Admin', N'Đăng nhập', CAST(0x0000AF48008D8D11 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (413, N'Admin', N'Đăng nhập', CAST(0x0000AF48008F6F94 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (414, N'Admin', N'Đăng nhập', CAST(0x0000AF49007D64E5 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (415, N'Admin', N'Đăng nhập', CAST(0x0000AF49008FBA00 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (416, N'Admin', N'Đăng nhập', CAST(0x0000AF490090E8DB AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (417, N'Admin', N'Đăng nhập', CAST(0x0000AF4900A294C6 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (418, N'Admin', N'Đăng nhập', CAST(0x0000AF4900A35704 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (419, N'Admin', N'Đăng nhập', CAST(0x0000AF4900A43C1C AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (420, N'Admin', N'Xuất bán', CAST(0x0000AF4900A4A3DC AS DateTime), N'Thêm', N'XB000014', N'Đã trả tiền', 102000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (421, N'Admin', N'Đăng nhập', CAST(0x0000AF4900B83A55 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (422, N'Admin', N'Đăng nhập', CAST(0x0000AF4900B8D8B8 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (423, N'Admin', N'Đăng nhập', CAST(0x0000AF4900BB11C3 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (424, N'Admin', N'Đăng nhập', CAST(0x0000AF5200EE2AEE AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (425, N'Admin', N'Đăng nhập', CAST(0x0000AF5500718EFD AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (426, N'Admin', N'Đăng nhập', CAST(0x0000AF5500746288 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (427, N'Admin', N'Đăng nhập', CAST(0x0000AF55008063C3 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (428, N'Admin', N'Đăng nhập', CAST(0x0000AF550082F4AF AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (429, N'Admin', N'Đăng nhập', CAST(0x0000AF550094BA6D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (430, N'Admin', N'Đăng nhập', CAST(0x0000AF550095437C AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (431, N'Admin', N'Đăng nhập', CAST(0x0000AF5500966198 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (432, N'Admin', N'Đăng nhập', CAST(0x0000AF5500972985 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (433, N'Admin', N'Đăng nhập', CAST(0x0000AF55009D0EC3 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (434, N'Admin', N'Đăng nhập', CAST(0x0000AF55009E7D24 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (435, N'Admin', N'Đăng nhập', CAST(0x0000AF5700F32482 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (436, N'Admin', N'Đăng nhập', CAST(0x0000AF570100D35F AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (437, N'Admin', N'Đăng nhập', CAST(0x0000AF580142A934 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (438, N'Admin', N'Đăng nhập', CAST(0x0000AF5801435220 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (439, N'Admin', N'Đăng nhập', CAST(0x0000AF58014404D2 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (440, N'Admin', N'Đăng nhập', CAST(0x0000AF580148CD6B AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (441, N'Admin', N'Đăng nhập', CAST(0x0000AF5801496CD0 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (442, N'Admin', N'Đăng nhập', CAST(0x0000AF58014B3C1C AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (443, N'Admin', N'Đăng nhập', CAST(0x0000AF58014CE646 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (444, N'Admin', N'Đăng nhập', CAST(0x0000AF58014E3DF0 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (445, N'Admin', N'Đăng nhập', CAST(0x0000AF58015249A3 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (446, N'Admin', N'Đăng nhập', CAST(0x0000AF5801546D20 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
GO
print 'Processed 300 total records'
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (447, N'Admin', N'Đăng nhập', CAST(0x0000AF580155BEA1 AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (448, N'Admin', N'Đăng nhập', CAST(0x0000AF580156D1FF AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (449, N'Admin', N'Đăng nhập', CAST(0x0000AF5801573283 AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (450, N'Admin', N'Đăng nhập', CAST(0x0000AF5801578F9F AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (451, N'Admin', N'Đăng nhập', CAST(0x0000AF580157E974 AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (452, N'Admin', N'Đăng nhập', CAST(0x0000AF58015825E0 AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (453, N'Admin', N'Đăng nhập', CAST(0x0000AF58015FBD43 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (454, N'Admin', N'Đăng nhập', CAST(0x0000AF580160C0FB AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (455, N'Admin', N'Đăng nhập', CAST(0x0000AF590086795C AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (456, N'Admin', N'Đăng nhập', CAST(0x0000AF590087FB73 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (457, N'Admin', N'Đăng nhập', CAST(0x0000AF59008BD1E6 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (458, N'Admin', N'Đăng nhập', CAST(0x0000AF59008C4503 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (459, N'Admin', N'Đăng nhập', CAST(0x0000AF590092080E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (460, N'Admin', N'Đăng nhập', CAST(0x0000AF590096611D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (461, N'Admin', N'Đăng nhập', CAST(0x0000AF590097218B AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (462, N'Admin', N'Đăng nhập', CAST(0x0000AF5900A72BCB AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (463, N'Admin', N'Đăng nhập', CAST(0x0000AF5900A7DD8A AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (464, N'Admin', N'Đăng nhập', CAST(0x0000AF5900AC769A AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (465, N'Admin', N'Đăng nhập', CAST(0x0000AF5900AD1CC8 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (466, N'Admin', N'Đăng nhập', CAST(0x0000AF5900ADC01E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (467, N'Admin', N'Đăng nhập', CAST(0x0000AF5900AE9211 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (468, N'Admin', N'Đăng nhập', CAST(0x0000AF5900AFC436 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (469, N'Admin', N'Đăng nhập', CAST(0x0000AF5900B0127A AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (470, N'Admin', N'Đăng nhập', CAST(0x0000AF5900B07B73 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (471, N'Admin', N'Đăng nhập', CAST(0x0000AF5900B1DA63 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (472, N'Admin', N'Đăng nhập', CAST(0x0000AF5900B3E92B AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (473, N'Admin', N'Đăng nhập', CAST(0x0000AF5900B61119 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (474, N'Admin', N'Đăng nhập', CAST(0x0000AF5900BCB8F9 AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (475, N'Admin', N'Đăng nhập', CAST(0x0000AF5900BCC290 AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (476, N'Admin', N'Đăng nhập', CAST(0x0000AF5900BCC2B9 AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (477, N'Admin', N'Đăng nhập', CAST(0x0000AF5900DB40AB AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (478, N'Admin', N'Đăng nhập', CAST(0x0000AF5900DE47DF AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (479, N'Admin', N'Đăng nhập', CAST(0x0000AF5900E2A006 AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (480, N'Admin', N'Đăng nhập', CAST(0x0000AF5900EC37F0 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (481, N'Admin', N'Đăng nhập', CAST(0x0000AF5900ED0F89 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (482, N'Admin', N'Đăng nhập', CAST(0x0000AF5900ED7759 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (483, N'Admin', N'Đăng nhập', CAST(0x0000AF5900EDBD74 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (484, N'Admin', N'Đăng nhập', CAST(0x0000AF5900EF6944 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (485, N'Admin', N'Đăng nhập', CAST(0x0000AF5900EFD0E6 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (486, N'Admin', N'Đăng nhập', CAST(0x0000AF5900F03278 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (487, N'Admin', N'Đăng nhập', CAST(0x0000AF5900F91666 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (488, N'Admin', N'Đăng nhập', CAST(0x0000AF5900F9F31B AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (489, N'Admin', N'Đăng nhập', CAST(0x0000AF5900FAB0AB AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (490, N'Admin', N'Đăng nhập', CAST(0x0000AF5900FC3A07 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (491, N'Admin', N'Đăng nhập', CAST(0x0000AF5900FCA634 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (492, N'Admin', N'Đăng nhập', CAST(0x0000AF5900FE20B4 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (493, N'Admin', N'Đăng nhập', CAST(0x0000AF5900FED731 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (494, N'Admin', N'Đăng nhập', CAST(0x0000AF5900FFD730 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (495, N'Admin', N'Đăng nhập', CAST(0x0000AF59010B1B32 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (496, N'Admin', N'Đăng nhập', CAST(0x0000AF59010CB02D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (497, N'Admin', N'Đăng nhập', CAST(0x0000AF59010F29C8 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (498, N'Admin', N'Đăng nhập', CAST(0x0000AF59010FF81D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (499, N'Admin', N'Đăng nhập', CAST(0x0000AF590111FC57 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (500, N'Admin', N'Đăng nhập', CAST(0x0000AF590122BA1C AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (501, N'Admin', N'Đăng nhập', CAST(0x0000AF590123CF62 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (502, N'Admin', N'Đăng nhập', CAST(0x0000AF59012455E8 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (503, N'Admin', N'Đăng nhập', CAST(0x0000AF590124C33B AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (504, N'Admin', N'Đăng nhập', CAST(0x0000AF59012BAF4C AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (505, N'Admin', N'Đăng nhập', CAST(0x0000AF59013FC08D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (506, N'Admin', N'Đăng nhập', CAST(0x0000AF590140D530 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (507, N'Admin', N'Đăng nhập', CAST(0x0000AF590141494D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (508, N'Admin', N'Đăng nhập', CAST(0x0000AF5901425FA5 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (509, N'Admin', N'Đăng nhập', CAST(0x0000AF590143D9E6 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (510, N'Admin', N'Đăng nhập', CAST(0x0000AF590144ADA8 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (511, N'Admin', N'Đăng nhập', CAST(0x0000AF590145645E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (512, N'Admin', N'Đăng nhập', CAST(0x0000AF5901463426 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (513, N'Admin', N'Đăng nhập', CAST(0x0000AF590146EBF8 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (514, N'Admin', N'Đăng nhập', CAST(0x0000AF590147B7DD AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (515, N'Admin', N'Đăng nhập', CAST(0x0000AF59015F2C97 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (516, N'Admin', N'Đăng nhập', CAST(0x0000AF5901677C3F AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (517, N'Admin', N'Đăng nhập', CAST(0x0000AF59016B252E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (518, N'Admin', N'Đăng nhập', CAST(0x0000AF59016BCC48 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (519, N'Admin', N'Đăng nhập', CAST(0x0000AF59016D4ABB AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (520, N'Admin', N'Đăng nhập', CAST(0x0000AF5A00FA35AC AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (521, N'Admin', N'Đăng nhập', CAST(0x0000AF5A00FB2A7B AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (522, N'Admin', N'Đăng nhập', CAST(0x0000AF5A00FCA9AB AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (523, N'Admin', N'Xuất bán', CAST(0x0000AF5A00FD11D8 AS DateTime), N'Thêm', N'XB000015', N'Đã trả tiền', 123000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (524, N'Admin', N'Đăng nhập', CAST(0x0000AF5A00FE7DB3 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (525, N'Admin', N'Đăng nhập', CAST(0x0000AF5A00FF4B18 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (526, N'Admin', N'Đăng nhập', CAST(0x0000AF5A0104E994 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (527, N'Admin', N'Đăng nhập', CAST(0x0000AF5A01057C3F AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (528, N'Admin', N'Đăng nhập', CAST(0x0000AF5A0105F73F AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (529, N'Admin', N'Đăng nhập', CAST(0x0000AF5A01065FE2 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (530, N'Admin', N'Đăng nhập', CAST(0x0000AF5A010B97C5 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (531, N'Admin', N'Đăng nhập', CAST(0x0000AF5A010D5089 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (532, N'Admin', N'Đăng nhập', CAST(0x0000AF5A01108C46 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (533, N'Admin', N'Đăng nhập', CAST(0x0000AF5A0111F1D6 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (534, N'Admin', N'Đăng nhập', CAST(0x0000AF5A0113C771 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (535, N'Admin', N'Đăng nhập', CAST(0x0000AF5A01169B2A AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (536, N'Admin', N'Đăng nhập', CAST(0x0000AF5A011864FD AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (537, N'Admin', N'Đăng nhập', CAST(0x0000AF5A01413D93 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (538, N'Admin', N'Đăng nhập', CAST(0x0000AF5A0142589E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (539, N'Admin', N'Đăng nhập', CAST(0x0000AF5A0143450D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (540, N'Admin', N'Đăng nhập', CAST(0x0000AF5A0144D0DF AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (541, N'Admin', N'Đăng nhập', CAST(0x0000AF5A01460272 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (542, N'Admin', N'Đăng nhập', CAST(0x0000AF5A0146DE11 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (543, N'Admin', N'Đăng nhập', CAST(0x0000AF5A014831F6 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (544, N'Admin', N'Đăng nhập', CAST(0x0000AF5A01498E3C AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (545, N'Admin', N'Đăng nhập', CAST(0x0000AF5B00750F04 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (546, N'Admin', N'Đăng nhập', CAST(0x0000AF5B00887C33 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (547, N'Admin', N'Đăng nhập', CAST(0x0000AF5B0089B035 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
GO
print 'Processed 400 total records'
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (548, N'Admin', N'Đăng nhập', CAST(0x0000AF5B009415C4 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (549, N'Admin', N'Đăng nhập', CAST(0x0000AF5B00E791EE AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (550, N'Admin', N'Đăng nhập', CAST(0x0000AF5B00F64E76 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (551, N'Admin', N'Đăng nhập', CAST(0x0000AF5B00F77426 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (552, N'Admin', N'Đăng nhập', CAST(0x0000AF5B00F85AD8 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (553, N'Admin', N'Đăng nhập', CAST(0x0000AF5B00F9BBE2 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (554, N'Admin', N'Đăng nhập', CAST(0x0000AF5B00FB4020 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (555, N'Admin', N'Đăng nhập', CAST(0x0000AF5B00FCEC8D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (556, N'Admin', N'Đăng nhập', CAST(0x0000AF5B00FE0123 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (557, N'Admin', N'Đăng nhập', CAST(0x0000AF5B0105FCB6 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (558, N'Admin', N'Đăng nhập', CAST(0x0000AF5B010737C8 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (559, N'Admin', N'Đăng nhập', CAST(0x0000AF5B0109DAD0 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (560, N'Admin', N'Đăng nhập', CAST(0x0000AF5B010BD3C2 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (561, N'Admin', N'Đăng nhập', CAST(0x0000AF5B010D8D86 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (562, N'Admin', N'Đăng nhập', CAST(0x0000AF5B01122B9E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (563, N'Admin', N'Đăng nhập', CAST(0x0000AF5B01146AFA AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (564, N'Admin', N'Đăng nhập', CAST(0x0000AF5B013309C3 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (565, N'Admin', N'Xuất bán', CAST(0x0000AF5B01334698 AS DateTime), N'Thêm', N'XB000015', N'Đã trả tiền', 172000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (566, N'Admin', N'Đăng nhập', CAST(0x0000AF5B0135DCAC AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (567, N'Admin', N'Đăng nhập', CAST(0x0000AF5B013771B5 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (568, N'Admin', N'Đăng nhập', CAST(0x0000AF5B01380E27 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (569, N'Admin', N'Đăng nhập', CAST(0x0000AF5B0138FA72 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (570, N'Admin', N'Đăng nhập', CAST(0x0000AF5B013A5721 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (571, N'Admin', N'Đăng nhập', CAST(0x0000AF5B0140CE22 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (572, N'Admin', N'Đăng nhập', CAST(0x0000AF5B014220A8 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (573, N'Admin', N'Đăng nhập', CAST(0x0000AF5B0142D282 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (574, N'Admin', N'Đăng nhập', CAST(0x0000AF5B0143735F AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (575, N'Admin', N'Đăng nhập', CAST(0x0000AF5B01444307 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (576, N'Admin', N'Đăng nhập', CAST(0x0000AF5B01447CCC AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (577, N'Admin', N'Đăng nhập', CAST(0x0000AF5B0144D2AC AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (578, N'Admin', N'Đăng nhập', CAST(0x0000AF5B0148470A AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (579, N'Admin', N'Đăng nhập', CAST(0x0000AF5B0148C059 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (580, N'Admin', N'Đăng nhập', CAST(0x0000AF5B014DFD07 AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (581, N'Admin', N'Đăng nhập', CAST(0x0000AF5B014E257E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (582, N'Admin', N'Đăng nhập', CAST(0x0000AF5B0153953A AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (583, N'Admin', N'Đăng nhập', CAST(0x0000AF5B0155644D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (584, N'Admin', N'Đăng nhập', CAST(0x0000AF5B0157442B AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (585, N'Admin', N'Đăng nhập', CAST(0x0000AF5B01578FA5 AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (586, N'Admin', N'Đăng nhập', CAST(0x0000AF5B01580815 AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (587, N'Admin', N'Đăng nhập', CAST(0x0000AF5B0158E252 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (588, N'Admin', N'Đăng nhập', CAST(0x0000AF5B01594489 AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (589, N'Admin', N'Đăng nhập', CAST(0x0000AF5B01598F24 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (590, N'Admin', N'Đăng nhập', CAST(0x0000AF5B0159AF7F AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (591, N'Admin', N'Đăng nhập', CAST(0x0000AF5B015AF0EC AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (592, N'Admin', N'Đăng nhập', CAST(0x0000AF5B015BA703 AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (593, N'Admin', N'Đăng nhập', CAST(0x0000AF5B015C8F2D AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (594, N'Admin', N'Đăng nhập', CAST(0x0000AF5B015CEFCC AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (595, N'Admin', N'Đăng nhập', CAST(0x0000AF5B015D215B AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (596, N'Admin', N'Đăng nhập', CAST(0x0000AF5B015DDF01 AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (597, N'Admin', N'Đăng nhập', CAST(0x0000AF5C006B334B AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (598, N'Admin', N'Xuất bán', CAST(0x0000AF5C006B89BB AS DateTime), N'Thêm', N'XB000016', N'Đã trả tiền', 71100.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (599, N'Admin', N'Đăng nhập', CAST(0x0000AF5C006CBFFB AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (600, N'Admin', N'Đăng nhập', CAST(0x0000AF5C006E3BD0 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (601, N'Admin', N'Đăng nhập', CAST(0x0000AF5C006EB727 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (602, N'Admin', N'Đăng nhập', CAST(0x0000AF5C0070F07A AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (603, N'Admin', N'Đăng nhập', CAST(0x0000AF5C012EF221 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (604, N'Admin', N'Đăng nhập', CAST(0x0000AF5C012F798F AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (605, N'Admin', N'Đăng nhập', CAST(0x0000AF5C013048F1 AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (606, N'Admin', N'Đăng nhập', CAST(0x0000AF5C01309F64 AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (607, N'Admin', N'Đăng nhập', CAST(0x0000AF5C0145B93C AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (608, N'Admin', N'Đăng nhập', CAST(0x0000AF5C01478E4F AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (609, N'Admin', N'Đăng nhập', CAST(0x0000AF5D00FFE1CE AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (610, N'Admin', N'Xuất bán', CAST(0x0000AF5D01000FB5 AS DateTime), N'Thêm', N'XB000017', N'Đã trả tiền', 152000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (611, N'Admin', N'Đăng nhập', CAST(0x0000AF5D0101FA99 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (612, N'Admin', N'Đăng nhập', CAST(0x0000AF5D01035231 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (613, N'Admin', N'Xuất bán', CAST(0x0000AF5D01041906 AS DateTime), N'Tạm tính', N'XB000057', N'Đã trả tiền', 90000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (614, N'Admin', N'Đăng nhập', CAST(0x0000AF5D0113056A AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (615, N'Admin', N'Đăng nhập', CAST(0x0000AF5D012E3B24 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (616, N'Admin', N'Đăng nhập', CAST(0x0000AF5D012F6EE3 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (617, N'Admin', N'Đăng nhập', CAST(0x0000AF5D01301D55 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (618, N'Admin', N'Đăng nhập', CAST(0x0000AF5D0132208E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (619, N'Admin', N'Đăng nhập', CAST(0x0000AF5D0132D525 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (620, N'Admin', N'Đăng nhập', CAST(0x0000AF5D0134C8D8 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (621, N'Admin', N'Đăng nhập', CAST(0x0000AF5D01366A0A AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (622, N'Admin', N'Xuất bán', CAST(0x0000AF5D0136BBBD AS DateTime), N'Thêm', N'XB000019', N'Đã trả tiền', 23000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (623, N'Admin', N'Đăng nhập', CAST(0x0000AF5D013866DA AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (624, N'Admin', N'Đăng nhập', CAST(0x0000AF5D0142D4C4 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (625, N'Admin', N'Đăng nhập', CAST(0x0000AF5D014637EC AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (626, N'Admin', N'Đăng nhập', CAST(0x0000AF5D01551B48 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (627, N'Admin', N'Đăng nhập', CAST(0x0000AF5D01586D1F AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (628, N'Admin', N'Đăng nhập', CAST(0x0000AF5E0074B1EA AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (629, N'Admin', N'Xuất bán', CAST(0x0000AF5E0074DA8B AS DateTime), N'Thêm', N'XB000020', N'Đã trả tiền', 73000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (630, N'Admin', N'Đăng nhập', CAST(0x0000AF5E0085DED3 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (631, N'Admin', N'Đăng nhập', CAST(0x0000AF5E00869538 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (632, N'Admin', N'Đăng nhập', CAST(0x0000AF5E00874786 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (633, N'Admin', N'Đăng nhập', CAST(0x0000AF5E0088458A AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (634, N'Admin', N'Đăng nhập', CAST(0x0000AF5E008AE1BD AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (635, N'Admin', N'Đăng nhập', CAST(0x0000AF5E008B96E0 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (636, N'Admin', N'Đăng nhập', CAST(0x0000AF5E008CC970 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (637, N'Admin', N'Đăng nhập', CAST(0x0000AF5E008D70D3 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (638, N'Admin', N'Đăng nhập', CAST(0x0000AF5E008DFED0 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (639, N'Admin', N'Đăng nhập', CAST(0x0000AF5E008EF80A AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (640, N'Admin', N'Đăng nhập', CAST(0x0000AF5E008F600B AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (641, N'Admin', N'Đăng nhập', CAST(0x0000AF5E0091CB22 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (642, N'Admin', N'Đăng nhập', CAST(0x0000AF5E0092D5FE AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (643, N'Admin', N'Đăng nhập', CAST(0x0000AF5E0093A322 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (644, N'Admin', N'Đăng nhập', CAST(0x0000AF5E00948D4A AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (645, N'Admin', N'Đăng nhập', CAST(0x0000AF5E00962903 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (646, N'Admin', N'Đăng nhập', CAST(0x0000AF5E0097BD9B AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (647, N'Admin', N'Đăng nhập', CAST(0x0000AF5E0098FDA0 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (648, N'Admin', N'Đăng nhập', CAST(0x0000AF5E009A17CA AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
GO
print 'Processed 500 total records'
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (649, N'Admin', N'Đăng nhập', CAST(0x0000AF5E00A10CE6 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (650, N'Admin', N'Đăng nhập', CAST(0x0000AF5E00A1B17A AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (651, N'Admin', N'Đăng nhập', CAST(0x0000AF5E00A23114 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (652, N'Admin', N'Đăng nhập', CAST(0x0000AF5E00A32983 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (653, N'Admin', N'Đăng nhập', CAST(0x0000AF5E00A4CC78 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (654, N'Admin', N'Đăng nhập', CAST(0x0000AF5E00B00157 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (655, N'Admin', N'Đăng nhập', CAST(0x0000AF5E00BB01A6 AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (656, N'Admin', N'Đăng nhập', CAST(0x0000AF5E00BB142E AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (657, N'Admin', N'Đăng nhập', CAST(0x0000AF5E00BC6D07 AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (658, N'Admin', N'Đăng nhập', CAST(0x0000AF5E00BC8145 AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (659, N'Admin', N'Đăng nhập', CAST(0x0000AF5E00C358D8 AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (660, N'Admin', N'Đăng nhập', CAST(0x0000AF5E00C4858F AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (661, N'Admin', N'Đăng nhập', CAST(0x0000AF5E00C51DAF AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (662, N'Admin', N'Đăng nhập', CAST(0x0000AF5E00C5DBDC AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (663, N'Admin', N'Đăng nhập', CAST(0x0000AF5E00C5EB50 AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (664, N'Admin', N'Xuất bán', CAST(0x0000AF5E00C60BF3 AS DateTime), N'Thêm', N'XB000021', N'Đã trả tiền', 90000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (665, N'Admin', N'Đăng nhập', CAST(0x0000AF5E00DC2AD4 AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (666, N'Admin', N'Đăng nhập', CAST(0x0000AF5E00E11953 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (667, N'Admin', N'Đăng nhập', CAST(0x0000AF5E01088AEA AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (668, N'Admin', N'Đăng nhập', CAST(0x0000AF5E0109BA17 AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (669, N'Admin', N'Đăng nhập', CAST(0x0000AF5E010A24D2 AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (670, N'Admin', N'Đăng nhập', CAST(0x0000AF5E010AF953 AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (671, N'Admin', N'Đăng nhập', CAST(0x0000AF5E010B511E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (672, N'Admin', N'Đăng nhập', CAST(0x0000AF5E0110D7C8 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (673, N'Admin', N'Đăng nhập', CAST(0x0000AF5E01116584 AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (674, N'Admin', N'Đăng nhập', CAST(0x0000AF5E0111E1C3 AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (675, N'Admin', N'Đăng nhập', CAST(0x0000AF5E0147393F AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (676, N'Admin', N'Đăng nhập', CAST(0x0000AF5E014C7930 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (677, N'Admin', N'Đăng nhập', CAST(0x0000AF5E014F3122 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (678, N'Admin', N'Đăng nhập', CAST(0x0000AF5E0150008D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (679, N'Admin', N'Đăng nhập', CAST(0x0000AF5E0150AB43 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (680, N'Admin', N'Đăng nhập', CAST(0x0000AF60007EBC61 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (681, N'Admin', N'Xuất bán', CAST(0x0000AF60007EEB95 AS DateTime), N'Thêm', N'XB000022', N'Đã trả tiền', 44000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (682, N'Admin', N'Đăng nhập', CAST(0x0000AF6000887514 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (683, N'Admin', N'Đăng nhập', CAST(0x0000AF600088E5F0 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (684, N'Admin', N'Đăng nhập', CAST(0x0000AF60008BBE69 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (685, N'Admin', N'Đăng nhập', CAST(0x0000AF60008C200D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (686, N'Admin', N'Đăng nhập', CAST(0x0000AF60008D4F6C AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (687, N'Admin', N'Đăng nhập', CAST(0x0000AF60008F5321 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (688, N'Admin', N'Đăng nhập', CAST(0x0000AF60008FB993 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (689, N'Admin', N'Đăng nhập', CAST(0x0000AF6000900739 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (690, N'Admin', N'Đăng nhập', CAST(0x0000AF6000909034 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (691, N'Admin', N'Đăng nhập', CAST(0x0000AF6000914FB2 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (692, N'Admin', N'Đăng nhập', CAST(0x0000AF6000929C82 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (693, N'Admin', N'Đăng nhập', CAST(0x0000AF60009311B6 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (694, N'Admin', N'Đăng nhập', CAST(0x0000AF6000939942 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (695, N'Admin', N'Đăng nhập', CAST(0x0000AF60009C2B6B AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (696, N'Admin', N'Đăng nhập', CAST(0x0000AF60009D38AD AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (697, N'Admin', N'Đăng nhập', CAST(0x0000AF6000A13B36 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (698, N'Admin', N'Đăng nhập', CAST(0x0000AF6000A831D5 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (699, N'Admin', N'Đăng nhập', CAST(0x0000AF6000A90670 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (700, N'Admin', N'Đăng nhập', CAST(0x0000AF6000AC3A5A AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (701, N'Admin', N'Đăng nhập', CAST(0x0000AF6000ACA97B AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (702, N'Admin', N'Đăng nhập', CAST(0x0000AF6000ACF977 AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (703, N'Admin', N'Đăng nhập', CAST(0x0000AF6000B48BCD AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (704, N'Admin', N'Đăng nhập', CAST(0x0000AF6000B4BCFA AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (705, N'Admin', N'Đăng nhập', CAST(0x0000AF6000B5039A AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (706, N'Admin', N'Đăng nhập', CAST(0x0000AF6000B590A8 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (707, N'Admin', N'Đăng nhập', CAST(0x0000AF6000B7897E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (708, N'Admin', N'Đăng nhập', CAST(0x0000AF6000BA3EAD AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (709, N'Admin', N'Đăng nhập', CAST(0x0000AF6000BB938D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (710, N'Admin', N'Đăng nhập', CAST(0x0000AF6000BC7956 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (711, N'Admin', N'Đăng nhập', CAST(0x0000AF6000C30FF2 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (712, N'Admin', N'Đăng nhập', CAST(0x0000AF6000FDB221 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (713, N'Admin', N'Đăng nhập', CAST(0x0000AF6000FF26E7 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (714, N'Admin', N'Đăng nhập', CAST(0x0000AF60010024AE AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (715, N'Admin', N'Đăng nhập', CAST(0x0000AF60010030FD AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (716, N'Admin', N'Đăng nhập', CAST(0x0000AF6001097E29 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (717, N'Admin', N'Đăng nhập', CAST(0x0000AF600109C4BA AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (718, N'Admin', N'Đăng nhập', CAST(0x0000AF60010AAF38 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (719, N'Admin', N'Đăng nhập', CAST(0x0000AF60010B0389 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (720, N'Admin', N'Đăng nhập', CAST(0x0000AF60010CEA19 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (721, N'Admin', N'Đăng nhập', CAST(0x0000AF600112562A AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (722, N'Admin', N'Đăng nhập', CAST(0x0000AF610070235A AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (723, N'Admin', N'Xuất bán', CAST(0x0000AF6100703D06 AS DateTime), N'Thêm', N'XB000023', N'Đã trả tiền', 63000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (724, N'Admin', N'Đăng nhập', CAST(0x0000AF61007406F4 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (725, N'Admin', N'Đăng nhập', CAST(0x0000AF610075B1A2 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (726, N'Admin', N'Đăng nhập', CAST(0x0000AF610076165D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (727, N'Admin', N'Đăng nhập', CAST(0x0000AF61009713A7 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (728, N'Admin', N'Đăng nhập', CAST(0x0000AF610097E875 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (729, N'Admin', N'Đăng nhập', CAST(0x0000AF6100E23D61 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (730, N'Admin', N'Đăng nhập', CAST(0x0000AF6100EDB72E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (731, N'Admin', N'Xuất bán', CAST(0x0000AF6100EDE4D7 AS DateTime), N'Tạm tính', N'XB000063', N'Đã trả tiền', 50000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (732, N'Admin', N'Xuất bán', CAST(0x0000AF6100EDF873 AS DateTime), N'Tạm tính', N'XB000064', N'Đã trả tiền', 108000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (733, N'Admin', N'Đăng nhập', CAST(0x0000AF6100EF13DA AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (734, N'Admin', N'Đăng nhập', CAST(0x0000AF6100EF9618 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (735, N'Admin', N'Đăng nhập', CAST(0x0000AF6100F3AFE3 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (736, N'Admin', N'Đăng nhập', CAST(0x0000AF6100FABC61 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (737, N'Admin', N'Đăng nhập', CAST(0x0000AF6100FF158A AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (738, N'Ben', N'Đăng nhập', CAST(0x0000AF6101001189 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (739, N'Admin', N'Đăng nhập', CAST(0x0000AF6101008EE6 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (740, N'Admin', N'Đăng nhập', CAST(0x0000AF6101025940 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (741, N'Giao', N'Đăng nhập', CAST(0x0000AF6101027542 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (742, N'Ben', N'Đăng nhập', CAST(0x0000AF610102837A AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (743, N'Admin', N'Đăng nhập', CAST(0x0000AF6101028FDD AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (744, N'Admin', N'Đăng nhập', CAST(0x0000AF610103C136 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (745, N'Giao', N'Đăng nhập', CAST(0x0000AF610103D1FA AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (746, N'Admin', N'Đăng nhập', CAST(0x0000AF6101057304 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (747, N'Admin', N'Đăng nhập', CAST(0x0000AF610106853C AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (748, N'Admin', N'Đăng nhập', CAST(0x0000AF61010942BD AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (749, N'Admin', N'Đăng nhập', CAST(0x0000AF61010B408E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
GO
print 'Processed 600 total records'
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (750, N'Admin', N'Đăng nhập', CAST(0x0000AF61010B9786 AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (751, N'Admin', N'Đăng nhập', CAST(0x0000AF61010DCA24 AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (752, N'Admin', N'Đăng nhập', CAST(0x0000AF61011911DE AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (753, N'Admin', N'Đăng nhập', CAST(0x0000AF610127D1C0 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (754, N'Admin', N'Đăng nhập', CAST(0x0000AF6101285ABE AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (755, N'Admin', N'Đăng nhập', CAST(0x0000AF6101297EDC AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (756, N'Admin', N'Đăng nhập', CAST(0x0000AF61012A4066 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (757, N'Admin', N'Đăng nhập', CAST(0x0000AF61012AE16A AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (758, N'Admin', N'Đăng nhập', CAST(0x0000AF61013EAB47 AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (759, N'Admin', N'Xuất bán', CAST(0x0000AF61013EC85C AS DateTime), N'Thêm', N'XB000026', N'Đã trả tiền', 50000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (760, N'Admin', N'Đăng nhập', CAST(0x0000AF6200697E9A AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (761, N'Admin', N'Đăng nhập', CAST(0x0000AF620104A98C AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (762, N'Admin', N'Xuất bán', CAST(0x0000AF620106E1FC AS DateTime), N'Tạm tính', N'XB000066', N'Đã trả tiền', 40000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (763, N'Admin', N'Đăng nhập', CAST(0x0000AF62012BFD07 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (764, N'Admin', N'Đăng nhập', CAST(0x0000AF62012C659F AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (765, N'Admin', N'Đăng nhập', CAST(0x0000AF62012D6CE0 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (766, N'Admin', N'Đăng nhập', CAST(0x0000AF62012E8D67 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (767, N'Admin', N'Đăng nhập', CAST(0x0000AF62013AFFB8 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (768, N'Admin', N'Đăng nhập', CAST(0x0000AF630151697F AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (769, N'Admin', N'Xuất bán', CAST(0x0000AF63015198A8 AS DateTime), N'Thêm', N'XB000028', N'Đã trả tiền', 50000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (770, N'Admin', N'Đăng nhập', CAST(0x0000AF63015401DD AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (771, N'Admin', N'Đăng nhập', CAST(0x0000AF630156952D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (772, N'Admin', N'Đăng nhập', CAST(0x0000AF64007BFD9A AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (773, N'Admin', N'Đăng nhập', CAST(0x0000AF64007DDE00 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (774, N'Admin', N'Đăng nhập', CAST(0x0000AF64007E5305 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (775, N'Admin', N'Đăng nhập', CAST(0x0000AF64007FD8A3 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (776, N'Admin', N'Xuất bán', CAST(0x0000AF6400851C26 AS DateTime), N'Thêm', N'XB000001', N'Đã trả tiền', 40000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (777, N'Admin', N'Đăng nhập', CAST(0x0000AF640086C7C9 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (778, N'Admin', N'Xuất bán', CAST(0x0000AF640086E2C5 AS DateTime), N'Thêm', N'XB000001', N'Đã trả tiền', 60000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (779, N'Admin', N'Xuất bán', CAST(0x0000AF640087F87D AS DateTime), N'Thêm', N'XB000002', N'Ghi công nợ', 40000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (780, N'Admin', N'Đăng nhập', CAST(0x0000AF640132DE23 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (781, N'Admin', N'Đăng nhập', CAST(0x0000AF6401362B43 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (782, N'Admin', N'Đăng nhập', CAST(0x0000AF640137768A AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (783, N'Admin', N'Đăng nhập', CAST(0x0000AF6401397283 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (784, N'Admin', N'Đăng nhập', CAST(0x0000AF65007C068F AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (785, N'Admin', N'Đăng nhập', CAST(0x0000AF65011F6FBB AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (786, N'Admin', N'Đăng nhập', CAST(0x0000AF65012B8E71 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (787, N'Admin', N'Đăng nhập', CAST(0x0000AF65012E4503 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (788, N'Admin', N'Đăng nhập', CAST(0x0000AF65012F92C9 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (789, N'Admin', N'Đăng nhập', CAST(0x0000AF65013717AC AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (790, N'Admin', N'Đăng nhập', CAST(0x0000AF6501384A4F AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (791, N'Admin', N'Đăng nhập', CAST(0x0000AF6501390B28 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (792, N'Admin', N'Đăng nhập', CAST(0x0000AF65013B1C4D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (793, N'Admin', N'Đăng nhập', CAST(0x0000AF65013CC322 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (794, N'Admin', N'Đăng nhập', CAST(0x0000AF65013F5F86 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (795, N'Admin', N'Đăng nhập', CAST(0x0000AF65014488EB AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (796, N'Admin', N'Đăng nhập', CAST(0x0000AF650145773D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (797, N'Admin', N'Đăng nhập', CAST(0x0000AF65014757D1 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (798, N'Admin', N'Xuất bán', CAST(0x0000AF65014776F1 AS DateTime), N'Thêm', N'XB000003', N'Đã trả tiền', 223000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (799, N'Admin', N'Đăng nhập', CAST(0x0000AF650147E871 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (800, N'Admin', N'Đăng nhập', CAST(0x0000AF6501484F63 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (801, N'Admin', N'Đăng nhập', CAST(0x0000AF65014908C0 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (802, N'Admin', N'Đăng nhập', CAST(0x0000AF6501522F34 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (803, N'Admin', N'Đăng nhập', CAST(0x0000AF650152DA1B AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (804, N'Admin', N'Đăng nhập', CAST(0x0000AF6501538C36 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (805, N'Admin', N'Đăng nhập', CAST(0x0000AF650154CB0C AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (806, N'Admin', N'Đăng nhập', CAST(0x0000AF66007F5CC5 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (807, N'Admin', N'Đăng nhập', CAST(0x0000AF660080DE35 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (808, N'Admin', N'Đăng nhập', CAST(0x0000AF660082018E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (809, N'Admin', N'Đăng nhập', CAST(0x0000AF66008414BC AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (810, N'Admin', N'Đăng nhập', CAST(0x0000AF66008B6FF5 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (811, N'Admin', N'Đăng nhập', CAST(0x0000AF660092CE49 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (812, N'Admin', N'Đăng nhập', CAST(0x0000AF66009377F6 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (813, N'Admin', N'Đăng nhập', CAST(0x0000AF6600AEF309 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (814, N'Admin', N'Đăng nhập', CAST(0x0000AF6600B2D316 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (815, N'Admin', N'Đăng nhập', CAST(0x0000AF67008DF6EA AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (816, N'Admin', N'Đăng nhập', CAST(0x0000AF6700930274 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (817, N'Admin', N'Đăng nhập', CAST(0x0000AF67014024FD AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (818, N'Admin', N'Đăng nhập', CAST(0x0000AF6701437FD9 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (819, N'Admin', N'Đăng nhập', CAST(0x0000AF670144D394 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (820, N'Admin', N'Đăng nhập', CAST(0x0000AF670147D3FF AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (821, N'Admin', N'Đăng nhập', CAST(0x0000AF670150658B AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (822, N'Admin', N'Đăng nhập', CAST(0x0000AF670150F7B1 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (823, N'Admin', N'Xuất bán', CAST(0x0000AF670151138B AS DateTime), N'Tạm tính', N'XB000072', N'Đã trả tiền', 90000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (824, N'Admin', N'Đăng nhập', CAST(0x0000AF6701517020 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (825, N'Admin', N'Đăng nhập', CAST(0x0000AF6800F41319 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (826, N'Admin', N'Đăng nhập', CAST(0x0000AF6800F95D36 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (827, N'Admin', N'Đăng nhập', CAST(0x0000AF6800FAD3EE AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (828, N'Admin', N'Xuất bán', CAST(0x0000AF6800FAEF9D AS DateTime), N'Tạm tính', N'XB000073', N'Đã trả tiền', 90000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (829, N'Admin', N'Đăng nhập', CAST(0x0000AF6800FB8844 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (830, N'Admin', N'Đăng nhập', CAST(0x0000AF6800FD8AE8 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (831, N'Admin', N'Đăng nhập', CAST(0x0000AF6801011BA2 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (832, N'Admin', N'Đăng nhập', CAST(0x0000AF68010B2961 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (833, N'Admin', N'Đăng nhập', CAST(0x0000AF68011281A6 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (834, N'Admin', N'Đăng nhập', CAST(0x0000AF68012C1A6E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (835, N'Admin', N'Đăng nhập', CAST(0x0000AF68012FCEE7 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (836, N'Admin', N'Đăng nhập', CAST(0x0000AF68013249E2 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (837, N'Admin', N'Đăng nhập', CAST(0x0000AF680136F9A7 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (838, N'Giao', N'Đăng nhập', CAST(0x0000AF6801376DAB AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (839, N'Giao', N'Đăng nhập', CAST(0x0000AF680139E68F AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (840, N'Admin', N'Đăng nhập', CAST(0x0000AF68013BB0F3 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (841, N'Admin', N'Đăng nhập', CAST(0x0000AF68013CA02F AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (842, N'Giao', N'Đăng nhập', CAST(0x0000AF68013CAE5A AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (843, N'Admin', N'Đăng nhập', CAST(0x0000AF68013D5BA7 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (844, N'Admin', N'Đăng nhập', CAST(0x0000AF68013F07A7 AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (845, N'Giao', N'Đăng nhập', CAST(0x0000AF68013FCA93 AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (846, N'Giao', N'Đăng nhập', CAST(0x0000AF680143BE3C AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (847, N'Admin', N'Đăng nhập', CAST(0x0000AF690071781F AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (848, N'Admin', N'Đăng nhập', CAST(0x0000AF690075E6CB AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (849, N'Giao', N'Đăng nhập', CAST(0x0000AF6900761837 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (850, N'Giao', N'Đăng nhập', CAST(0x0000AF69007986B3 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
GO
print 'Processed 700 total records'
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (851, N'Giao', N'Đăng nhập', CAST(0x0000AF69009247C9 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (852, N'Admin', N'Đăng nhập', CAST(0x0000AF6900935DDF AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (853, N'Admin', N'Đăng nhập', CAST(0x0000AF6900938648 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (854, N'Admin', N'Đăng nhập', CAST(0x0000AF6900945479 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (855, N'Giao', N'Đăng nhập', CAST(0x0000AF690094F7F6 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (856, N'Admin', N'Đăng nhập', CAST(0x0000AF6900FB03E4 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (857, N'Admin', N'Đăng nhập', CAST(0x0000AF6900FC5491 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (858, N'Giao', N'Đăng nhập', CAST(0x0000AF6900FC6C4C AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (859, N'Admin', N'Đăng nhập', CAST(0x0000AF6900FEC34E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (860, N'Admin', N'Xuất bán', CAST(0x0000AF6900FEF477 AS DateTime), N'Tạm tính', N'XB000074', N'Đã trả tiền', 40000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (861, N'Admin', N'Đăng nhập', CAST(0x0000AF6900FFE957 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (862, N'Giao', N'Đăng nhập', CAST(0x0000AF6901002B56 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (863, N'Giao', N'Đăng nhập', CAST(0x0000AF69010116B8 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (864, N'Admin', N'Đăng nhập', CAST(0x0000AF690102DCCB AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (865, N'Admin', N'Đăng nhập', CAST(0x0000AF690104192E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (866, N'Giao', N'Đăng nhập', CAST(0x0000AF690106CBBC AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (867, N'Giao', N'Đăng nhập', CAST(0x0000AF690107068D AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (868, N'Giao', N'Đăng nhập', CAST(0x0000AF69010B6F9B AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (869, N'Giao', N'Đăng nhập', CAST(0x0000AF69010B75BF AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (870, N'Giao', N'Đăng nhập', CAST(0x0000AF69010B768C AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (871, N'Giao', N'Đăng nhập', CAST(0x0000AF69010BD935 AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (872, N'Admin', N'Đăng nhập', CAST(0x0000AF69010C5B02 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (873, N'Admin', N'Đăng nhập', CAST(0x0000AF69010CCBBF AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (874, N'Admin', N'Đăng nhập', CAST(0x0000AF69010E9DF4 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (875, N'Admin', N'Đăng nhập', CAST(0x0000AF69010F3471 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (876, N'Giao', N'Đăng nhập', CAST(0x0000AF69012F3D15 AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (877, N'Admin', N'Đăng nhập', CAST(0x0000AF69012F7A48 AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (878, N'Admin', N'Đăng nhập', CAST(0x0000AF6A006F0FDA AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (879, N'Admin', N'Đăng nhập', CAST(0x0000AF6A00803CF5 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (880, N'Giao', N'Đăng nhập', CAST(0x0000AF6A00805523 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (881, N'Admin', N'Đăng nhập', CAST(0x0000AF6A00826B9D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (882, N'Giao', N'Đăng nhập', CAST(0x0000AF6A008289E7 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (883, N'Admin', N'Đăng nhập', CAST(0x0000AF6A0084E448 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (884, N'Giao', N'Đăng nhập', CAST(0x0000AF6A008507F5 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (885, N'Admin', N'Đăng nhập', CAST(0x0000AF6A00897D61 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (886, N'Admin', N'Đăng nhập', CAST(0x0000AF6A008E9DF8 AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (887, N'Admin', N'Đăng nhập', CAST(0x0000AF6A009D89EF AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (888, N'0947722273', N'Đăng nhập', CAST(0x0000AF6A009F0732 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (889, N'0947722273', N'Đăng nhập', CAST(0x0000AF6A00A03810 AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (890, N'0947722273', N'Đăng nhập', CAST(0x0000AF6A00A04448 AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (891, N'0947722273', N'Đăng nhập', CAST(0x0000AF6A00AE5C25 AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (892, N'0947722273', N'Đăng nhập', CAST(0x0000AF6A00EA5B71 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (893, N'Admin', N'Đăng nhập', CAST(0x0000AF6A00EDFD8B AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (894, N'Admin', N'Xuất bán', CAST(0x0000AF6A00EE08C7 AS DateTime), N'Tạm tính', N'XB000084', N'Đã trả tiền', 40000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (895, N'0947722273', N'Đăng nhập', CAST(0x0000AF6A00F2DF96 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (896, N'Admin', N'Đăng nhập', CAST(0x0000AF6A00F32FAE AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (897, N'0947722273', N'Đăng nhập', CAST(0x0000AF6A00F3572A AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (898, N'0947722273', N'Đăng nhập', CAST(0x0000AF6A00F3A937 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (899, N'0947722273', N'Đăng nhập', CAST(0x0000AF6A0134D30C AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (900, N'0947722273', N'Đăng nhập', CAST(0x0000AF6A01357BDA AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (901, N'Admin', N'Đăng nhập', CAST(0x0000AF6A0136115C AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (902, N'Admin', N'Xuất bán', CAST(0x0000AF6A01365A3D AS DateTime), N'Tạm tính', N'XB000090', N'Đã trả tiền', 20000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (903, N'Admin', N'Xuất bán', CAST(0x0000AF6A0136E1C9 AS DateTime), N'Tạm tính', N'XB000091', N'Đã trả tiền', 15000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (904, N'0947722273', N'Đăng nhập', CAST(0x0000AF6A013869E7 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (905, N'0947722273', N'Đăng nhập', CAST(0x0000AF6A01395539 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (906, N'Admin', N'Đăng nhập', CAST(0x0000AF6A013A07D4 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (907, N'0947722273', N'Đăng nhập', CAST(0x0000AF6A013A18B9 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (908, N'Admin', N'Đăng nhập', CAST(0x0000AF6A013AE96F AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (909, N'0947722273', N'Đăng nhập', CAST(0x0000AF6A013B41BD AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (910, N'Admin', N'Đăng nhập', CAST(0x0000AF6A013BC5C8 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (911, N'0947722273', N'Đăng nhập', CAST(0x0000AF6A013C1ADA AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (912, N'Admin', N'Đăng nhập', CAST(0x0000AF6A013C9449 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (913, N'Admin', N'Xuất bán', CAST(0x0000AF6A013CA3CE AS DateTime), N'Thêm', N'XB000001', N'Đã trả tiền', 10000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (914, N'0947722273', N'Đăng nhập', CAST(0x0000AF6A013DC705 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (915, N'0947722273', N'Đăng nhập', CAST(0x0000AF6A013F56FE AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (916, N'Admin', N'Đăng nhập', CAST(0x0000AF6A014199F3 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (917, N'0947722273', N'Đăng nhập', CAST(0x0000AF6A0141EFBD AS DateTime), N'Vừa đăng nhập', N'::1', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (918, N'0947722273', N'Đăng nhập', CAST(0x0000AF6A014245B5 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (919, N'Admin', N'Đăng nhập', CAST(0x0000AF6A0142E78F AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (920, N'0947722273', N'Đăng nhập', CAST(0x0000AF6A0143ABD8 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (921, N'Admin', N'Đăng nhập', CAST(0x0000AF6A01471E57 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (922, N'0947722273', N'Đăng nhập', CAST(0x0000AF6A014740E4 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (923, N'0947722273', N'Đăng nhập', CAST(0x0000AF6A0147BE53 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (924, N'0947722273', N'Đăng nhập', CAST(0x0000AF6A0151F764 AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (925, N'Admin', N'Đăng nhập', CAST(0x0000AF6C00983F69 AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (926, N'Admin', N'Đăng nhập', CAST(0x0000AF71014EC9A2 AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (927, N'Admin', N'Đăng nhập', CAST(0x0000AF720073F068 AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (928, N'Admin', N'Đăng nhập', CAST(0x0000AF77013EE13E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (929, N'Admin', N'Đăng nhập', CAST(0x0000AF77013F84AF AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (930, N'Admin', N'Đăng nhập', CAST(0x0000AF7701404C56 AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (931, N'Admin', N'Đăng nhập', CAST(0x0000AF790075E216 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (932, N'Admin', N'Đăng nhập', CAST(0x0000AF7901469588 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (933, N'Admin', N'Đăng nhập', CAST(0x0000AF790148580F AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (934, N'Admin', N'Đăng nhập', CAST(0x0000AF7901498A8A AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (935, N'Admin', N'Đăng nhập', CAST(0x0000AF79014BA977 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (936, N'Admin', N'Đăng nhập', CAST(0x0000AF7901528A97 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (937, N'Admin', N'Đăng nhập', CAST(0x0000AF7901577B25 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (938, N'Admin', N'Đăng nhập', CAST(0x0000AF790158FB23 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (939, N'Admin', N'Đăng nhập', CAST(0x0000AF7901590A5C AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (940, N'Admin', N'Đăng nhập', CAST(0x0000AF790159238D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (941, N'Admin', N'Đăng nhập', CAST(0x0000AF790159A985 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (942, N'Admin', N'Đăng nhập', CAST(0x0000AF79015A05FB AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (943, N'Admin', N'Đăng nhập', CAST(0x0000AF79015B24D0 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (944, N'Admin', N'Đăng nhập', CAST(0x0000AF79015BA054 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (945, N'Admin', N'Đăng nhập', CAST(0x0000AF79015BB1B3 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (946, N'Admin', N'Đăng nhập', CAST(0x0000AF79015C1498 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (947, N'Admin', N'Đăng nhập', CAST(0x0000AF79015C9E0C AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (948, N'Admin', N'Đăng nhập', CAST(0x0000AF79015DCA78 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (949, N'Admin', N'Đăng nhập', CAST(0x0000AF79015F20A6 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (950, N'Admin', N'Đăng nhập', CAST(0x0000AF79015F3189 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (951, N'Admin', N'Đăng nhập', CAST(0x0000AF79015F7C9D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
GO
print 'Processed 800 total records'
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (952, N'Admin', N'Đăng nhập', CAST(0x0000AF79016055E0 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (953, N'Admin', N'Đăng nhập', CAST(0x0000AF7901606C3B AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (954, N'Admin', N'Đăng nhập', CAST(0x0000AF790161BE02 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (955, N'Admin', N'Đăng nhập', CAST(0x0000AF790161CD7D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (956, N'Admin', N'Đăng nhập', CAST(0x0000AF79016306A8 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (957, N'Admin', N'Đăng nhập', CAST(0x0000AF7901631A42 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (958, N'Admin', N'Đăng nhập', CAST(0x0000AF79016329E9 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (959, N'Admin', N'Đăng nhập', CAST(0x0000AF79016332A7 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (960, N'Admin', N'Đăng nhập', CAST(0x0000AF790164E93C AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (961, N'Admin', N'Đăng nhập', CAST(0x0000AF790165410B AS DateTime), N'Vừa đăng nhập', N'192.168.1.44', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (962, N'Admin', N'Đăng nhập', CAST(0x0000AF7901679687 AS DateTime), N'Vừa đăng nhập', N'192.168.1.44', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (963, N'Admin', N'Đăng nhập', CAST(0x0000AF790167A8C1 AS DateTime), N'Vừa đăng nhập', N'192.168.1.44', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (964, N'Admin', N'Đăng nhập', CAST(0x0000AF7A007343B3 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (965, N'0947722273', N'Đăng nhập', CAST(0x0000AF7A00738002 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (966, N'0947722273', N'Đăng nhập', CAST(0x0000AF7A00738F8C AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (967, N'0947722273', N'Đăng nhập', CAST(0x0000AF7A00739582 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (968, N'Admin', N'Đăng nhập', CAST(0x0000AF7A00743EF1 AS DateTime), N'Vừa đăng nhập', N'192.168.1.44', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (969, N'Admin', N'Đăng nhập', CAST(0x0000AF7A00743EF1 AS DateTime), N'Vừa đăng nhập', N'192.168.1.44', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (970, N'0947722273', N'Đăng nhập', CAST(0x0000AF7A00744850 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (971, N'Admin', N'Đăng nhập', CAST(0x0000AF7A00748842 AS DateTime), N'Vừa đăng nhập', N'192.168.1.44', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (972, N'Admin', N'Đăng nhập', CAST(0x0000AF7A007491AA AS DateTime), N'Vừa đăng nhập', N'192.168.1.44', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (973, N'Admin', N'Đăng nhập', CAST(0x0000AF7A00749B1E AS DateTime), N'Vừa đăng nhập', N'192.168.1.44', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (974, N'Admin', N'Đăng nhập', CAST(0x0000AF7A008D7B89 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (975, N'Admin', N'Đăng nhập', CAST(0x0000AF7A008DEEE6 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (976, N'Admin', N'Đăng nhập', CAST(0x0000AF7A008E071B AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (977, N'0947722273', N'Đăng nhập', CAST(0x0000AF7A008E75E2 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (978, N'0947722273', N'Đăng nhập', CAST(0x0000AF7A008E89C3 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (979, N'0947722273', N'Đăng nhập', CAST(0x0000AF7A009075E1 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (980, N'0947722273', N'Đăng nhập', CAST(0x0000AF7A00928522 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (981, N'Admin', N'Đăng nhập', CAST(0x0000AF7A0092B2A5 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (982, N'Admin', N'Đăng nhập', CAST(0x0000AF7A0092CFD3 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (983, N'Giao', N'Đăng nhập', CAST(0x0000AF7A0092E2C2 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (984, N'Giao', N'Đăng nhập', CAST(0x0000AF7A0092ED56 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (985, N'Giao', N'Đăng nhập', CAST(0x0000AF7A0095144B AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (986, N'Giao', N'Đăng nhập', CAST(0x0000AF7A00F46BF9 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (987, N'Giao', N'Đăng nhập', CAST(0x0000AF7A00FA6806 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (988, N'Giao', N'Đăng nhập', CAST(0x0000AF7A00FBEB20 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (989, N'Giao', N'Đăng nhập', CAST(0x0000AF7A00FD2B53 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (990, N'Giao', N'Đăng nhập', CAST(0x0000AF7A00FF48EB AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (991, N'Giao', N'Đăng nhập', CAST(0x0000AF7A00FF5F18 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (992, N'Giao', N'Đăng nhập', CAST(0x0000AF7A010A6740 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (993, N'Giao', N'Đăng nhập', CAST(0x0000AF7A010A7367 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (994, N'Giao', N'Đăng nhập', CAST(0x0000AF7A010E6178 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (995, N'Giao', N'Đăng nhập', CAST(0x0000AF7A010E7B17 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (996, N'Giao', N'Đăng nhập', CAST(0x0000AF7A010E9F79 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (997, N'Giao', N'Đăng nhập', CAST(0x0000AF7A011250D9 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (998, N'Giao', N'Đăng nhập', CAST(0x0000AF7A01180EB8 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (999, N'Giao', N'Đăng nhập', CAST(0x0000AF7A0127598C AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1000, N'Giao', N'Đăng nhập', CAST(0x0000AF7A01276BE2 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1001, N'Admin', N'Đăng nhập', CAST(0x0000AF7A0127F9D1 AS DateTime), N'Vừa đăng nhập', N'192.168.1.44', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1002, N'Admin', N'Đăng nhập', CAST(0x0000AF7A01281DEB AS DateTime), N'Vừa đăng nhập', N'192.168.1.44', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1003, N'Admin', N'Đăng nhập', CAST(0x0000AF7A0131E33C AS DateTime), N'Vừa đăng nhập', N'192.168.1.166', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1004, N'Giao', N'Đăng nhập', CAST(0x0000AF7A01343D01 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1005, N'Giao', N'Đăng nhập', CAST(0x0000AF7A01360523 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1006, N'Giao', N'Đăng nhập', CAST(0x0000AF7A0139A519 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1007, N'Giao', N'Đăng nhập', CAST(0x0000AF7A01459E37 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1008, N'Giao', N'Đăng nhập', CAST(0x0000AF7A014FC954 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1009, N'Giao', N'Đăng nhập', CAST(0x0000AF7A01525DA5 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1010, N'Giao', N'Đăng nhập', CAST(0x0000AF7A0154176B AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1011, N'Giao', N'Đăng nhập', CAST(0x0000AF7A01542C11 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1012, N'Giao', N'Đăng nhập', CAST(0x0000AF7A01548EF8 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1013, N'Admin', N'Đăng nhập', CAST(0x0000AF7A0160913B AS DateTime), N'Vừa đăng nhập', N'192.168.1.44', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1014, N'Admin', N'Đăng nhập', CAST(0x0000AF7A01609BDA AS DateTime), N'Vừa đăng nhập', N'192.168.1.44', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1015, N'Giao', N'Đăng nhập', CAST(0x0000AF7B011C7041 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1016, N'Admin', N'Đăng nhập', CAST(0x0000AF81012BCAD0 AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1017, N'Giao', N'Đăng nhập', CAST(0x0000AF8301223C9B AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1018, N'0947722273', N'Đăng nhập', CAST(0x0000AF8301229E91 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1019, N'Admin', N'Đăng nhập', CAST(0x0000AF83013D606C AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1020, N'Admin', N'Xuất bán', CAST(0x0000AF83013D72A7 AS DateTime), N'Thêm', N'XB000008', N'Đã trả tiền', 60000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1021, N'Admin', N'Xuất bán', CAST(0x0000AF83013DB043 AS DateTime), N'Thêm', N'XB000009', N'Ghi công nợ', 40000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1022, N'Admin', N'Đăng nhập', CAST(0x0000AF830147660C AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1023, N'Admin', N'Xuất bán', CAST(0x0000AF8301478F0D AS DateTime), N'Thêm', N'XB000001', N'Đã trả tiền', 40000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1024, N'Admin', N'Xuất bán', CAST(0x0000AF8301479BDD AS DateTime), N'Thêm', N'XB000002', N'Đã trả tiền', 23000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1025, N'0947722273', N'Đăng nhập', CAST(0x0000AF830147C2F4 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1026, N'0947722273', N'Đăng nhập', CAST(0x0000AF8301489268 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 4)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1027, N'Admin', N'Xuất bán', CAST(0x0000AF83015597A8 AS DateTime), N'Thêm', N'XB000151', N'Đã trả tiền', 20000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1028, N'Admin', N'Đăng nhập', CAST(0x0000AFA500B349B9 AS DateTime), N'Vừa đăng nhập', N'192.168.1.16', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1029, N'Admin', N'Đăng nhập', CAST(0x0000AFA500BF5D5A AS DateTime), N'Vừa đăng nhập', N'192.168.1.16', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1030, N'Admin', N'Đăng nhập', CAST(0x0000AFA60145BD94 AS DateTime), N'Vừa đăng nhập', N'192.168.2.7', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1031, N'Admin', N'Đăng nhập', CAST(0x0000AFA801503801 AS DateTime), N'Vừa đăng nhập', N'192.168.2.7', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1032, N'Admin', N'Đăng nhập', CAST(0x0000AFA90112ED75 AS DateTime), N'Vừa đăng nhập', N'192.168.2.7', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1033, N'Admin', N'Đăng nhập', CAST(0x0000AFAA00836284 AS DateTime), N'Vừa đăng nhập', N'192.168.1.16', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1034, N'Admin', N'Đăng nhập', CAST(0x0000AFAC00704322 AS DateTime), N'Vừa đăng nhập', N'192.168.1.16', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1035, N'Admin', N'Đăng nhập', CAST(0x0000AFAC008F0ECA AS DateTime), N'Vừa đăng nhập', N'192.168.1.16', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1036, N'Admin', N'Đăng nhập', CAST(0x0000AFAC00B06FCF AS DateTime), N'Vừa đăng nhập', N'192.168.1.16', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1037, N'Admin', N'Đăng nhập', CAST(0x0000AFAC00E9C37E AS DateTime), N'Vừa đăng nhập', N'192.168.1.16', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1038, N'Giao', N'Đăng nhập', CAST(0x0000AFC300F76BD9 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1039, N'Giao', N'Đăng nhập', CAST(0x0000AFC400F545B0 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1040, N'Giao', N'Đăng nhập', CAST(0x0000AFD600B3F55D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1041, N'Giao', N'Đăng nhập', CAST(0x0000AFDA0099D3CA AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1042, N'Giao', N'Đăng nhập', CAST(0x0000AFDB00AE50C9 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1043, N'Giao', N'Xuất bán', CAST(0x0000AFDB00AE827C AS DateTime), N'Thêm', N'XB000006', N'Đã trả tiền', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1044, N'Giao', N'Xuất bán', CAST(0x0000AFDB00AEA76E AS DateTime), N'Thêm', N'XB000006', N'Đã trả tiền', 20000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1045, N'Admin', N'Đăng nhập', CAST(0x0000AFF30125748B AS DateTime), N'Vừa đăng nhập', N'192.168.1.17', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1046, N'Admin', N'Đăng nhập', CAST(0x0000AFF30125908D AS DateTime), N'Vừa đăng nhập', N'192.168.1.17', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1047, N'Admin', N'Đăng nhập', CAST(0x0000AFF30126B380 AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1048, N'Admin', N'Đăng nhập', CAST(0x0000AFF30126DCA3 AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1049, N'Admin', N'Đăng nhập', CAST(0x0000AFF3012730F8 AS DateTime), N'Vừa đăng nhập', N'192.168.1.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1050, N'Admin', N'Đăng nhập', CAST(0x0000AFF30127F01A AS DateTime), N'Vừa đăng nhập', N'192.168.1.17', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1051, N'Admin', N'Đăng nhập', CAST(0x0000AFF30128047E AS DateTime), N'Vừa đăng nhập', N'192.168.1.17', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1052, N'Admin', N'Đăng nhập', CAST(0x0000B01100F0A463 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
GO
print 'Processed 900 total records'
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1053, N'Admin', N'Đăng nhập', CAST(0x0000B012008784A3 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1054, N'Admin', N'Đăng nhập', CAST(0x0000B0120103BC3B AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1055, N'Admin', N'Đăng nhập', CAST(0x0000B0150130DF2C AS DateTime), N'Vừa đăng nhập', N'116.103.139.237', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1056, N'Admin', N'Xuất bán', CAST(0x0000B015013114D2 AS DateTime), N'Thêm', N'XB000007', N'Đã trả tiền', 33000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1057, N'Admin', N'Xuất bán', CAST(0x0000B01501318B09 AS DateTime), N'Thêm', N'XB000008', N'Đã trả tiền', 65000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1058, N'Admin', N'Đăng nhập', CAST(0x0000B0150140873F AS DateTime), N'Vừa đăng nhập', N'118.68.84.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1059, N'Admin', N'Đăng nhập', CAST(0x0000B01801452612 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1060, N'Admin', N'Đăng nhập', CAST(0x0000B01A00EC89F4 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1061, N'Admin', N'Đăng nhập', CAST(0x0000B01A00F1C790 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1062, N'Admin', N'Đăng nhập', CAST(0x0000B01A00F31146 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1063, N'Admin', N'Đăng nhập', CAST(0x0000B01A00F417C0 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1064, N'Admin', N'Đăng nhập', CAST(0x0000B01A00F6A74E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1065, N'Admin', N'Đăng nhập', CAST(0x0000B01A00F82076 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1066, N'Admin', N'Đăng nhập', CAST(0x0000B01A00F88972 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1067, N'Admin', N'Đăng nhập', CAST(0x0000B01A00F93BB1 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1068, N'Admin', N'Đăng nhập', CAST(0x0000B01A00FA9C49 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1069, N'Admin', N'Đăng nhập', CAST(0x0000B01A00FAFC70 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1070, N'Admin', N'Đăng nhập', CAST(0x0000B01A00FB9FD6 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1071, N'Admin', N'Đăng nhập', CAST(0x0000B01A00FBB741 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1072, N'Admin', N'Đăng nhập', CAST(0x0000B01A00FC990C AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1073, N'Admin', N'Đăng nhập', CAST(0x0000B01A0101DCF0 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1074, N'Admin', N'Đăng nhập', CAST(0x0000B01A01040057 AS DateTime), N'Vừa đăng nhập', N'192.168.2.2', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1075, N'Admin', N'Đăng nhập', CAST(0x0000B01A0104AB30 AS DateTime), N'Vừa đăng nhập', N'192.168.2.2', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1076, N'Admin', N'Đăng nhập', CAST(0x0000B01A0113F61F AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1077, N'Admin', N'Đăng nhập', CAST(0x0000B01A01170EBC AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1078, N'Admin', N'Đăng nhập', CAST(0x0000B01A0117859B AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1079, N'Admin', N'Đăng nhập', CAST(0x0000B01A011866BA AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1080, N'Admin', N'Đăng nhập', CAST(0x0000B01A011A477C AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1081, N'Admin', N'Xuất bán', CAST(0x0000B01A011A5DA3 AS DateTime), N'Thêm', N'XB000009', N'Đã trả tiền', 23000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1082, N'Admin', N'Đăng nhập', CAST(0x0000B01A011BE524 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1083, N'Admin', N'Đăng nhập', CAST(0x0000B01A011EF82C AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1084, N'Admin', N'Đăng nhập', CAST(0x0000B01A0125E80D AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1085, N'Admin', N'Xuất bán', CAST(0x0000B01A0125FCE4 AS DateTime), N'Thêm', N'XB000006', N'Đã trả tiền', 40000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1086, N'Admin', N'Đăng nhập', CAST(0x0000B01A013328A8 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1087, N'Admin', N'Đăng nhập', CAST(0x0000B03E010BE3E5 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1088, N'Admin', N'Đăng nhập', CAST(0x0000B03E010F3CC0 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1089, N'Admin', N'Đăng nhập', CAST(0x0000B0420135C95C AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1090, N'Admin', N'Đăng nhập', CAST(0x0000B0480142EA01 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1091, N'Admin', N'Đăng nhập', CAST(0x0000B0490107B047 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1092, N'Admin', N'Xuất bán', CAST(0x0000B049010842FD AS DateTime), N'Thêm', N'XB000007', N'Đã trả tiền', 23000.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1093, N'Admin', N'Đăng nhập', CAST(0x0000B04A012E4733 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1094, N'Admin', N'Đăng nhập', CAST(0x0000B04B0083B241 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1095, N'Admin', N'Đăng nhập', CAST(0x0000B04B0144909E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1096, N'Admin', N'Đăng nhập', CAST(0x0000B05E0103FC13 AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1097, N'Giao', N'Đăng nhập', CAST(0x0000B05E010883CB AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1098, N'Admin', N'Đăng nhập', CAST(0x0000B05E0108AC9D AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1099, N'Admin', N'Đăng nhập', CAST(0x0000B05E010FB353 AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1100, N'Admin', N'Đăng nhập', CAST(0x0000B05E0131E332 AS DateTime), N'Vừa đăng nhập', N'192.168.1.18', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1101, N'Admin', N'Đăng nhập', CAST(0x0000B05F00F45797 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1102, N'Admin', N'Đăng nhập', CAST(0x0000B12200650FC3 AS DateTime), N'Vừa đăng nhập', N'192.168.2.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1103, N'Admin', N'Đăng nhập', CAST(0x0000B122006DAB2A AS DateTime), N'Vừa đăng nhập', N'192.168.2.4', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1104, N'Admin', N'Đăng nhập', CAST(0x0000B1220085783C AS DateTime), N'Vừa đăng nhập', N'192.168.2.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1105, N'Admin', N'Đăng nhập', CAST(0x0000B15B00E1F70C AS DateTime), N'Vừa đăng nhập', N'192.168.2.5', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1106, N'Admin', N'Đăng nhập', CAST(0x0000B1A800B3E8B5 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1107, N'Admin', N'Đăng nhập', CAST(0x0000B1A800B85860 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1108, N'Admin', N'Đăng nhập', CAST(0x0000B1A8012BB6EA AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1109, N'Admin', N'Đăng nhập', CAST(0x0000B1A80156D991 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1110, N'Admin', N'Đăng nhập', CAST(0x0000B1A900BBC66E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1111, N'Admin', N'Đăng nhập', CAST(0x0000B1A900E32C9E AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1112, N'Admin', N'Đăng nhập', CAST(0x0000B1AA0098ECF9 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1113, N'Admin', N'Đăng nhập', CAST(0x0000B1AA00A87F02 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1114, N'Admin', N'Đăng nhập', CAST(0x0000B1AA00C4EE40 AS DateTime), N'Vừa đăng nhập', N'192.168.1.32', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1115, N'Admin', N'Đăng nhập', CAST(0x0000B1B000E695D3 AS DateTime), N'Vừa đăng nhập', N'127.0.0.1', N'', 0.0000, 1)
INSERT [dbo].[DmNhatKyNDCF] ([NhatKyND_ID], [NguoiDung_ID], [ChucNang], [NgayGio], [ThaoTac], [ThamChieu], [ThamSo], [SoTien], [TenCongTy_ID]) VALUES (1116, N'Admin', N'Đăng nhập', CAST(0x0000B1B400F02B8C AS DateTime), N'Vừa đăng nhập', N'192.168.2.9', N'', 0.0000, 1)
SET IDENTITY_INSERT [dbo].[DmNhatKyNDCF] OFF
/****** Object:  Table [dbo].[DmNganHangCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DmNganHangCF](
	[NganHang_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TenNganHang] [nvarchar](max) NULL,
	[TenCongTy_ID] [bigint] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_DmNganHangCF] PRIMARY KEY CLUSTERED 
(
	[NganHang_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DmNganHangCF] ON
INSERT [dbo].[DmNganHangCF] ([NganHang_ID], [TenNganHang], [TenCongTy_ID], [Status]) VALUES (0, N'0', 0, 0)
INSERT [dbo].[DmNganHangCF] ([NganHang_ID], [TenNganHang], [TenCongTy_ID], [Status]) VALUES (1, N'VietComBank', 1, 1)
INSERT [dbo].[DmNganHangCF] ([NganHang_ID], [TenNganHang], [TenCongTy_ID], [Status]) VALUES (3, N'VietTinBank', 1, 0)
INSERT [dbo].[DmNganHangCF] ([NganHang_ID], [TenNganHang], [TenCongTy_ID], [Status]) VALUES (5, N'VCB', 4, 0)
INSERT [dbo].[DmNganHangCF] ([NganHang_ID], [TenNganHang], [TenCongTy_ID], [Status]) VALUES (6, N'VietTinBank', 4, 0)
INSERT [dbo].[DmNganHangCF] ([NganHang_ID], [TenNganHang], [TenCongTy_ID], [Status]) VALUES (9, N'Giao', 1, 0)
INSERT [dbo].[DmNganHangCF] ([NganHang_ID], [TenNganHang], [TenCongTy_ID], [Status]) VALUES (10, N'afa', 1, 0)
SET IDENTITY_INSERT [dbo].[DmNganHangCF] OFF
/****** Object:  Table [dbo].[DmLoaiHHCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DmLoaiHHCF](
	[LoaiHH_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TenLoaiHH] [nvarchar](50) NULL,
	[TenCongTy_ID] [bigint] NULL,
	[NhomNguyenLieu] [bit] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_DmLoaiHHCF] PRIMARY KEY CLUSTERED 
(
	[LoaiHH_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DmLoaiHHCF] ON
INSERT [dbo].[DmLoaiHHCF] ([LoaiHH_ID], [TenLoaiHH], [TenCongTy_ID], [NhomNguyenLieu], [Status]) VALUES (1, N'Đồ uống', 1, 0, 0)
INSERT [dbo].[DmLoaiHHCF] ([LoaiHH_ID], [TenLoaiHH], [TenCongTy_ID], [NhomNguyenLieu], [Status]) VALUES (2, N'Bánh', 1, 0, 0)
INSERT [dbo].[DmLoaiHHCF] ([LoaiHH_ID], [TenLoaiHH], [TenCongTy_ID], [NhomNguyenLieu], [Status]) VALUES (5, N'Đồ uống', 3, 0, 1)
INSERT [dbo].[DmLoaiHHCF] ([LoaiHH_ID], [TenLoaiHH], [TenCongTy_ID], [NhomNguyenLieu], [Status]) VALUES (6, N'Nguyên liệu', 3, 1, 1)
INSERT [dbo].[DmLoaiHHCF] ([LoaiHH_ID], [TenLoaiHH], [TenCongTy_ID], [NhomNguyenLieu], [Status]) VALUES (9, N'Đồ uống', 4, 0, 0)
INSERT [dbo].[DmLoaiHHCF] ([LoaiHH_ID], [TenLoaiHH], [TenCongTy_ID], [NhomNguyenLieu], [Status]) VALUES (13, N'đồ có cồn', 1, 0, 0)
INSERT [dbo].[DmLoaiHHCF] ([LoaiHH_ID], [TenLoaiHH], [TenCongTy_ID], [NhomNguyenLieu], [Status]) VALUES (23, N'Nhà bếp', 1, 1, 0)
INSERT [dbo].[DmLoaiHHCF] ([LoaiHH_ID], [TenLoaiHH], [TenCongTy_ID], [NhomNguyenLieu], [Status]) VALUES (25, N'Đồ uống', 13, 0, 0)
INSERT [dbo].[DmLoaiHHCF] ([LoaiHH_ID], [TenLoaiHH], [TenCongTy_ID], [NhomNguyenLieu], [Status]) VALUES (26, N'Đồ ăn', 13, 0, 0)
SET IDENTITY_INSERT [dbo].[DmLoaiHHCF] OFF
/****** Object:  Table [dbo].[DmLoaiDTCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DmLoaiDTCF](
	[LoaiDT_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TenLoaiDT] [nvarchar](50) NULL,
	[TenCongTy_ID] [bigint] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_DmLoaiDTCF] PRIMARY KEY CLUSTERED 
(
	[LoaiDT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DmLoaiDTCF] ON
INSERT [dbo].[DmLoaiDTCF] ([LoaiDT_ID], [TenLoaiDT], [TenCongTy_ID], [Status]) VALUES (1, N'Khách hàng', 1, 0)
INSERT [dbo].[DmLoaiDTCF] ([LoaiDT_ID], [TenLoaiDT], [TenCongTy_ID], [Status]) VALUES (2, N'Nhà Cung cấp', 1, 0)
INSERT [dbo].[DmLoaiDTCF] ([LoaiDT_ID], [TenLoaiDT], [TenCongTy_ID], [Status]) VALUES (3, N'Nhân viên', 1, 0)
INSERT [dbo].[DmLoaiDTCF] ([LoaiDT_ID], [TenLoaiDT], [TenCongTy_ID], [Status]) VALUES (10, N'Khách hàng', 13, 0)
SET IDENTITY_INSERT [dbo].[DmLoaiDTCF] OFF
/****** Object:  Table [dbo].[DmKhoGiayInCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DmKhoGiayInCF](
	[KhoGiay_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TenKhoGiay] [nvarchar](150) NULL,
	[LoaiKhoGiay_ID] [int] NULL,
	[TenFile] [nvarchar](100) NULL,
	[AnHien] [bit] NULL,
	[ThuTu] [int] NULL,
	[TenCongTy_ID] [bigint] NULL,
 CONSTRAINT [PK_DmKhoGiayInCF] PRIMARY KEY CLUSTERED 
(
	[KhoGiay_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DmKhoGiayInCF] ON
INSERT [dbo].[DmKhoGiayInCF] ([KhoGiay_ID], [TenKhoGiay], [LoaiKhoGiay_ID], [TenFile], [AnHien], [ThuTu], [TenCongTy_ID]) VALUES (1, N'Khổ giấy A4', 1, N'KhoGiayA4', 0, 1, 1)
INSERT [dbo].[DmKhoGiayInCF] ([KhoGiay_ID], [TenKhoGiay], [LoaiKhoGiay_ID], [TenFile], [AnHien], [ThuTu], [TenCongTy_ID]) VALUES (2, N'Khổ giấy A5', 1, N'KhoGiayA5', 1, 1, 1)
INSERT [dbo].[DmKhoGiayInCF] ([KhoGiay_ID], [TenKhoGiay], [LoaiKhoGiay_ID], [TenFile], [AnHien], [ThuTu], [TenCongTy_ID]) VALUES (3, N'Giấy in bill - 8,0 cm', 1, N'KhoGiay80', 1, 3, 1)
INSERT [dbo].[DmKhoGiayInCF] ([KhoGiay_ID], [TenKhoGiay], [LoaiKhoGiay_ID], [TenFile], [AnHien], [ThuTu], [TenCongTy_ID]) VALUES (4, N'Giấy in bill - 5,8 cm', 1, N'KhoGiay58', 1, 3, 1)
SET IDENTITY_INSERT [dbo].[DmKhoGiayInCF] OFF
/****** Object:  Table [dbo].[DmHangHoaCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DmHangHoaCF](
	[HH_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MaHH] [nvarchar](13) NULL,
	[TenHH] [nvarchar](150) NULL,
	[GiaMua] [money] NULL,
	[GiaBan1] [money] NULL,
	[GiaBan2] [money] NULL,
	[GiaBan3] [money] NULL,
	[LoaiHH_ID] [bigint] NOT NULL,
	[DVT_ID] [bigint] NOT NULL,
	[TenCongTy_ID] [bigint] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_DmHangHoaCF] PRIMARY KEY CLUSTERED 
(
	[HH_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DmHangHoaCF] ON
INSERT [dbo].[DmHangHoaCF] ([HH_ID], [MaHH], [TenHH], [GiaMua], [GiaBan1], [GiaBan2], [GiaBan3], [LoaiHH_ID], [DVT_ID], [TenCongTy_ID], [Status]) VALUES (1, N'PS', N'Pesci', 20000.0000, 30000.0000, 40000.0000, 50000.0000, 1, 7, 1, 0)
INSERT [dbo].[DmHangHoaCF] ([HH_ID], [MaHH], [TenHH], [GiaMua], [GiaBan1], [GiaBan2], [GiaBan3], [LoaiHH_ID], [DVT_ID], [TenCongTy_ID], [Status]) VALUES (3, N'REvi', N'Revil', 8000.0000, 9000.0000, 10000.0000, 12000.0000, 1, 5, 1, 0)
INSERT [dbo].[DmHangHoaCF] ([HH_ID], [MaHH], [TenHH], [GiaMua], [GiaBan1], [GiaBan2], [GiaBan3], [LoaiHH_ID], [DVT_ID], [TenCongTy_ID], [Status]) VALUES (4, N'PS1', N'Pesci', 20000.0000, 30000.0000, 40000.0000, 50000.0000, 1, 7, 1, 2)
INSERT [dbo].[DmHangHoaCF] ([HH_ID], [MaHH], [TenHH], [GiaMua], [GiaBan1], [GiaBan2], [GiaBan3], [LoaiHH_ID], [DVT_ID], [TenCongTy_ID], [Status]) VALUES (7, N'gggg', N'ggg', 10000.0000, 10000.0000, 12000.0000, 12000.0000, 1, 5, 1, 0)
INSERT [dbo].[DmHangHoaCF] ([HH_ID], [MaHH], [TenHH], [GiaMua], [GiaBan1], [GiaBan2], [GiaBan3], [LoaiHH_ID], [DVT_ID], [TenCongTy_ID], [Status]) VALUES (8, N'nn', N'nn', 0.0000, 0.0000, 0.0000, 0.0000, 5, 9, 3, 0)
INSERT [dbo].[DmHangHoaCF] ([HH_ID], [MaHH], [TenHH], [GiaMua], [GiaBan1], [GiaBan2], [GiaBan3], [LoaiHH_ID], [DVT_ID], [TenCongTy_ID], [Status]) VALUES (9, N'NL01', N'Nguyên liệu 01', 0.0000, 0.0000, 0.0000, 0.0000, 6, 9, 3, 0)
INSERT [dbo].[DmHangHoaCF] ([HH_ID], [MaHH], [TenHH], [GiaMua], [GiaBan1], [GiaBan2], [GiaBan3], [LoaiHH_ID], [DVT_ID], [TenCongTy_ID], [Status]) VALUES (10, N'PS', N'Peci', 12000.0000, 12000.0000, 12000.0000, 12000.0000, 9, 12, 4, 0)
INSERT [dbo].[DmHangHoaCF] ([HH_ID], [MaHH], [TenHH], [GiaMua], [GiaBan1], [GiaBan2], [GiaBan3], [LoaiHH_ID], [DVT_ID], [TenCongTy_ID], [Status]) VALUES (13, N'giaodhvhj', N'dfsd', 0.0000, 0.0000, 0.0000, 0.0000, 2, 7, 1, 0)
INSERT [dbo].[DmHangHoaCF] ([HH_ID], [MaHH], [TenHH], [GiaMua], [GiaBan1], [GiaBan2], [GiaBan3], [LoaiHH_ID], [DVT_ID], [TenCongTy_ID], [Status]) VALUES (14, N'CFB', N'Cà phê bột', 1000000.0000, 0.0000, 0.0000, 0.0000, 23, 15, 1, 0)
INSERT [dbo].[DmHangHoaCF] ([HH_ID], [MaHH], [TenHH], [GiaMua], [GiaBan1], [GiaBan2], [GiaBan3], [LoaiHH_ID], [DVT_ID], [TenCongTy_ID], [Status]) VALUES (15, N'CT', N'Cam trái', 0.0000, 0.0000, 0.0000, 0.0000, 23, 15, 1, 0)
INSERT [dbo].[DmHangHoaCF] ([HH_ID], [MaHH], [TenHH], [GiaMua], [GiaBan1], [GiaBan2], [GiaBan3], [LoaiHH_ID], [DVT_ID], [TenCongTy_ID], [Status]) VALUES (16, N'PS', N'Pesci', 12000.0000, 13000.0000, 14000.0000, 15000.0000, 25, 16, 13, 0)
SET IDENTITY_INSERT [dbo].[DmHangHoaCF] OFF
/****** Object:  Table [dbo].[DmDVTCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DmDVTCF](
	[DVT_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TenDVT] [nvarchar](50) NULL,
	[TenCongTy_ID] [bigint] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_DmDVTCF] PRIMARY KEY CLUSTERED 
(
	[DVT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DmDVTCF] ON
INSERT [dbo].[DmDVTCF] ([DVT_ID], [TenDVT], [TenCongTy_ID], [Status]) VALUES (5, N'Ly', 1, 0)
INSERT [dbo].[DmDVTCF] ([DVT_ID], [TenDVT], [TenCongTy_ID], [Status]) VALUES (6, N'Hủ', 1, 0)
INSERT [dbo].[DmDVTCF] ([DVT_ID], [TenDVT], [TenCongTy_ID], [Status]) VALUES (7, N'Chai', 1, 0)
INSERT [dbo].[DmDVTCF] ([DVT_ID], [TenDVT], [TenCongTy_ID], [Status]) VALUES (8, N'Gói', 1, 0)
INSERT [dbo].[DmDVTCF] ([DVT_ID], [TenDVT], [TenCongTy_ID], [Status]) VALUES (9, N'Cái', 3, 0)
INSERT [dbo].[DmDVTCF] ([DVT_ID], [TenDVT], [TenCongTy_ID], [Status]) VALUES (10, N'Ly', 3, 0)
INSERT [dbo].[DmDVTCF] ([DVT_ID], [TenDVT], [TenCongTy_ID], [Status]) VALUES (11, N'Ly', 4, 0)
INSERT [dbo].[DmDVTCF] ([DVT_ID], [TenDVT], [TenCongTy_ID], [Status]) VALUES (12, N'Chai', 4, 0)
INSERT [dbo].[DmDVTCF] ([DVT_ID], [TenDVT], [TenCongTy_ID], [Status]) VALUES (13, N'zxcxz', 1, 0)
INSERT [dbo].[DmDVTCF] ([DVT_ID], [TenDVT], [TenCongTy_ID], [Status]) VALUES (14, N'gio', 1, 0)
INSERT [dbo].[DmDVTCF] ([DVT_ID], [TenDVT], [TenCongTy_ID], [Status]) VALUES (15, N'Kg', 1, 0)
INSERT [dbo].[DmDVTCF] ([DVT_ID], [TenDVT], [TenCongTy_ID], [Status]) VALUES (16, N'Chai', 13, 0)
INSERT [dbo].[DmDVTCF] ([DVT_ID], [TenDVT], [TenCongTy_ID], [Status]) VALUES (17, N'Ly', 13, 0)
SET IDENTITY_INSERT [dbo].[DmDVTCF] OFF
/****** Object:  Table [dbo].[DmDonViCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DmDonViCF](
	[DonVi_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TenDonVi] [nvarchar](100) NULL,
	[TenPhanMem] [nvarchar](200) NULL,
	[MS] [nvarchar](max) NULL,
 CONSTRAINT [PK_DmDonViCF] PRIMARY KEY CLUSTERED 
(
	[DonVi_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DmDonViCF] ON
INSERT [dbo].[DmDonViCF] ([DonVi_ID], [TenDonVi], [TenPhanMem], [MS]) VALUES (1, N'6orX6jhfv9r48SPycSf0Ug==', N'Phần mềm Quản lý Cafe-Bar', N'y21fiRN4KumQCy1MYT+63Q==')
SET IDENTITY_INSERT [dbo].[DmDonViCF] OFF
/****** Object:  Table [dbo].[DmDoiTuongCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DmDoiTuongCF](
	[DT_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MaDT] [nchar](10) NULL,
	[TenDT] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[LoaiDT_ID] [bigint] NULL,
	[Phone] [nvarchar](50) NULL,
	[SoTK] [nvarchar](50) NULL,
	[MaST] [nvarchar](50) NULL,
	[Email] [nvarchar](max) NULL,
	[NgGiaoDich] [nvarchar](max) NULL,
	[TenCongTy_ID] [bigint] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_DmDoiTuongCF] PRIMARY KEY CLUSTERED 
(
	[DT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DmDoiTuongCF] ON
INSERT [dbo].[DmDoiTuongCF] ([DT_ID], [MaDT], [TenDT], [DiaChi], [LoaiDT_ID], [Phone], [SoTK], [MaST], [Email], [NgGiaoDich], [TenCongTy_ID], [Status]) VALUES (1, N'giao      ', N'giao', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[DmDoiTuongCF] ([DT_ID], [MaDT], [TenDT], [DiaChi], [LoaiDT_ID], [Phone], [SoTK], [MaST], [Email], [NgGiaoDich], [TenCongTy_ID], [Status]) VALUES (3, N'NVA       ', N'Nguyễn Văn A', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[DmDoiTuongCF] ([DT_ID], [MaDT], [TenDT], [DiaChi], [LoaiDT_ID], [Phone], [SoTK], [MaST], [Email], [NgGiaoDich], [TenCongTy_ID], [Status]) VALUES (5, N'Lieu      ', N'Lieu444cccc', N'cxvcx', 1, N'cxvxcv', N'', N'', N'', N'', 1, 0)
INSERT [dbo].[DmDoiTuongCF] ([DT_ID], [MaDT], [TenDT], [DiaChi], [LoaiDT_ID], [Phone], [SoTK], [MaST], [Email], [NgGiaoDich], [TenCongTy_ID], [Status]) VALUES (6, N'KL        ', N'Khách mua lẻ', N'', 1, N'', N'', N'', N'', N'', 1, 0)
INSERT [dbo].[DmDoiTuongCF] ([DT_ID], [MaDT], [TenDT], [DiaChi], [LoaiDT_ID], [Phone], [SoTK], [MaST], [Email], [NgGiaoDich], [TenCongTy_ID], [Status]) VALUES (8, N'KL        ', N'Khách hàng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 0)
INSERT [dbo].[DmDoiTuongCF] ([DT_ID], [MaDT], [TenDT], [DiaChi], [LoaiDT_ID], [Phone], [SoTK], [MaST], [Email], [NgGiaoDich], [TenCongTy_ID], [Status]) VALUES (11, N'NCC       ', N'xcvxc', N'vxcv', 2, N'', N'', N'', N'', N'', 1, 0)
INSERT [dbo].[DmDoiTuongCF] ([DT_ID], [MaDT], [TenDT], [DiaChi], [LoaiDT_ID], [Phone], [SoTK], [MaST], [Email], [NgGiaoDich], [TenCongTy_ID], [Status]) VALUES (12, N'b         ', N'v', N'v', 1, N'vc', N'cvc', N'cv', N'b', N'vc', 1, 0)
INSERT [dbo].[DmDoiTuongCF] ([DT_ID], [MaDT], [TenDT], [DiaChi], [LoaiDT_ID], [Phone], [SoTK], [MaST], [Email], [NgGiaoDich], [TenCongTy_ID], [Status]) VALUES (13, N'KL        ', N'KML', N'', 10, N'', N'', N'', N'', N'', 13, 0)
SET IDENTITY_INSERT [dbo].[DmDoiTuongCF] OFF
/****** Object:  Table [dbo].[DmDinhNghiaMHCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DmDinhNghiaMHCF](
	[DnMH_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MaDnMH] [nvarchar](12) NULL,
	[TenDnMH] [nvarchar](150) NULL,
	[LoaiHH_ID] [bigint] NULL,
	[DVT_ID] [bigint] NULL,
	[GiaBan1] [money] NULL,
	[GiaBan2] [money] NULL,
	[GiaBan3] [money] NULL,
	[TenCongTy_ID] [bigint] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_DmDinhNghiaMHCF] PRIMARY KEY CLUSTERED 
(
	[DnMH_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DmDinhNghiaMHCF] ON
INSERT [dbo].[DmDinhNghiaMHCF] ([DnMH_ID], [MaDnMH], [TenDnMH], [LoaiHH_ID], [DVT_ID], [GiaBan1], [GiaBan2], [GiaBan3], [TenCongTy_ID], [Status]) VALUES (1, N'CF', N'Cafe Đen', 1, 5, 12000.0000, 14000.0000, 20000.0000, 1, 2)
INSERT [dbo].[DmDinhNghiaMHCF] ([DnMH_ID], [MaDnMH], [TenDnMH], [LoaiHH_ID], [DVT_ID], [GiaBan1], [GiaBan2], [GiaBan3], [TenCongTy_ID], [Status]) VALUES (2, N'LH', N'La Hán Quả', 2, 5, 20000.0000, 20000.0000, 20000.0000, 1, 0)
INSERT [dbo].[DmDinhNghiaMHCF] ([DnMH_ID], [MaDnMH], [TenDnMH], [LoaiHH_ID], [DVT_ID], [GiaBan1], [GiaBan2], [GiaBan3], [TenCongTy_ID], [Status]) VALUES (4, N'KL', N'Kem Lan', 2, 5, 10000.0000, 10000.0000, 10000.0000, 1, 0)
INSERT [dbo].[DmDinhNghiaMHCF] ([DnMH_ID], [MaDnMH], [TenDnMH], [LoaiHH_ID], [DVT_ID], [GiaBan1], [GiaBan2], [GiaBan3], [TenCongTy_ID], [Status]) VALUES (7, N'TD', N'Trà Đào', 1, 5, 15000.0000, 15000.0000, 15000.0000, 1, 0)
INSERT [dbo].[DmDinhNghiaMHCF] ([DnMH_ID], [MaDnMH], [TenDnMH], [LoaiHH_ID], [DVT_ID], [GiaBan1], [GiaBan2], [GiaBan3], [TenCongTy_ID], [Status]) VALUES (8, N'cxvxc', N'cvxcvxcvxc', 2, 5, 0.0000, 0.0000, 0.0000, 1, 2)
INSERT [dbo].[DmDinhNghiaMHCF] ([DnMH_ID], [MaDnMH], [TenDnMH], [LoaiHH_ID], [DVT_ID], [GiaBan1], [GiaBan2], [GiaBan3], [TenCongTy_ID], [Status]) VALUES (9, N'K', N'Khăn mặt', 2, 5, 3000.0000, 3000.0000, 4000.0000, 1, 0)
INSERT [dbo].[DmDinhNghiaMHCF] ([DnMH_ID], [MaDnMH], [TenDnMH], [LoaiHH_ID], [DVT_ID], [GiaBan1], [GiaBan2], [GiaBan3], [TenCongTy_ID], [Status]) VALUES (11, N'CD', N'Chanh dây', 5, 9, 0.0000, 0.0000, 0.0000, 3, 0)
INSERT [dbo].[DmDinhNghiaMHCF] ([DnMH_ID], [MaDnMH], [TenDnMH], [LoaiHH_ID], [DVT_ID], [GiaBan1], [GiaBan2], [GiaBan3], [TenCongTy_ID], [Status]) VALUES (13, N'thu', N'thu món pha chế', 5, 9, 0.0000, 0.0000, 0.0000, 3, 0)
INSERT [dbo].[DmDinhNghiaMHCF] ([DnMH_ID], [MaDnMH], [TenDnMH], [LoaiHH_ID], [DVT_ID], [GiaBan1], [GiaBan2], [GiaBan3], [TenCongTy_ID], [Status]) VALUES (14, N'CFD', N'Cà phê Đen', 9, 11, 20000.0000, 21000.0000, 22000.0000, 4, 0)
INSERT [dbo].[DmDinhNghiaMHCF] ([DnMH_ID], [MaDnMH], [TenDnMH], [LoaiHH_ID], [DVT_ID], [GiaBan1], [GiaBan2], [GiaBan3], [TenCongTy_ID], [Status]) VALUES (20, N'giao', N'xcvxc', 13, 7, 45435.0000, 4534.0000, 43534.0000, 1, 0)
INSERT [dbo].[DmDinhNghiaMHCF] ([DnMH_ID], [MaDnMH], [TenDnMH], [LoaiHH_ID], [DVT_ID], [GiaBan1], [GiaBan2], [GiaBan3], [TenCongTy_ID], [Status]) VALUES (21, N'CFD', N'Cà phê Đen', 25, 17, 12000.0000, 13000.0000, 14000.0000, 13, 0)
SET IDENTITY_INSERT [dbo].[DmDinhNghiaMHCF] OFF
/****** Object:  Table [dbo].[DmCongTyCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DmCongTyCF](
	[CongTy_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TenCongTy] [nvarchar](200) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[DienThoai] [nvarchar](100) NULL,
	[SoTaiKhoan] [nvarchar](50) NULL,
	[EmailCongTy] [nvarchar](50) NULL,
	[GhiChuPhieu] [nvarchar](100) NULL,
	[MS01] [nvarchar](150) NULL,
	[MS02] [nvarchar](150) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_DmCongTyCF] PRIMARY KEY CLUSTERED 
(
	[CongTy_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DmCongTyCF] ON
INSERT [dbo].[DmCongTyCF] ([CongTy_ID], [TenCongTy], [DiaChi], [DienThoai], [SoTaiKhoan], [EmailCongTy], [GhiChuPhieu], [MS01], [MS02], [Status]) VALUES (1, N'Thiên Phong', N'335A Lý Thường Kiệt', N'0913423525', N'0231000155060', N'thienphngsoft@gmail.com', N'Phần mềm QL Cafe-Bar', N'RDqetwFO66niQtoW7/BX/Q==', N'9mRtybqVJ5pUoNs7UGzkbA==', 0)
INSERT [dbo].[DmCongTyCF] ([CongTy_ID], [TenCongTy], [DiaChi], [DienThoai], [SoTaiKhoan], [EmailCongTy], [GhiChuPhieu], [MS01], [MS02], [Status]) VALUES (4, N'Nguyễn Phương Đạt', N'21212', N'121', N'', N'', N'', N'WGVP68V1ORbiQtoW7/BX/Q==', N'/SKzAL71VSm5MkqQzmDCIQ==', 0)
INSERT [dbo].[DmCongTyCF] ([CongTy_ID], [TenCongTy], [DiaChi], [DienThoai], [SoTaiKhoan], [EmailCongTy], [GhiChuPhieu], [MS01], [MS02], [Status]) VALUES (13, N'Nguyễn Ben', N'Nguyễn Ben', N'Nguyễn Ben', NULL, NULL, N'Nguyễn Ben', N'P1jr8fG1ki7L/LzjykwjBg==', N'N0pB+H94Yd+5MkqQzmDCIQ==', 0)
SET IDENTITY_INSERT [dbo].[DmCongTyCF] OFF
/****** Object:  Table [dbo].[DmBanCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DmBanCF](
	[Ban_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TenBan] [nvarchar](50) NULL,
	[GiaBan] [bigint] NULL,
	[CoKhach] [int] NULL,
	[TenCongTy_ID] [bigint] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_DmBanCF] PRIMARY KEY CLUSTERED 
(
	[Ban_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DmBanCF] ON
INSERT [dbo].[DmBanCF] ([Ban_ID], [TenBan], [GiaBan], [CoKhach], [TenCongTy_ID], [Status]) VALUES (1, N'Bàn01', 1, 0, 1, 0)
INSERT [dbo].[DmBanCF] ([Ban_ID], [TenBan], [GiaBan], [CoKhach], [TenCongTy_ID], [Status]) VALUES (5, N'Bàn02', 1, 0, 1, 0)
INSERT [dbo].[DmBanCF] ([Ban_ID], [TenBan], [GiaBan], [CoKhach], [TenCongTy_ID], [Status]) VALUES (6, N'Bàn03', 1, 0, 1, 0)
INSERT [dbo].[DmBanCF] ([Ban_ID], [TenBan], [GiaBan], [CoKhach], [TenCongTy_ID], [Status]) VALUES (7, N'Bàn04', 1, 0, 1, 0)
INSERT [dbo].[DmBanCF] ([Ban_ID], [TenBan], [GiaBan], [CoKhach], [TenCongTy_ID], [Status]) VALUES (8, N'Bàn02', 1, 0, 3, 0)
INSERT [dbo].[DmBanCF] ([Ban_ID], [TenBan], [GiaBan], [CoKhach], [TenCongTy_ID], [Status]) VALUES (9, N'Bàn01', 1, 0, 3, 0)
INSERT [dbo].[DmBanCF] ([Ban_ID], [TenBan], [GiaBan], [CoKhach], [TenCongTy_ID], [Status]) VALUES (11, N'Bàn05', 1, 1, 1, 0)
INSERT [dbo].[DmBanCF] ([Ban_ID], [TenBan], [GiaBan], [CoKhach], [TenCongTy_ID], [Status]) VALUES (12, N'Mang về', 1, 0, 1, 0)
INSERT [dbo].[DmBanCF] ([Ban_ID], [TenBan], [GiaBan], [CoKhach], [TenCongTy_ID], [Status]) VALUES (13, N'Bàn06', 1, 0, 1, 0)
INSERT [dbo].[DmBanCF] ([Ban_ID], [TenBan], [GiaBan], [CoKhach], [TenCongTy_ID], [Status]) VALUES (14, N'Bàn 01', 1, 0, 4, 0)
INSERT [dbo].[DmBanCF] ([Ban_ID], [TenBan], [GiaBan], [CoKhach], [TenCongTy_ID], [Status]) VALUES (15, N'Bàn 02', 1, 0, 4, 0)
INSERT [dbo].[DmBanCF] ([Ban_ID], [TenBan], [GiaBan], [CoKhach], [TenCongTy_ID], [Status]) VALUES (16, N'Bàn07', 1, 0, 1, 0)
INSERT [dbo].[DmBanCF] ([Ban_ID], [TenBan], [GiaBan], [CoKhach], [TenCongTy_ID], [Status]) VALUES (17, N'Bàn08', 1, 0, 1, 0)
INSERT [dbo].[DmBanCF] ([Ban_ID], [TenBan], [GiaBan], [CoKhach], [TenCongTy_ID], [Status]) VALUES (18, N'Bàn09', 1, 0, 1, 0)
INSERT [dbo].[DmBanCF] ([Ban_ID], [TenBan], [GiaBan], [CoKhach], [TenCongTy_ID], [Status]) VALUES (19, N'Bàn10', 1, 0, 1, 0)
INSERT [dbo].[DmBanCF] ([Ban_ID], [TenBan], [GiaBan], [CoKhach], [TenCongTy_ID], [Status]) VALUES (20, N'Bàn11', 1, 0, 1, 0)
INSERT [dbo].[DmBanCF] ([Ban_ID], [TenBan], [GiaBan], [CoKhach], [TenCongTy_ID], [Status]) VALUES (21, N'Bàn12', 1, 0, 1, 0)
INSERT [dbo].[DmBanCF] ([Ban_ID], [TenBan], [GiaBan], [CoKhach], [TenCongTy_ID], [Status]) VALUES (22, N'Bàn13', 1, 0, 1, 0)
INSERT [dbo].[DmBanCF] ([Ban_ID], [TenBan], [GiaBan], [CoKhach], [TenCongTy_ID], [Status]) VALUES (23, N'Bàn14', 1, 0, 1, 0)
INSERT [dbo].[DmBanCF] ([Ban_ID], [TenBan], [GiaBan], [CoKhach], [TenCongTy_ID], [Status]) VALUES (24, N'Bàn15', 1, 0, 1, 0)
INSERT [dbo].[DmBanCF] ([Ban_ID], [TenBan], [GiaBan], [CoKhach], [TenCongTy_ID], [Status]) VALUES (25, N'Bàn16', 1, 0, 1, 0)
INSERT [dbo].[DmBanCF] ([Ban_ID], [TenBan], [GiaBan], [CoKhach], [TenCongTy_ID], [Status]) VALUES (26, N'Bàn17', 1, 0, 1, 0)
INSERT [dbo].[DmBanCF] ([Ban_ID], [TenBan], [GiaBan], [CoKhach], [TenCongTy_ID], [Status]) VALUES (27, N'Bàn18', 1, 0, 1, 0)
INSERT [dbo].[DmBanCF] ([Ban_ID], [TenBan], [GiaBan], [CoKhach], [TenCongTy_ID], [Status]) VALUES (28, N'Bàn19', 1, 0, 1, 0)
INSERT [dbo].[DmBanCF] ([Ban_ID], [TenBan], [GiaBan], [CoKhach], [TenCongTy_ID], [Status]) VALUES (29, N'Bàn20', 1, 0, 1, 0)
INSERT [dbo].[DmBanCF] ([Ban_ID], [TenBan], [GiaBan], [CoKhach], [TenCongTy_ID], [Status]) VALUES (37, N'Bàn 01', 1, 1, 13, 0)
SET IDENTITY_INSERT [dbo].[DmBanCF] OFF
/****** Object:  Table [dbo].[CT_XuatHangCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_XuatHangCF](
	[CTXuatHang_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[HH_ID] [bigint] NULL,
	[DnMH_ID] [bigint] NULL,
	[PhNhapXuat_ID] [bigint] NULL,
	[DVT_ID] [bigint] NULL,
	[SoLuong] [money] NULL,
	[DonGiaBan] [money] NULL,
	[ThanhTienBan] [money] NULL,
	[DonGiaVon] [money] NULL,
	[ThanhTienVon] [money] NULL,
	[TyleChietKhau] [money] NULL,
	[TienChietKhau] [money] NULL,
	[TenCongTy_ID] [bigint] NULL,
	[LoaiNhapxuat_ID] [bigint] NULL,
	[Ghichu] [nvarchar](50) NULL,
 CONSTRAINT [PK_CT_XuatHangCF] PRIMARY KEY CLUSTERED 
(
	[CTXuatHang_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CT_XuatHangCF] ON
INSERT [dbo].[CT_XuatHangCF] ([CTXuatHang_ID], [HH_ID], [DnMH_ID], [PhNhapXuat_ID], [DVT_ID], [SoLuong], [DonGiaBan], [ThanhTienBan], [DonGiaVon], [ThanhTienVon], [TyleChietKhau], [TienChietKhau], [TenCongTy_ID], [LoaiNhapxuat_ID], [Ghichu]) VALUES (756, 16, 0, 205, 16, 1.0000, 13000.0000, 13000.0000, 12000.0000, 12000.0000, 0.0000, 0.0000, 13, 2, NULL)
INSERT [dbo].[CT_XuatHangCF] ([CTXuatHang_ID], [HH_ID], [DnMH_ID], [PhNhapXuat_ID], [DVT_ID], [SoLuong], [DonGiaBan], [ThanhTienBan], [DonGiaVon], [ThanhTienVon], [TyleChietKhau], [TienChietKhau], [TenCongTy_ID], [LoaiNhapxuat_ID], [Ghichu]) VALUES (757, 0, 21, 205, 17, 1.0000, 12000.0000, 12000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13, 2, NULL)
INSERT [dbo].[CT_XuatHangCF] ([CTXuatHang_ID], [HH_ID], [DnMH_ID], [PhNhapXuat_ID], [DVT_ID], [SoLuong], [DonGiaBan], [ThanhTienBan], [DonGiaVon], [ThanhTienVon], [TyleChietKhau], [TienChietKhau], [TenCongTy_ID], [LoaiNhapxuat_ID], [Ghichu]) VALUES (774, 1, 0, 201, 7, 2.0000, 50000.0000, 100000.0000, 20000.0000, 40000.0000, NULL, NULL, 1, 2, NULL)
INSERT [dbo].[CT_XuatHangCF] ([CTXuatHang_ID], [HH_ID], [DnMH_ID], [PhNhapXuat_ID], [DVT_ID], [SoLuong], [DonGiaBan], [ThanhTienBan], [DonGiaVon], [ThanhTienVon], [TyleChietKhau], [TienChietKhau], [TenCongTy_ID], [LoaiNhapxuat_ID], [Ghichu]) VALUES (775, 3, 0, 201, 5, 2.0000, 12000.0000, 24000.0000, 8000.0000, 16000.0000, NULL, NULL, 1, 2, NULL)
INSERT [dbo].[CT_XuatHangCF] ([CTXuatHang_ID], [HH_ID], [DnMH_ID], [PhNhapXuat_ID], [DVT_ID], [SoLuong], [DonGiaBan], [ThanhTienBan], [DonGiaVon], [ThanhTienVon], [TyleChietKhau], [TienChietKhau], [TenCongTy_ID], [LoaiNhapxuat_ID], [Ghichu]) VALUES (776, 7, 0, 201, 5, 3.0000, 12000.0000, 36000.0000, 10000.0000, 30000.0000, NULL, NULL, 1, 2, NULL)
INSERT [dbo].[CT_XuatHangCF] ([CTXuatHang_ID], [HH_ID], [DnMH_ID], [PhNhapXuat_ID], [DVT_ID], [SoLuong], [DonGiaBan], [ThanhTienBan], [DonGiaVon], [ThanhTienVon], [TyleChietKhau], [TienChietKhau], [TenCongTy_ID], [LoaiNhapxuat_ID], [Ghichu]) VALUES (777, 4, 0, 201, 7, 1.0000, 50000.0000, 50000.0000, 20000.0000, 20000.0000, NULL, NULL, 1, 2, NULL)
INSERT [dbo].[CT_XuatHangCF] ([CTXuatHang_ID], [HH_ID], [DnMH_ID], [PhNhapXuat_ID], [DVT_ID], [SoLuong], [DonGiaBan], [ThanhTienBan], [DonGiaVon], [ThanhTienVon], [TyleChietKhau], [TienChietKhau], [TenCongTy_ID], [LoaiNhapxuat_ID], [Ghichu]) VALUES (778, 14, 0, 201, 15, 1.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 1, 2, NULL)
INSERT [dbo].[CT_XuatHangCF] ([CTXuatHang_ID], [HH_ID], [DnMH_ID], [PhNhapXuat_ID], [DVT_ID], [SoLuong], [DonGiaBan], [ThanhTienBan], [DonGiaVon], [ThanhTienVon], [TyleChietKhau], [TienChietKhau], [TenCongTy_ID], [LoaiNhapxuat_ID], [Ghichu]) VALUES (781, 1, 0, 211, 7, 1.0000, 40000.0000, 40000.0000, 20000.0000, 20000.0000, NULL, NULL, 1, 2, NULL)
INSERT [dbo].[CT_XuatHangCF] ([CTXuatHang_ID], [HH_ID], [DnMH_ID], [PhNhapXuat_ID], [DVT_ID], [SoLuong], [DonGiaBan], [ThanhTienBan], [DonGiaVon], [ThanhTienVon], [TyleChietKhau], [TienChietKhau], [TenCongTy_ID], [LoaiNhapxuat_ID], [Ghichu]) VALUES (782, 0, 2, 212, 5, 1.0000, 20000.0000, 20000.0000, 0.0000, 0.0000, NULL, NULL, 1, 2, NULL)
INSERT [dbo].[CT_XuatHangCF] ([CTXuatHang_ID], [HH_ID], [DnMH_ID], [PhNhapXuat_ID], [DVT_ID], [SoLuong], [DonGiaBan], [ThanhTienBan], [DonGiaVon], [ThanhTienVon], [TyleChietKhau], [TienChietKhau], [TenCongTy_ID], [LoaiNhapxuat_ID], [Ghichu]) VALUES (783, 0, 9, 212, 5, 1.0000, 3000.0000, 3000.0000, 0.0000, 0.0000, NULL, NULL, 1, 2, NULL)
SET IDENTITY_INSERT [dbo].[CT_XuatHangCF] OFF
/****** Object:  Table [dbo].[CT_NhapHangCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_NhapHangCF](
	[CTNhapHang_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[HH_ID] [bigint] NULL,
	[PhNhapXuat_ID] [bigint] NULL,
	[DVT_ID] [bigint] NULL,
	[SoLuong] [money] NULL,
	[DonGiaVon] [money] NULL,
	[ThanhTienVon] [money] NULL,
	[DonGiaTraLai] [money] NULL,
	[ThanhTienTraLai] [money] NULL,
	[Kho_ID] [bigint] NULL,
	[LoaiNhapXuat_ID] [bigint] NULL,
	[TienChietKhau] [money] NULL,
	[TyLeChietKhau] [money] NULL,
	[DonGiaBan] [money] NULL,
 CONSTRAINT [PK_CT_NhapHangCF] PRIMARY KEY CLUSTERED 
(
	[CTNhapHang_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_InBepWebCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_InBepWebCF](
	[CT_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ID] [bigint] NULL,
	[SoPhieu] [bigint] NULL,
	[HH_ID] [bigint] NULL,
	[DnMH_ID] [bigint] NULL,
	[DVT_ID] [bigint] NULL,
	[SLMon] [money] NULL,
 CONSTRAINT [PK_CT_InBepWebCF] PRIMARY KEY CLUSTERED 
(
	[CT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_ChietTinhDnMHCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_ChietTinhDnMHCF](
	[DnMH_ID] [bigint] NULL,
	[PhChietTinh_ID] [bigint] NULL,
	[HH_ID] [bigint] NULL,
	[SoLuong] [money] NULL,
	[Kho_ID] [bigint] NULL,
	[NgayPhieu] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDinhNghiaMHCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDinhNghiaMHCF](
	[ChiTietDnMH_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DnMH_ID] [bigint] NULL,
	[HH_ID] [bigint] NULL,
	[DVT_ID] [bigint] NULL,
	[SoLuong] [money] NULL,
 CONSTRAINT [PK_ChiTietDinhNghiaMHCF] PRIMARY KEY CLUSTERED 
(
	[ChiTietDnMH_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietDinhNghiaMHCF] ON
INSERT [dbo].[ChiTietDinhNghiaMHCF] ([ChiTietDnMH_ID], [DnMH_ID], [HH_ID], [DVT_ID], [SoLuong]) VALUES (10, 1, 3, 5, 0.1200)
INSERT [dbo].[ChiTietDinhNghiaMHCF] ([ChiTietDnMH_ID], [DnMH_ID], [HH_ID], [DVT_ID], [SoLuong]) VALUES (12, 4, 3, 5, 0.0000)
INSERT [dbo].[ChiTietDinhNghiaMHCF] ([ChiTietDnMH_ID], [DnMH_ID], [HH_ID], [DVT_ID], [SoLuong]) VALUES (13, 13, 9, 9, 1.0000)
INSERT [dbo].[ChiTietDinhNghiaMHCF] ([ChiTietDnMH_ID], [DnMH_ID], [HH_ID], [DVT_ID], [SoLuong]) VALUES (21, 20, 14, 15, 0.3000)
INSERT [dbo].[ChiTietDinhNghiaMHCF] ([ChiTietDnMH_ID], [DnMH_ID], [HH_ID], [DVT_ID], [SoLuong]) VALUES (22, 20, 15, 15, 0.5000)
SET IDENTITY_INSERT [dbo].[ChiTietDinhNghiaMHCF] OFF
/****** Object:  Table [dbo].[ChietTinhPhieuXuat_IDCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChietTinhPhieuXuat_IDCF](
	[PhXuat_ID] [bigint] NOT NULL,
	[PhChietTinh_ID] [bigint] NULL,
 CONSTRAINT [PK_ChietTinhPhieuXuat_IDCF] PRIMARY KEY CLUSTERED 
(
	[PhXuat_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccessRightCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessRightCF](
	[AccessID] [bigint] IDENTITY(1,1) NOT NULL,
	[TK_ID] [bigint] NULL,
	[TaiKhoan] [nvarchar](100) NULL,
	[QuyenID] [nvarchar](50) NULL,
	[TenQuyen] [nvarchar](150) NULL,
	[LoaiQuyen] [int] NULL,
	[Xem] [bit] NULL,
	[Tao] [bit] NULL,
	[Sua] [bit] NULL,
	[Xoa] [bit] NULL,
	[InPhieu] [bit] NULL,
 CONSTRAINT [PK_AccessRightCF] PRIMARY KEY CLUSTERED 
(
	[AccessID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AccessRightCF] ON
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (612, 1, N'Admin', N'FrmAccessRight', N'Phân quyền người dùng', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (613, 1, N'Admin', N'FrmNhatKyNguoiDung', N'Xem nhật ký người dùng', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (614, 1, N'Admin', N'FrmDmBan', N'Danh mục bàn', 2, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (615, 1, N'Admin', N'FrmDmDoiTuong', N'Danh mục đối tượng', 2, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (616, 1, N'Admin', N'FrmHangHoa', N'Danh mục hàng hóa', 2, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (617, 1, N'Admin', N'FrmDmThuChi', N'Danh mục thu chi', 2, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (618, 1, N'Admin', N'FrmPhieuInOrder', N'Phiếu in order', 3, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (619, 1, N'Admin', N'FrmPhieuThu', N'Phiếu thu tiền', 3, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (620, 1, N'Admin', N'FrmPhieuXuat', N'Phiếu xuất bán', 3, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (621, 1, N'Admin', N'FrmBaoCaoDoanhThu', N'Báo cáo doanh thu Admin', 4, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (622, 1, N'Admin', N'FrmBaoCaoDoanhThuNgay', N'Báo cáo doanh thu nhân viên', 4, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (700, 13, N'0947722273', N'FrmAccessRight', N'Phân quyền người dùng', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (701, 13, N'0947722273', N'FrmNhatKyNguoiDung', N'Xem nhật ký người dùng', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (702, 13, N'0947722273', N'FrmDmBan', N'Danh mục bàn', 2, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (703, 13, N'0947722273', N'FrmDmDoiTuong', N'Danh mục đối tượng', 2, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (704, 13, N'0947722273', N'FrmHangHoa', N'Danh mục hàng hóa', 2, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (705, 13, N'0947722273', N'FrmDmThuChi', N'Danh mục thu chi', 2, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (706, 13, N'0947722273', N'FrmPhieuInOrder', N'Phiếu in order', 3, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (707, 13, N'0947722273', N'FrmPhieuThu', N'Phiếu thu tiền', 3, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (708, 13, N'0947722273', N'FrmPhieuXuat', N'Phiếu xuất bán', 3, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (709, 13, N'0947722273', N'FrmBaoCaoDoanhThu', N'Báo cáo doanh thu Admin', 4, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (710, 13, N'0947722273', N'FrmBaoCaoDoanhThuNgay', N'Báo cáo doanh thu nhân viên', 4, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (1129, 27, N'Ben', N'FrmAccessRight', N'Phân quyền người dùng', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (1130, 27, N'Ben', N'FrmHangHoa', N'Danh mục hàng hóa', 2, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (1131, 27, N'Ben', N'FrmDmDoiTuong', N'Danh mục đối tượng', 2, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (1132, 27, N'Ben', N'FrmDmBan', N'Danh mục bàn', 2, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (1133, 27, N'Ben', N'FrmNhatKyNguoiDung', N'Xem nhật ký người dùng', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (1134, 27, N'Ben', N'FrmDmThuChi', N'Danh mục thu chi', 2, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (1135, 27, N'Ben', N'FrmPhieuXuat', N'Phiếu xuất bán', 3, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (1136, 27, N'Ben', N'FrmBaoCaoDoanhThu', N'Báo cáo doanh thu Admin', 4, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (1137, 27, N'Ben', N'FrmBaoCaoDoanhThuNgay', N'Báo cáo doanh thu nhân viên', 4, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (1138, 27, N'Ben', N'FrmPhieuThu', N'Phiếu thu tiền', 3, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (1139, 27, N'Ben', N'FrmPhieuInOrder', N'Phiếu in order', 3, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (1151, 12, N'Giao', N'FrmAccessRight', N'Phân quyền người dùng', 1, 0, 0, 0, 0, 0)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (1152, 12, N'Giao', N'FrmNhatKyNguoiDung', N'Xem nhật ký người dùng', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (1153, 12, N'Giao', N'FrmDmBan', N'Danh mục bàn', 2, 0, 0, 0, 0, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (1154, 12, N'Giao', N'FrmDmDoiTuong', N'Danh mục đối tượng', 2, 0, 0, 0, 0, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (1155, 12, N'Giao', N'FrmHangHoa', N'Danh mục hàng hóa', 2, 0, 0, 0, 0, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (1156, 12, N'Giao', N'FrmDmThuChi', N'Danh mục thu chi', 2, 1, 0, 0, 0, 0)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (1157, 12, N'Giao', N'FrmPhieuInOrder', N'Phiếu in order', 3, 1, 0, 0, 0, 0)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (1158, 12, N'Giao', N'FrmPhieuThu', N'Phiếu thu tiền', 3, 1, 0, 0, 0, 0)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (1159, 12, N'Giao', N'FrmPhieuXuat', N'Phiếu xuất bán', 3, 1, 1, 1, 1, 0)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (1160, 12, N'Giao', N'FrmBaoCaoDoanhThu', N'Báo cáo doanh thu Admin', 4, 0, 1, 1, 1, 1)
INSERT [dbo].[AccessRightCF] ([AccessID], [TK_ID], [TaiKhoan], [QuyenID], [TenQuyen], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (1161, 12, N'Giao', N'FrmBaoCaoDoanhThuNgay', N'Báo cáo doanh thu nhân viên', 4, 1, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[AccessRightCF] OFF
/****** Object:  Table [dbo].[ThamSoHeThongCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThamSoHeThongCF](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TonKho] [bit] NULL,
	[GiaVon] [bit] NULL,
	[PhieuChi] [bit] NULL,
	[PhieuThu] [bit] NULL,
	[NhatKyND] [bit] NULL,
	[MucAnToan] [bit] NULL,
	[KhoGiayIn] [int] NULL,
	[KhoGiayTim] [int] NULL,
	[KhoGiayTPS] [int] NULL,
	[BanIn] [int] NULL,
	[TenCongTy_ID] [bigint] NULL,
 CONSTRAINT [PK_ThamSoHeThongCF] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ThamSoHeThongCF] ON
INSERT [dbo].[ThamSoHeThongCF] ([ID], [TonKho], [GiaVon], [PhieuChi], [PhieuThu], [NhatKyND], [MucAnToan], [KhoGiayIn], [KhoGiayTim], [KhoGiayTPS], [BanIn], [TenCongTy_ID]) VALUES (1, 1, 1, 1, 0, 1, 0, 3, 6, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[ThamSoHeThongCF] OFF
/****** Object:  Table [dbo].[SD_TonKhoCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SD_TonKhoCF](
	[TonKho_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Kho_ID] [bigint] NULL,
	[HH_ID] [bigint] NULL,
	[Thang] [bigint] NULL,
	[Nam] [bigint] NULL,
	[SoLuong] [money] NULL,
	[GiaVon] [money] NULL,
	[GiaTri] [money] NULL,
	[Status] [char](2) NULL,
 CONSTRAINT [PK_SD_TonKhoCF] PRIMARY KEY CLUSTERED 
(
	[TonKho_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SD_TienMatCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SD_TienMatCF](
	[SDTienMat_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[NgayPhatSinh] [datetime] NULL,
	[SoTien] [money] NULL,
	[TenCongTy_ID] [bigint] NULL,
	[Status] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScreenCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScreenCF](
	[Phieu_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ScreenID] [nvarchar](30) NOT NULL,
	[DeScr] [nvarchar](50) NULL,
	[LoaiQuyen] [int] NULL,
	[Xem] [bit] NULL,
	[Tao] [bit] NULL,
	[Sua] [bit] NULL,
	[Xoa] [bit] NULL,
	[InPhieu] [bit] NULL,
 CONSTRAINT [PK_ScreenCF] PRIMARY KEY CLUSTERED 
(
	[Phieu_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ScreenCF] ON
INSERT [dbo].[ScreenCF] ([Phieu_ID], [ScreenID], [DeScr], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (1, N'FrmAccessRight', N'Phân quyền người dùng', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[ScreenCF] ([Phieu_ID], [ScreenID], [DeScr], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (4, N'FrmHangHoa', N'Danh mục hàng hóa', 2, 1, 1, 1, 1, 1)
INSERT [dbo].[ScreenCF] ([Phieu_ID], [ScreenID], [DeScr], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (5, N'FrmDmDoiTuong', N'Danh mục đối tượng', 2, 1, 1, 1, 1, 1)
INSERT [dbo].[ScreenCF] ([Phieu_ID], [ScreenID], [DeScr], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (6, N'FrmDmBan', N'Danh mục bàn', 2, 1, 1, 1, 1, 1)
INSERT [dbo].[ScreenCF] ([Phieu_ID], [ScreenID], [DeScr], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (9, N'FrmNhatKyNguoiDung', N'Xem nhật ký người dùng', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[ScreenCF] ([Phieu_ID], [ScreenID], [DeScr], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (10, N'FrmDmThuChi', N'Danh mục thu chi', 2, 1, 1, 1, 1, 1)
INSERT [dbo].[ScreenCF] ([Phieu_ID], [ScreenID], [DeScr], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (11, N'FrmPhieuXuat', N'Phiếu xuất bán', 3, 1, 1, 1, 1, 1)
INSERT [dbo].[ScreenCF] ([Phieu_ID], [ScreenID], [DeScr], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (12, N'FrmBaoCaoDoanhThu', N'Báo cáo doanh thu Admin', 4, 1, 1, 1, 1, 1)
INSERT [dbo].[ScreenCF] ([Phieu_ID], [ScreenID], [DeScr], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (13, N'FrmBaoCaoDoanhThuNgay', N'Báo cáo doanh thu nhân viên', 4, 1, 1, 1, 1, 1)
INSERT [dbo].[ScreenCF] ([Phieu_ID], [ScreenID], [DeScr], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (14, N'FrmPhieuThu', N'Phiếu thu tiền', 3, 1, 1, 1, 1, 1)
INSERT [dbo].[ScreenCF] ([Phieu_ID], [ScreenID], [DeScr], [LoaiQuyen], [Xem], [Tao], [Sua], [Xoa], [InPhieu]) VALUES (15, N'FrmPhieuInOrder', N'Phiếu in order', 3, 1, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[ScreenCF] OFF
/****** Object:  Table [dbo].[UserCF]    Script Date: 07/28/2024 10:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCF](
	[TK_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](100) NULL,
	[UserName] [nvarchar](100) NULL,
	[PassWord] [nvarchar](150) NULL,
	[FullName] [nvarchar](200) NULL,
	[TenCongTy_ID] [bigint] NULL,
	[ThamSo] [int] NULL,
 CONSTRAINT [PK_UserCF] PRIMARY KEY CLUSTERED 
(
	[TK_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserCF] ON
INSERT [dbo].[UserCF] ([TK_ID], [UserID], [UserName], [PassWord], [FullName], [TenCongTy_ID], [ThamSo]) VALUES (1, N'Admin', N'Quản trị hệ thống', N'FuJsoxOswMg=', N'Nguyễn Giao', 1, 1)
INSERT [dbo].[UserCF] ([TK_ID], [UserID], [UserName], [PassWord], [FullName], [TenCongTy_ID], [ThamSo]) VALUES (12, N'Giao', N'Giao', N'FuJsoxOswMg=', NULL, 1, 0)
INSERT [dbo].[UserCF] ([TK_ID], [UserID], [UserName], [PassWord], [FullName], [TenCongTy_ID], [ThamSo]) VALUES (13, N'0947722273', N'Nguyễn Phương Đạt', N'FuJsoxOswMg=', NULL, 4, 1)
INSERT [dbo].[UserCF] ([TK_ID], [UserID], [UserName], [PassWord], [FullName], [TenCongTy_ID], [ThamSo]) VALUES (27, N'Ben', N'Nguyễn Ben', N'FuJsoxOswMg=', N'Nguyễn Ben', 13, 1)
SET IDENTITY_INSERT [dbo].[UserCF] OFF
/****** Object:  StoredProcedure [dbo].[TongTienDoanhThuCF]    Script Date: 07/28/2024 10:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--C#
CREATE PROCEDURE [dbo].[TongTienDoanhThuCF] @NgayStar as DateTime, @NgayEnd as DateTime, @CongTy_ID as Bigint as 
			
		select isnull(SUM(TienHang),0) as TienHang,isnull(SUM(TienPPhucVu),0) as TienPhucVu,isnull(SUM(TienPhatSinh),0) as TienPhatSinh,isnull(SUM(TienThue),0) as TienThue,isnull(SUM(TienGiamGia),0) as TienGiamGia, isnull(SUM(TienHang - TienGiamGia),0) as DoanhThuTruGiam,isnull(SUM(TienHang + TienThue + TienPPhucVu + TienPhatSinh - TienGiamGia),0) as DoanhThuThuc
		From Ph_XuatCF 
		Where NgayPhieu >= @NgayStar And NgayPhieu <= @NgayEnd 
		And LoaiNhapXuat_ID <> 9 And ThanhToan = 1
		And TenCongTy_ID = @CongTy_ID
GO
/****** Object:  StoredProcedure [dbo].[TongHopXuatTheoNhanVienCF]    Script Date: 07/28/2024 10:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--C#
CREATE  PROCEDURE [dbo].[TongHopXuatTheoNhanVienCF] @NgayStart as DateTime, @NgayEnd as DateTime, @CongTy_ID as Bigint,@UserID as nvarchar(20) as 
			
		select s.MaHH, s.TenHH, t.TenDVT, sum(SoLuong) as SoLuong, Sum(ThanhTienVon)/ Sum(SoLuong) as DonGiaVon, sum(ThanhTienVon) as ThangTienVon, (Sum(ThanhTienBan) / sum(SoLuong)) as DonGiaBan, sum(ThanhTienBan) as ThanhTienBan, r.NguoiDung_ID
				From CT_XuatHangCF i inner join DmHangHoaCF s on i.HH_ID=s.HH_ID inner join DmDVTCF t on i.DVT_ID=t.DVT_ID inner join Ph_XuatCF r on i.PhNhapXuat_ID=r.PhNhapXuat_ID  
				Where r.NgayPhieu >= @NgayStart And r.NgayPhieu <= @NgayEnd 
				And i.LoaiNhapXuat_ID <> 9 and ThanhToan = 1
				And r.TenCongTy_ID = @CongTy_ID
				And r.NguoiDung_ID = @UserID
				Group by s.MaHH, s.TenHH, t.TenDVT,r.NguoiDung_ID
		union all select s.MaDnMH, s.TenDnMH, t.TenDVT, sum(SoLuong) as SoLuong, Sum(ThanhTienVon)/ Sum(SoLuong) as DonGiaVon, sum(ThanhTienVon) as ThangTienVon, (Sum(ThanhTienBan) / sum(SoLuong)) as DonGiaBan, sum(ThanhTienBan) as ThanhTienBan, r.NguoiDung_ID
				From CT_XuatHangCF i inner join DmDinhNghiaMHCF s on i.DnMH_ID=s.DnMH_ID inner join DmDVTCF t on i.DVT_ID=t.DVT_ID inner join Ph_XuatCF r on i.PhNhapXuat_ID=r.PhNhapXuat_ID  
				Where r.NgayPhieu >= @NgayStart And r.NgayPhieu <= @NgayEnd 
				And i.LoaiNhapXuat_ID <> 9 and ThanhToan = 1
				And r.TenCongTy_ID = @CongTy_ID
				And r.NguoiDung_ID = @UserID
		Group by s.MaDnMH, s.TenDnMH, t.TenDVT,r.NguoiDung_ID		
		order by s.Mahh, s.TenHH
GO
/****** Object:  StoredProcedure [dbo].[TongHopXuatCF]    Script Date: 07/28/2024 10:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--C#
CREATE  PROCEDURE [dbo].[TongHopXuatCF] @NgayStart as DateTime, @NgayEnd as DateTime, @CongTy_ID as Bigint as 
			
		select s.MaHH, s.TenHH, t.TenDVT, sum(SoLuong) as SoLuong, Sum(ThanhTienVon)/ Sum(SoLuong) as DonGiaVon, sum(ThanhTienVon) as ThangTienVon, (Sum(ThanhTienBan) / sum(SoLuong)) as DonGiaBan, sum(ThanhTienBan) as ThanhTienBan, r.NguoiDung_ID
				From CT_XuatHangCF i inner join DmHangHoaCF s on i.HH_ID=s.HH_ID inner join DmDVTCF t on i.DVT_ID=t.DVT_ID inner join Ph_XuatCF r on i.PhNhapXuat_ID=r.PhNhapXuat_ID  
				Where r.NgayPhieu >= @NgayStart And r.NgayPhieu <= @NgayEnd 
				And i.LoaiNhapXuat_ID <> 9 and ThanhToan = 1
				And r.TenCongTy_ID = @CongTy_ID
				Group by s.MaHH, s.TenHH, t.TenDVT,r.NguoiDung_ID
		union all select s.MaDnMH, s.TenDnMH, t.TenDVT, sum(SoLuong) as SoLuong, Sum(ThanhTienVon)/ Sum(SoLuong) as DonGiaVon, sum(ThanhTienVon) as ThangTienVon, (Sum(ThanhTienBan) / sum(SoLuong)) as DonGiaBan, sum(ThanhTienBan) as ThanhTienBan, r.NguoiDung_ID
				From CT_XuatHangCF i inner join DmDinhNghiaMHCF s on i.DnMH_ID=s.DnMH_ID inner join DmDVTCF t on i.DVT_ID=t.DVT_ID inner join Ph_XuatCF r on i.PhNhapXuat_ID=r.PhNhapXuat_ID  
				Where r.NgayPhieu >= @NgayStart And r.NgayPhieu <= @NgayEnd 
				And i.LoaiNhapXuat_ID <> 9 and ThanhToan = 1
				And r.TenCongTy_ID = @CongTy_ID
		Group by s.MaDnMH, s.TenDnMH, t.TenDVT,r.NguoiDung_ID		
		order by s.Mahh, s.TenHH
GO
/****** Object:  StoredProcedure [dbo].[TongHopTienXuatTheoNhanVienCF]    Script Date: 07/28/2024 10:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--C#
CREATE PROCEDURE [dbo].[TongHopTienXuatTheoNhanVienCF] @NgayStar as DateTime, @NgayEnd as DateTime, @CongTy_ID as Bigint,@UserID as nvarchar(20) as 
			
		select isnull(SUM(TienHang),0) as TienHang,isnull(SUM(TienPPhucVu),0) as TienPhucVu,isnull(SUM(TienPhatSinh),0) as TienPhatSinh,isnull(SUM(TienThue),0) as TienThue,isnull(SUM(TienGiamGia),0) as TienGiamGia, isnull(SUM(TienHang - TienGiamGia),0) as DoanhThuTruGiam,isnull(SUM(TienHang + TienThue + TienPPhucVu + TienPhatSinh - TienGiamGia),0) as DoanhThuThuc
		From Ph_XuatCF
		Where NgayPhieu >= @NgayStar And NgayPhieu <= @NgayEnd 
		And LoaiNhapXuat_ID <> 9 And ThanhToan = 1
		And TenCongTy_ID = @CongTy_ID
		And NguoiDung_ID = @UserID
GO
/****** Object:  StoredProcedure [dbo].[TongHopTienXuatCF]    Script Date: 07/28/2024 10:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--C#
CREATE PROCEDURE [dbo].[TongHopTienXuatCF] @NgayStar as DateTime, @NgayEnd as DateTime, @CongTy_ID as Bigint as 
			
		select isnull(SUM(TienHang),0) as TienHang,isnull(SUM(TienPPhucVu),0) as TienPhucVu,isnull(SUM(TienPhatSinh),0) as TienPhatSinh,isnull(SUM(TienThue),0) as TienThue,isnull(SUM(TienGiamGia),0) as TienGiamGia, isnull(SUM(TienHang - TienGiamGia),0) as DoanhThuTruGiam,isnull(SUM(TienHang + TienThue + TienPPhucVu + TienPhatSinh - TienGiamGia),0) as DoanhThuThuc
		From Ph_XuatCF
		Where NgayPhieu >= @NgayStar And NgayPhieu <= @NgayEnd 
		And LoaiNhapXuat_ID <> 9 And ThanhToan = 1
		And TenCongTy_ID = @CongTy_ID
GO
/****** Object:  StoredProcedure [dbo].[RpDanhMucHangHoaCF]    Script Date: 07/28/2024 10:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--C#
CREATE  PROCEDURE [dbo].[RpDanhMucHangHoaCF] as
	select l.TenLoaiHH,MaHH, TenHH, s.TenDVT, GiaMua,GiaBan1, Giaban2, GiaBan3   
	From DmHangHoaCF i inner join DmDVTCF s on i.DVT_ID=s.DVT_ID inner join DmLoaiHHCF l on i.LoaiHH_ID = l.LoaiHH_ID
GO
/****** Object:  StoredProcedure [dbo].[RpBaoCaoTongHopDoanhThuCF]    Script Date: 07/28/2024 10:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--C#
CREATE PROCEDURE [dbo].[RpBaoCaoTongHopDoanhThuCF] @NgayStart as DateTime, @NgayEnd as DateTime, @CongTy_ID as Bigint as 
			
	 select  CT.MaHH, CT.TenHH, isnull(sum(CT.DoanhThu),0) as TdoanhThu, isnull(sum(CT.TienTL),0) - isnull(sum(CT.ChietKhauTL),0) as TGiamTru
		      from(Select r.MaHH,r.TenHH, s.ThanhTienBan as DoanhThu, 0 as ChietKhauTL, 0 as TienTL 
				         From Ph_XuatCF i inner join CT_XuatHangCF s on i.PhNhapXuat_ID=s.PhNhapXuat_ID 
						 inner join DmHangHoaCF r on s.HH_ID=r.HH_ID 
		      		     Where NgayPhieu >= @NgayStart And NgayPhieu <= @NgayEnd 
				         And i.LoaiNhapXuat_ID = 2 and i.TenCongTy_ID = @CongTy_ID
		      UNION ALL Select r.MaDnMH,r.TenDnMH, s.ThanhTienBan as DoanhThu, 0 as ChietKhauTL, 0 as TienTL
				         From Ph_XuatCF i inner join CT_XuatHangCF s on i.PhNhapXuat_ID=s.PhNhapXuat_ID 
					     inner join DmDinhNghiaMHCF r on s.DnMH_ID=r.DnMH_ID 
		      		     Where NgayPhieu >= @NgayStart And NgayPhieu <= @NgayEnd 
				         And i.LoaiNhapXuat_ID = 2 and i.TenCongTy_ID = @CongTy_ID
		      UNION ALL SELECT r.MaHH, r.TenHH, 0 as DoanhThu, s.TienChietKhau as ChietKhauTL, s.ThanhTienTraLai as TienTL
				         From Ph_NhapCF i inner join CT_NhapHangCF s on i.PhNhapXuat_ID=s.PhNhapXuat_ID 
						 inner join DmHangHoaCF r on s.HH_ID=r.HH_ID  
				         Where NgayPhieu >= @NgayStart And NgayPhieu <= @NgayEnd
				         And i.LoaiNhapXuat_ID = 5 and i.TenCongTy_ID = @CongTy_ID ) AS CT	--so 5 la phieu nhap ban tra lai
		      Group by CT.MaHH, CT.TenHH
GO
/****** Object:  StoredProcedure [dbo].[PhieuThuCF]    Script Date: 07/28/2024 10:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--C#

CREATE      PROCEDURE [dbo].[PhieuThuCF] @SoPhThuChi as Bigint as

	select s.MaDT,s.TenDT, i.DiaChi, LyDo, SoTien, SoPhieu + Left('000000', 6 - Len(SoPhieu_ID)) + Convert(Varchar,SoPhieu_ID) as SoPhieu, NgayPhieu, ThuChi_ID, NguoiNhanNop 
		From Ph_ThuCF i inner join DmDoiTuongCF s on i.DT_ID=s.DT_ID
		where ThuChi_ID =@SoPhThuChi
GO
/****** Object:  StoredProcedure [dbo].[PhieuThanhToanCF]    Script Date: 07/28/2024 10:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--C#
CREATE  PROCEDURE [dbo].[PhieuThanhToanCF] @SoPhNhapXuat as Bigint as
	select s.MaHH, s.TenHH, sa.TenDVT, r.SoLuong, r.DonGiaBan, r.ThanhTienBan, i.SoPhieu + Left('000000', 6 - Len(i.SoPhieu_ID)) + Convert(Varchar,i.SoPhieu_ID) as SoPhieu,i.NgayPhieu,i.TienHang, i.TienThue, i.TongTien,i.DiaChi,t.TenDT, i.PhNhapXuat_ID,TyleGiamGia,TylePPhucVu,ThueSuat,TienGiamGia, TienPPhucVu, TienPhatSinh,LyDoPhatSinh,ts.TenBan as TenBan,CTXuatHang_ID,TyLechietKhau,GioVao,GioRa,tt.UserName   
		From Ph_XuatCF i inner join CT_XuatHangCF r on i.PhNhapXuat_ID=r.PhNhapXuat_ID 
		inner join DmHangHoaCF s on r.HH_ID=s.HH_ID inner join DmDVTCF sa on r.DVT_ID = sa.DVT_ID 
		inner join DmDoiTuongCF t on i.DT_ID=t.DT_ID 
		inner join DmBanCF ts on i.Ban_ID=ts.Ban_ID
		inner join [UserCF] tt on NguoiDung_ID=tt.UserID
       	Where i.PhNhapXuat_ID = @SoPhNhapXuat
	union all select s.MaDnMH, s.TenDnMH, sa.TenDVT, r.SoLuong, r.DonGiaBan, r.ThanhTienBan, i.SoPhieu + Left('000000', 6 - Len(i.SoPhieu_ID)) + Convert(Varchar,i.SoPhieu_ID) as SoPhieu,i.NgayPhieu,i.TienHang, i.TienThue, i.TongTien,i.DiaChi,t.TenDT, i.PhNhapXuat_ID, TyleGiamGia,TylePPhucVu,ThueSuat,TienGiamGia, TienPPhucVu, TienPhatSinh,LyDoPhatSinh ,ts.TenBan as TenBan,CTXuatHang_ID,TyLeChietKhau,GioVao,GioRa,tt.UserName    
		From Ph_XuatCF i inner join CT_XuatHangCF r on i.PhNhapXuat_ID=r.PhNhapXuat_ID 
		inner join DmDinhNghiaMHCF s on r.DnMH_ID=s.DnMH_ID inner join DmDVTCF sa on r.DVT_ID = sa.DVT_ID 
		inner join DmDoiTuongCF t on i.DT_ID=t.DT_ID  
		inner join DmBanCF ts on i.Ban_ID=ts.Ban_ID
		inner join [UserCF] tt on NguoiDung_ID=tt.UserID
      	Where i.PhNhapXuat_ID = @SoPhNhapXuat
   	    order by CTXuatHang_ID Asc
GO
/****** Object:  StoredProcedure [dbo].[PhieuInBepWebCF]    Script Date: 07/28/2024 10:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--C#
CREATE  PROCEDURE [dbo].[PhieuInBepWebCF] @ID as Bigint as
	select s.TenHH, sa.TenDVT, r.SLMon, 'XB' + Left('000000', 6 - Len(i.SoPhieu_ID)) + Convert(Varchar,i.SoPhieu_ID) as SoPhieu, NgayGio, ts.TenBan as TenBan,tt.UserName,CT_ID
		From Ph_InBepWebCF i inner join CT_InBepWebCF r on i.ID=r.ID 
		inner join DmHangHoaCF s on r.HH_ID=s.HH_ID
        inner join DmDVTCF sa on r.DVT_ID = sa.DVT_ID 
		inner join DmBanCF ts on i.Ban_ID=ts.Ban_ID
        inner join [UserCF] tt on TenTaiKhoan=tt.UserID
        Where i.ID = @ID
	Union All select s.TenDnMH, sa.TenDVT, r.SLMon, 'XB' + Left('000000', 6 - Len(i.SoPhieu_ID)) + Convert(Varchar,i.SoPhieu_ID) as SoPhieu, NgayGio, ts.TenBan as TenBan,tt.UserName,CT_ID
		From Ph_InBepWebCF i inner join CT_InBepWebCF r on i.ID=r.ID
        inner join DmDinhNghiaMHCF s on r.DnMH_ID=s.DnMH_ID 
		inner join DmDVTCF sa on r.DVT_ID = sa.DVT_ID 
		inner join DmBanCF ts on i.Ban_ID=ts.Ban_ID
        inner join [UserCF] tt on TenTaiKhoan=tt.UserID
		Where i.ID = @ID
   	    order by CT_ID Asc
GO
/****** Object:  StoredProcedure [dbo].[BaoCaoDoanhThuTheoNgayCF]    Script Date: 07/28/2024 10:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--C#
CREATE PROCEDURE [dbo].[BaoCaoDoanhThuTheoNgayCF] @NgayStart as DateTime, @NgayEnd as DateTime, @CongTy_ID as Bigint as 
			
	  select CT.NgayPhieu, isnull(sum(CT.DoanhThu),0) as DoanhThu, isnull(sum(CT.TienTL),0) - isnull(sum(CT.ChietKhauTL),0) as GiamTru,isnull(sum(CT.DoanhThu),0) + isnull(sum(CT.TienTL),0) - isnull(sum(CT.ChietKhauTL),0) as DoanhThuThuan
		    From(Select NgayPhieu, s.ThanhTienBan as DoanhThu, 0 as ChietKhauTL, 0 as TienTL
				From Ph_XuatCF i inner join CT_XuatHangCF s on i.PhNhapXuat_ID=s.PhNhapXuat_ID 
				inner join DmHangHoaCF r on s.HH_ID=r.HH_ID 
		      	Where NgayPhieu >= @NgayStart And NgayPhieu <= @NgayEnd 
				And i.LoaiNhapXuat_ID = 2 And i.TenCongTy_ID = @CongTy_ID
		    UNION ALL Select NgayPhieu, s.ThanhTienBan as DoanhThu, 0 as ChietKhauTL, 0 as TienTL
			    From Ph_XuatCF i inner join CT_XuatHangCF s on i.PhNhapXuat_ID=s.PhNhapXuat_ID 
			    inner join DmDinhNghiaMHCF r on s.DnMH_ID=r.DnMH_ID 
		        Where NgayPhieu >= @NgayStart And NgayPhieu <= @NgayEnd 
			    And i.LoaiNhapXuat_ID = 2 And i.TenCongTy_ID = @CongTy_ID
		   UNION ALL SELECT NgayPhieu, 0 as DoanhThu, s.TienChietKhau as ChietKhauTL, s.ThanhTienTraLai as TienTL
				From Ph_NhapCF i inner join CT_NhapHangCF s on i.PhNhapXuat_ID=s.PhNhapXuat_ID 
				inner join DmHangHoaCF r on s.HH_ID=r.HH_ID  
				Where NgayPhieu >= @NgayStart And NgayPhieu <= @NgayEnd
				And i.LoaiNhapXuat_ID = 5 And i.TenCongTy_ID = @CongTy_ID
		  UNION ALL SELECT NgayPhieu, 0 as DoanhThu, s.TienChietKhau as ChietKhauTL, s.ThanhTienTraLai as TienTL
		        From Ph_NhapCF i inner join CT_NhapHangCF s on i.PhNhapXuat_ID=s.PhNhapXuat_ID 
		        inner join DmHangHoaCF r on s.HH_ID=r.HH_ID  
			    Where NgayPhieu >= @NgayStart And NgayPhieu <= @NgayEnd
			    And i.LoaiNhapXuat_ID = 5  And i.TenCongTy_ID = @CongTy_ID ) AS CT	--so 5 la phieu nhap ban tra lai
		        Group by CT.NgayPhieu
GO
/****** Object:  StoredProcedure [dbo].[BaoCaoDoanhThuCF]    Script Date: 07/28/2024 10:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--C#
CREATE PROCEDURE [dbo].[BaoCaoDoanhThuCF] @NgayStar as DateTime, @NgayEnd as DateTime, @CongTy_ID as Bigint as 
			
	  select  CT.MaHH, CT.TenHH, isnull(sum(CT.DoanhThu),0) as DoanhThu, isnull(sum(CT.TienTL),0) - isnull(sum(CT.ChietKhauTL),0) as GiamTru,isnull(sum(CT.DoanhThu),0) + isnull(sum(CT.TienTL),0) - isnull(sum(CT.ChietKhauTL),0) as DoanhThuThuan 
		    From(Select r.MaHH,r.TenHH, s.ThanhTienBan as DoanhThu, 0 as ChietKhauTL, 0 as TienTL -- bo ChietKhauBH vi da tru tien vao ThanhTienBan roi
				From Ph_XuatCF i inner join CT_XuatHangCF s on i.PhNhapXuat_ID=s.PhNhapXuat_ID 
				inner join DmHangHoaCF r on s.HH_ID=r.HH_ID 
		      	Where NgayPhieu >= @NgayStar And NgayPhieu <= @NgayEnd 
				And i.LoaiNhapXuat_ID = 2 -- So 2 la phieu xuat ban hang
				And i.TenCongTy_ID = @CongTy_ID
		    UNION ALL Select r.MaDnMH,r.TenDnMH, s.ThanhTienBan as DoanhThu, 0 as ChietKhauTL, 0 as TienTL
			    From Ph_XuatCF i inner join CT_XuatHangCF s on i.PhNhapXuat_ID=s.PhNhapXuat_ID 
			    inner join DmDinhNghiaMHCF r on s.DnMH_ID=r.DnMH_ID 
		        Where NgayPhieu >= @NgayStar And NgayPhieu <= @NgayEnd 
			    And i.LoaiNhapXuat_ID = 2 -- So 2 la phieu xuat ban hang
			    And i.TenCongTy_ID = @CongTy_ID
		   UNION ALL SELECT r.MaHH, r.TenHH, 0 as DoanhThu, s.TienChietKhau as ChietKhauTL, s.ThanhTienTraLai as TienTL
				From Ph_NhapCF i inner join CT_NhapHangCF s on i.PhNhapXuat_ID=s.PhNhapXuat_ID 
				inner join DmHangHoaCF r on s.HH_ID=r.HH_ID  
				Where NgayPhieu >= @NgayStar And NgayPhieu <= @NgayEnd
				And i.LoaiNhapXuat_ID = 5  
				And i.TenCongTy_ID = @CongTy_ID
		  UNION ALL SELECT r.MaHH, r.TenHH, 0 as DoanhThu, s.TienChietKhau as ChietKhauTL, s.ThanhTienTraLai as TienTL
		        From Ph_NhapCF i inner join CT_NhapHangCF s on i.PhNhapXuat_ID=s.PhNhapXuat_ID 
		        inner join DmHangHoaCF r on s.HH_ID=r.HH_ID  
			    Where NgayPhieu >= @NgayStar And NgayPhieu <= @NgayEnd
			    And i.LoaiNhapXuat_ID = 5 And i.TenCongTy_ID = @CongTy_ID) AS CT	--so 5 la phieu nhap ban tra lai
		        Group by CT.MaHH, CT.TenHH
GO
/****** Object:  Default [DF_CT_NhapHangCF_DonGiaTraLai]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[CT_NhapHangCF] ADD  CONSTRAINT [DF_CT_NhapHangCF_DonGiaTraLai]  DEFAULT ((0)) FOR [DonGiaTraLai]
GO
/****** Object:  Default [DF_CT_NhapHangCF_ThanhTienTraLai]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[CT_NhapHangCF] ADD  CONSTRAINT [DF_CT_NhapHangCF_ThanhTienTraLai]  DEFAULT ((0)) FOR [ThanhTienTraLai]
GO
/****** Object:  Default [DF_CT_NhapHangCF_TienChietKhau]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[CT_NhapHangCF] ADD  CONSTRAINT [DF_CT_NhapHangCF_TienChietKhau]  DEFAULT ((0)) FOR [TienChietKhau]
GO
/****** Object:  Default [DF_CT_NhapHangCF_TyLeChietKhau]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[CT_NhapHangCF] ADD  CONSTRAINT [DF_CT_NhapHangCF_TyLeChietKhau]  DEFAULT ((0)) FOR [TyLeChietKhau]
GO
/****** Object:  Default [DF_CT_XuatHangCF_SoLuong]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[CT_XuatHangCF] ADD  CONSTRAINT [DF_CT_XuatHangCF_SoLuong]  DEFAULT ((0)) FOR [SoLuong]
GO
/****** Object:  Default [DF_CT_XuatHangCF_ThanhTienBan]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[CT_XuatHangCF] ADD  CONSTRAINT [DF_CT_XuatHangCF_ThanhTienBan]  DEFAULT ((0)) FOR [ThanhTienBan]
GO
/****** Object:  Default [DF_CT_XuatHangCF_ThanhTienVon]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[CT_XuatHangCF] ADD  CONSTRAINT [DF_CT_XuatHangCF_ThanhTienVon]  DEFAULT ((0)) FOR [ThanhTienVon]
GO
/****** Object:  Default [DF_CT_XuatHangCF_TyleChietKhau]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[CT_XuatHangCF] ADD  CONSTRAINT [DF_CT_XuatHangCF_TyleChietKhau]  DEFAULT ((0)) FOR [TyleChietKhau]
GO
/****** Object:  Default [DF_CT_XuatHangCF_TienChietKhau]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[CT_XuatHangCF] ADD  CONSTRAINT [DF_CT_XuatHangCF_TienChietKhau]  DEFAULT ((0)) FOR [TienChietKhau]
GO
/****** Object:  Default [DF_DmNhatKyCF_ThaoTac]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[DmNhatKyNDCF] ADD  CONSTRAINT [DF_DmNhatKyCF_ThaoTac]  DEFAULT ('') FOR [ThaoTac]
GO
/****** Object:  Default [DF_Ph_ThuChiCF_PhNhapXuat_ID]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[Ph_ChiCF] ADD  CONSTRAINT [DF_Ph_ThuChiCF_PhNhapXuat_ID]  DEFAULT ((0)) FOR [TinhCuoc_ID]
GO
/****** Object:  Default [DF_Ph_ThuChiCF_LoaiThuChi_ID]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[Ph_ChiCF] ADD  CONSTRAINT [DF_Ph_ThuChiCF_LoaiThuChi_ID]  DEFAULT ('') FOR [LoaiThuChi_ID]
GO
/****** Object:  Default [DF_Ph_ThuChiCF_SoPhieu]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[Ph_ChiCF] ADD  CONSTRAINT [DF_Ph_ThuChiCF_SoPhieu]  DEFAULT ((0)) FOR [SoPhieu]
GO
/****** Object:  Default [DF_Ph_ThuChiCF_NguoiNhanNop]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[Ph_ChiCF] ADD  CONSTRAINT [DF_Ph_ThuChiCF_NguoiNhanNop]  DEFAULT ('') FOR [NguoiNhanNop]
GO
/****** Object:  Default [DF_Ph_ThuChiCF_DiaChi]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[Ph_ChiCF] ADD  CONSTRAINT [DF_Ph_ThuChiCF_DiaChi]  DEFAULT ('') FOR [DiaChi]
GO
/****** Object:  Default [DF_Ph_ThuChiCF_LyDo]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[Ph_ChiCF] ADD  CONSTRAINT [DF_Ph_ThuChiCF_LyDo]  DEFAULT ('') FOR [LyDo]
GO
/****** Object:  Default [DF_Ph_ThuChiCF_HinhThucThanhToan]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[Ph_ChiCF] ADD  CONSTRAINT [DF_Ph_ThuChiCF_HinhThucThanhToan]  DEFAULT ('') FOR [HinhThucThanhToan]
GO
/****** Object:  Default [DF_Ph_ThuChiCF_NganHang_ID]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[Ph_ChiCF] ADD  CONSTRAINT [DF_Ph_ThuChiCF_NganHang_ID]  DEFAULT ('') FOR [NganHang_ID]
GO
/****** Object:  Default [DF_Ph_NhapXuat_KhoNhap_ID]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[Ph_NhapCF] ADD  CONSTRAINT [DF_Ph_NhapXuat_KhoNhap_ID]  DEFAULT ((0)) FOR [KhoNhap_ID]
GO
/****** Object:  Default [DF_Ph_NhapXuatCF_DiaChi]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[Ph_NhapCF] ADD  CONSTRAINT [DF_Ph_NhapXuatCF_DiaChi]  DEFAULT ('') FOR [DiaChi]
GO
/****** Object:  Default [DF_Ph_NhapXuatCF_TienThue]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[Ph_NhapCF] ADD  CONSTRAINT [DF_Ph_NhapXuatCF_TienThue]  DEFAULT ((0)) FOR [TienThue]
GO
/****** Object:  Default [DF_Ph_NhapXuatCF_ThueSuat]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[Ph_NhapCF] ADD  CONSTRAINT [DF_Ph_NhapXuatCF_ThueSuat]  DEFAULT ((0)) FOR [ThueSuat]
GO
/****** Object:  Default [DF_Ph_NhapXuatCF_ThuTienNgay]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[Ph_NhapCF] ADD  CONSTRAINT [DF_Ph_NhapXuatCF_ThuTienNgay]  DEFAULT ((0)) FOR [TraTienNgay]
GO
/****** Object:  Default [DF_Ph_ThuCF_PhNhapXuat_ID]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[Ph_ThuCF] ADD  CONSTRAINT [DF_Ph_ThuCF_PhNhapXuat_ID]  DEFAULT ((0)) FOR [PhNhapXuat_ID]
GO
/****** Object:  Default [DF_Ph_ThuCF_LoaiThuChi_ID]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[Ph_ThuCF] ADD  CONSTRAINT [DF_Ph_ThuCF_LoaiThuChi_ID]  DEFAULT ('') FOR [LoaiThuChi_ID]
GO
/****** Object:  Default [DF_Ph_ThuCF_SoPhieu]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[Ph_ThuCF] ADD  CONSTRAINT [DF_Ph_ThuCF_SoPhieu]  DEFAULT ('') FOR [SoPhieu]
GO
/****** Object:  Default [DF_Ph_ThuCF_NguoiNhanNop]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[Ph_ThuCF] ADD  CONSTRAINT [DF_Ph_ThuCF_NguoiNhanNop]  DEFAULT ('') FOR [NguoiNhanNop]
GO
/****** Object:  Default [DF_Ph_ThuCF_DiaChi]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[Ph_ThuCF] ADD  CONSTRAINT [DF_Ph_ThuCF_DiaChi]  DEFAULT ('') FOR [DiaChi]
GO
/****** Object:  Default [DF_Ph_ThuCF_LyDo]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[Ph_ThuCF] ADD  CONSTRAINT [DF_Ph_ThuCF_LyDo]  DEFAULT ('') FOR [LyDo]
GO
/****** Object:  Default [DF_Ph_ThuCF_HinhThucThanhToan]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[Ph_ThuCF] ADD  CONSTRAINT [DF_Ph_ThuCF_HinhThucThanhToan]  DEFAULT ('') FOR [HinhThucThanhToan]
GO
/****** Object:  Default [DF_Ph_ThuCF_NganHang_ID]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[Ph_ThuCF] ADD  CONSTRAINT [DF_Ph_ThuCF_NganHang_ID]  DEFAULT ((0)) FOR [NganHang_ID]
GO
/****** Object:  Default [DF_Ph_XuatCF_DiaChi]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[Ph_XuatCF] ADD  CONSTRAINT [DF_Ph_XuatCF_DiaChi]  DEFAULT ('') FOR [DiaChi]
GO
/****** Object:  Default [DF_Ph_XuatCF_Ban_ID]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[Ph_XuatCF] ADD  CONSTRAINT [DF_Ph_XuatCF_Ban_ID]  DEFAULT ((0)) FOR [Ban_ID]
GO
/****** Object:  Default [DF_ThamSoHeThongCF_KhoGiayIn]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[ThamSoHeThongCF] ADD  CONSTRAINT [DF_ThamSoHeThongCF_KhoGiayIn]  DEFAULT ((0)) FOR [KhoGiayIn]
GO
/****** Object:  Default [DF_ThamSoHeThongCF_KhoGiayTim]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[ThamSoHeThongCF] ADD  CONSTRAINT [DF_ThamSoHeThongCF_KhoGiayTim]  DEFAULT ((0)) FOR [KhoGiayTim]
GO
/****** Object:  Default [DF_ThamSoHeThongCF_KhoGiayTPS]    Script Date: 07/28/2024 10:13:06 ******/
ALTER TABLE [dbo].[ThamSoHeThongCF] ADD  CONSTRAINT [DF_ThamSoHeThongCF_KhoGiayTPS]  DEFAULT ((0)) FOR [KhoGiayTPS]
GO
