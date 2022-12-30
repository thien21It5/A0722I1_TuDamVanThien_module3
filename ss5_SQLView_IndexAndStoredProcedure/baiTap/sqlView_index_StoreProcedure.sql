create database demoSS5;

use demoSS5;

create table Products(
id int not null primary key,
productCode varchar(45),
productName varchar(45),
productPrice int,
productAmount int,
productDescription varchar(225),
productStatus varchar(45)
);

insert Products value
(1,'001','Fried Chicken',10,1,'Chicken','on sale'),
(2,'002','Beef steak',20,2,'Beef','on sale'),
(3,'003','Fried Pork',30,3,'Pork','on sale');

-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)
create unique index uidx_productCode on Products(productCode);

-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)
create index product_Name_Price on Products(productName, productPrice);

-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào
explain select * from Products where productName ='Fried Chicken';

-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
create view product_CNP 
as
select productCode, productName, productPrice, productStatus from Products;
select * from product_CNP;

-- Tiến hành sửa đổi view
alter view product_CNP 
as 
select productCode, productName, productPrice from Products;

-- Tiến hành xóa view
drop view Product_CNP;

-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
DELIMITER $$
create procedure infoProduct()
begin
	select * from Products;
end; $$
DELIMITER ;

call infoProduct();

-- Tạo store procedure thêm một sản phẩm mới
DELIMITER $$
create procedure addProduct(in id int, in productCode varchar(45), in productName varchar(45),
                            in productPrice int, in productAmount int, 
                            in productDescription varchar(225), in productStatus varchar(45))
begin
insert into Products value
(id, productCode, productName, productPrice, productAmount, productDescription, productStatus);
end; $$
DELIMITER ;

call addProduct(4,"004", "Mashed potato", 20, 3, "Potato has mashed and add some cheese", "end sale");

-- Tạo store procedure sửa thông tin sản phẩm theo id
DELIMITER $$
create procedure editProduct(in editID int, in pCode varchar(45), in pName varchar(45),
                            in pPrice int, in pAmount int, 
                            in pDescription varchar(225), in pStatus varchar(45))
begin
update Products
set productCode = pCode, productName = pName, productPrice = pPrice, 
    productAmount = pAmount, productDescription = pDescription, productStatus = pStatus
where id = editID;
end; $$
DELIMITER ;

call editProduct(3,"004", "Mashed potato", 20, 3, "Potato has mashed and add some cheese", "end sale");

-- Tạo store procedure xoá sản phẩm theo id
DELIMITER $$
create procedure deleteProduct(in deleteID int)
begin
delete from Products
where id = deleteID;
end; $$
DELIMITER ;

call deleteProduct(2);
