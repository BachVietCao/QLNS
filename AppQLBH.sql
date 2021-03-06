USE [master]
GO
/****** Object:  Database [AppQuanLyBanHang]    Script Date: 9/13/2021 9:15:59 ******/
CREATE DATABASE [AppQuanLyBanHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AppQuanLyBanHang', FILENAME = N'D:\WinForm\AppQuanLyBanHang\SQL\AppQuanLyBanHang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AppQuanLyBanHang_log', FILENAME = N'D:\WinForm\AppQuanLyBanHang\SQL\AppQuanLyBanHang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AppQuanLyBanHang] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AppQuanLyBanHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AppQuanLyBanHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AppQuanLyBanHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AppQuanLyBanHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AppQuanLyBanHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AppQuanLyBanHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [AppQuanLyBanHang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AppQuanLyBanHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AppQuanLyBanHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AppQuanLyBanHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AppQuanLyBanHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AppQuanLyBanHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AppQuanLyBanHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AppQuanLyBanHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AppQuanLyBanHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AppQuanLyBanHang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AppQuanLyBanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AppQuanLyBanHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AppQuanLyBanHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AppQuanLyBanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AppQuanLyBanHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AppQuanLyBanHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AppQuanLyBanHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AppQuanLyBanHang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AppQuanLyBanHang] SET  MULTI_USER 
GO
ALTER DATABASE [AppQuanLyBanHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AppQuanLyBanHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AppQuanLyBanHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AppQuanLyBanHang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AppQuanLyBanHang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AppQuanLyBanHang] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AppQuanLyBanHang] SET QUERY_STORE = OFF
GO
USE [AppQuanLyBanHang]
GO
/****** Object:  Table [dbo].[CTHoaDon]    Script Date: 9/13/2021 9:16:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHoaDon](
	[MaHD] [nvarchar](20) NOT NULL,
	[MaHH] [nvarchar](20) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [money] NOT NULL,
	[GiamGia] [money] NOT NULL,
	[ThanhTien] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 9/13/2021 9:16:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangHoa](
	[MaHH] [nvarchar](20) NOT NULL,
	[TenHH] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGiaNhap] [money] NOT NULL,
	[DonGiaBan] [money] NOT NULL,
	[LoaiHang] [nvarchar](30) NULL,
	[DVT] [nvarchar](10) NULL,
	[NSX] [datetime] NULL,
	[HSD] [datetime] NULL,
	[NhaCungCap] [nvarchar](100) NULL,
	[Anh] [nvarchar](200) NULL,
	[GhiChu] [nvarchar](500) NULL,
 CONSTRAINT [PK__HangHoa__2725A6E489899378] PRIMARY KEY CLUSTERED 
(
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 9/13/2021 9:16:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [nvarchar](20) NOT NULL,
	[MaNV] [nvarchar](20) NOT NULL,
	[NgayBan] [datetime] NOT NULL,
	[MaKH] [nvarchar](20) NOT NULL,
	[TongTien] [money] NOT NULL,
 CONSTRAINT [PK__HoaDon__2725A6E0DA9B8DAB] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khacHang]    Script Date: 9/13/2021 9:16:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khacHang](
	[MaKhachHang] [nvarchar](20) NOT NULL,
	[TenKhachHang] [nvarchar](35) NOT NULL,
	[SDT] [nvarchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 9/13/2021 9:16:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[TaiKhoan] [nvarchar](20) NOT NULL,
	[MatKhau] [nvarchar](20) NOT NULL,
	[Quyen] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 9/13/2021 9:16:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](20) NOT NULL,
	[TenNV] [nvarchar](35) NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](15) NOT NULL,
	[TaiKhoan] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK__NhanVien__2725D70AB9AA0CF4] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CTHoaDon] ADD  DEFAULT ('0') FOR [GiamGia]
GO
ALTER TABLE [dbo].[Login] ADD  DEFAULT ('0') FOR [Quyen]
GO
ALTER TABLE [dbo].[CTHoaDon]  WITH CHECK ADD  CONSTRAINT [FK__CTHoaDon__MaHD__33D4B598] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[CTHoaDon] CHECK CONSTRAINT [FK__CTHoaDon__MaHD__33D4B598]
GO
ALTER TABLE [dbo].[CTHoaDon]  WITH CHECK ADD  CONSTRAINT [FK__CTHoaDon__MaHH__32E0915F] FOREIGN KEY([MaHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
GO
ALTER TABLE [dbo].[CTHoaDon] CHECK CONSTRAINT [FK__CTHoaDon__MaHH__32E0915F]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK__HoaDon__MaKH__2F10007B] FOREIGN KEY([MaKH])
REFERENCES [dbo].[khacHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK__HoaDon__MaKH__2F10007B]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK__HoaDon__TongTien__2E1BDC42] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK__HoaDon__TongTien__2E1BDC42]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK__NhanVien__TaiKho__276EDEB3] FOREIGN KEY([TaiKhoan])
REFERENCES [dbo].[Login] ([TaiKhoan])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK__NhanVien__TaiKho__276EDEB3]
GO
USE [master]
GO
ALTER DATABASE [AppQuanLyBanHang] SET  READ_WRITE 
GO
