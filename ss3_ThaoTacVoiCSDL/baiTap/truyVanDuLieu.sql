use quanlysinhvien;
-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’
select * from Student
where StudentName like 'h%';

-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.
select * from Class
where month(StartDate) = 12;

-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.
select * from Subject
where Credit >=3 and Credit <=5; 

-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2 
SELECT * FROM Student;
update Student set ClassId = 2 
where StudentName ='Hung';

-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.
select stu.StudentName, sub.SubName, m.Mark
from (Student as stu inner join Mark as m on stu.StudentId = m.StudentId)
inner join Subject as sub on m.SubId = sub.Subid
order by m.Mark desc;
