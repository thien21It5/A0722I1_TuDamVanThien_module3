use a07_student;
create table sinh_vien(
ma_sinh_vien int,
ten_sinh_vien varchar(50),
ngay_sinh date                -- Kiểu dữ liệu date (năm sinh, tháng sinh, ngày sinh)
);

select * from sinh_vien;

insert into sinh_vien(ma_sinh_vien, ten_sinh_vien, ngay_sinh) value
(1, 'Tu Dam Van Thien', '2022-01-01');

insert into sinh_vien(ma_sinh_vien, ten_sinh_vien, ngay_sinh) value
(2, 'Nguyen Van A', '2021-12-22'),
(3, 'Nguyen Van B', '2021-12-22'),
(4, 'Nguyen Van C', '2019-08-12');

select ngay_sinh from sinh_vien;
select ten_sinh_vien from sinh_vien;

insert into mon_hoc(ma_mon_hoc, ten_mon_hoc) value 
(1, 'Sinh'),
(2, 'Van'),
(3, 'Anh'),
(4, 'Toan');

select * from mon_hoc;
select ten_mon_hoc from mon_hoc;