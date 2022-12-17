-- Câu lệnh tạo database
create database a07_student;

-- Chọn DB mong muốn làm việc
use a07_student;

-- Tạo table
create table mon_hoc(
ma_mon_hoc int,
ten_mon_hoc varchar(50)
-- varchar là chuỗi ký tự với max là 255 ký tự
);

select * from mon_hoc; -- Lấy nội dung toàn bộ ra table (dòng lệnh bắt buộc phải chạy!)

-- Thêm dữ liệu vào table 
 insert into mon_hoc(ma_mon_hoc, ten_mon_hoc) value
 (1, 'toan');
 
 insert into mon_hoc(ma_mon_hoc, ten_mon_hoc) value
 (2, 'sinh'),
 (3, 'ly'),
 (4, 'hoa'),
 (5, 'van'),
 (6, 'anh');
 select * from mon_hoc; -- Lấy nội dung toàn bộ ra table (dòng lệnh bắt buộc phải chạy!)
  select ten_mon_hoc from mon_hoc;