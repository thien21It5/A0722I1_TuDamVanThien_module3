use QuanLyBanHang;

-- Thêm giá trị vào bảng Customer
insert into Customer value
(1, 'Minh Quan', 10),
(2, 'Ngoc Oanh', 20),
(3, 'Hong Ha', 50);

select * from Customer;

-- Thêm giá trị vào bảng Order
insert into OOrder(o_ID, c_ID, o_Date) value
(1, 1, '2006/3/21'),
(2, 2, '2006/3/23'),
(3, 1, '2006/3/16');

select * from OOrder;

-- Thêm giá trị vào bảng Product
insert into Product value
(1, 'May Giat', 3), 
(2, 'Tu Lanh', 5), 
(3, 'Dieu Hoa', 7), 
(4, 'Quat', 1), 
(5, 'Bep Dien', 2);

select * from Product;

-- Them giá trí vào bảng OrderDetail
insert into OrderDetail value
(1 , 1, 3),
(1 , 3, 7),
(1 , 4, 2),
(2 , 1, 1),
(3 , 1, 8),
(2 , 5, 4),
(2 , 3, 3);

select * from OrderDetail;

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select o_ID, o_Date, o_Total_Price from OOrder;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách hàng
select c.c_Name, p.p_Name 
from (Customer c inner join OOrder o on c.c_ID = o.c_ID)
inner join OrderDetail ord on o.o_ID = ord.o_ID
inner join Product p on ord.p_ID = p.p_ID;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
select * from Customer c
left join OOrder o on c.c_ID = o.c_ID
where o.c_ID is null;

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng 
-- tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)
select o.o_ID, o.o_Date, (ord.od_QTY * p.p_Price) as Total_amount from
OOrder o inner join OrderDetail ord on o.o_ID = ord.o_ID
inner join product p on ord.p_ID = p.p_ID;
