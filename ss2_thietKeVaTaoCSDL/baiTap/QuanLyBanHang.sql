create database QuanLyBanHang;
use QuanLyBanHang;

create table Customer(
c_ID int not null primary key,
c_Name varchar(50),
c_Age int
);


create table OOrder(
o_ID int not null primary key,
o_Date datetime,
o_Total_Price varchar(50)
);

alter table OOrder add c_ID int;
alter table OOrder add constraint fk_c_ID foreign key(c_ID) references Customer(c_ID);

create table Product(
p_id int not null primary key,
p_name varchar(50),
p_price varchar(50)
);

create table OrderDetail(
od_QTY varchar(50),
o_ID int,
p_ID int,
foreign key(o_ID) references OOrder(o_ID),
foreign key(p_ID) references Product(p_ID)
);