create database QuanLyDiemThi;
use quanlydiemthi;

create table hocsinh(
ma_hs varchar(20) primary key,
ten_hs varchar(50),
ngay_sinh datetime,
lop varchar(20),
gioi_tinh varchar(20)
);

create table monhoc(
ma_MH varchar(20) primary key,
ten_MH varchar(50) 
);

create table bangdiem(
ma_hs varchar(20),
ma_mh varchar(20),
diem_thi int,
ngay_kt datetime,
primary key (ma_hs, ma_mh),
foreign key(ma_hs) references hocsinh(ma_hs),
foreign key(ma_mh) references monhoc(ma_mh)
);

CREATE TABLE giaovien(
    ma_gv VARCHAR(20) PRIMARY KEY,
    ten_gv VARCHAR(20),
    sdt VARCHAR(10)
);


ALTER TABLE monhoc ADD ma_gv VARCHAR(20);
ALTER TABLE monhoc ADD CONSTRAINT FK_ma_gv FOREIGN KEY (ma_gv) REFERENCES giaovien(ma_gv);

