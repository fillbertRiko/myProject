create database qldanhsachsinhvien
on primary
(name = qldanhsachsinhvien_data,
filename = 'E:\SQL\qldanhsachsinhvien_data.mdf',
size = 100mb,
maxsize = 500mb,
filegrowth = 10%)
log on
(name= qldanhsachsinhvien_log,
filename = 'E:\SQL\qldanhsachsinhvien_log.ldf',
size = 50mb,
maxsize = unlimited,
filegrowth = 5mb)

use qldanhsachsinhvien
go

--tao bang du lieu
--bang danh sach sinh vien
create table SinhVien
(
	STT int identity(1,1),
	iMaSV char(10) not null,
	nTenSV nvarchar(100) not null,
	iMaLop char(10) not null,
	dNgaySinh datetime not null,
	GioiTinh char(5) not null,
	DiaChi nvarchar(100) not null,
	SoDienThoai nvarchar(11) not null,
	Email nvarchar(100) not null,
	ChuyenNganh nvarchar(50) not null,
	KhoaHoc nvarchar(10) not null,
	primary key (iMaSV, iMaLop)
)

--bang danh sach lop
create table Lop
(
	iMaLop char(10) not null,
	nTenLop nvarchar(50) not null,
	KhoaHoc nvarchar(10) not null, 
	ChuyenNganh nvarchar(20) not null,
	SiSo int,
	tDanhSachSV char(10) not null,
	primary key (iMaLop)
)
--bang mon hoc
create table MonHoc
(
	iMaMonHoc char(10) not null,
	nTenMonHoc nvarchar(50) not null,
	SoTinChi float,
	MoTa nvarchar(100) not null,
	iMaGiangVien char(10) not null,
	HocKi int,
	dNamHoc datetime,
	primary key(iMaMonHoc)
)
--bang thoi khoa bieu
create table ThoiKhoaBieu
(
	iMaThoiKhoaBieu char(10) not null,
	iMaLop char(10) not null,
	HocKi int,
	dNamHoc datetime,
	dThu nvarchar(10) not null,
	sTietHoc char(10) not null,
	iMaMonHoc char(10) not null,
	nTenMonHoc nvarchar(50) not null,
	iPhongHoc char(10) not null,
	primary key (iMaThoiKhoaBieu)
)
go
