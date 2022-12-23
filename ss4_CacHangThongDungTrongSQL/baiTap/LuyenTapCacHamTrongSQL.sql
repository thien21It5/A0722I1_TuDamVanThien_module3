use QuanLySinhVien;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select * from Subject
where Credit is not null
group by Credit 
having Credit = (select Max(Credit) from subject);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select * from Subject s
 join Mark m on s.SubId = m.SubId
where m.Mark = (select Max(Mark) from Mark);

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, Xếp hạng theo thứ tự điểm giảm dần
select s.StudentId, s.StudentName, s.Address, avg(m.Mark) as Diem_TB from Student s
inner join Mark m on s.StudentId = m.StudentId
group by s.StudentId, s.StudentName
order by Diem_TB asc;