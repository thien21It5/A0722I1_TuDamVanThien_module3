-- 2. Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là
-- một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự.
select * from nhan_vien
where ho_ten like 'H%' or ho_ten like 'T%' or ho_ten like 'K%'
and char_length(ho_ten) <= 15;

-- 3. Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và
-- có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
select ma_khach_hang, ho_ten from khach_hang
where (timestampdiff(YEAR, ngay_sinh, now()) between 18 and 50) and dia_chi like '%Đà Nẵng%' or dia_chi like '%Quảng Trị%';

-- 4. Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu
-- lần. Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của
-- khách hàng. Chỉ đếm những khách hàng nào có Tên loại khách hàng là
-- “Diamond”.
select kh.ho_ten, count(hd.ma_hop_dong) as so_luong from
 khach_hang as kh inner join hop_dong as hd 
on kh.ma_khach_hang = hd.ma_khach_hang
inner join loai_khach_hang as lkh on 
