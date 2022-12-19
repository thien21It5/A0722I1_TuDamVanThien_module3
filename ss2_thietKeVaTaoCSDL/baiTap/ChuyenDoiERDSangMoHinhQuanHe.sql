create database ChuyenDoiERDSangMoHinhQuanHe;

use ChuyenDoiERDSangMoHinhQuanHe;

create table PhieuXuat(
so_px int not null primary key,
ngay_xuat datetime  
);

create table VatTu(
ma_VTU int not null primary key,
ten_VTU varchar(50)
);

create table PhieuNhap(
so_PN int not null primary key,
ngay_nhap datetime
);
create table DonDatHang(
so_DH int not null primary key,
ngay_DH datetime
);

alter table DonDatHang add MaNCC int;
alter table DonDatHang add constraint FK_MaNCC foreign key(MaNCC) references NhaCungCap(ma_NCC);

create table NhaCungCap(
ma_NCC int not null primary key,
ten_NCC varchar(50),
dia_chi varchar(50)
);

create table NCC_sdt(
ma_NCC int,
sdt varchar(22)
);
-- Chi tiết phiếu xuất
create table ChiTietPhieuXuat(
DG_xuat varchar(50),
SL_xuat int,
SoPX int,
MaVTU int,
foreign key(SoPX) references phieuXuat(so_px),
foreign key(MaVTU) references VatTu(ma_VTU)
);

-- Chi tiết phiếu nhập
create table ChiTietPhieuNhap(
DG_nhap varchar(50),
SL_nhap varchar(50),
maVTU int,
soPN int,
foreign key(maVTU) references VatTu(ma_VTU),
foreign key(soPN) references PhieuNhap(so_PN)
);

-- Chi tiết đơn đặt hàng 
create table chiTietDonDatHang(

maVTU int,
soDH int,
foreign key(maVTU) references VatTu(ma_VTU),
foreign key(soDH) references DonDatHang(so_DH)
);