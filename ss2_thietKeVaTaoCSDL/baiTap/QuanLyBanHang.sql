create database QuanLyBanHang;
use QuanLyBanHang;

create table Customer(
c_ID int not null primary key,
c_Name varchar(50),
c_Age int
);

create table OOrder(
o_ID int not null primary key,
c_ID int,
o_Date datetime,
o_Total_Price varchar(50),
 foreign key(c_ID) references Customer(c_ID)
);

create table Product(
p_ID int not null primary key,
p_Name varchar(50),
p_Price varchar(50)
);

create table OrderDetail(
o_ID int,
p_ID int,
od_QTY int,
primary key(o_ID,p_ID),
foreign key(o_ID) references OOrder(o_ID),
foreign key(p_ID) references Product(p_ID)
);
