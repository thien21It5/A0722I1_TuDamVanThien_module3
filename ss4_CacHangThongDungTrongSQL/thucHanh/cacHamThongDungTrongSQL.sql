use QuanLySinhVien;

-- Hiển thị số lượng sinh viên ở từng nơi
select Address, count(StudentId) as 'So luong sinh vien'
from student
group by Address;

-- Tính điểm trung bình các môn học của mỗi học viên
SELECT S.StudentId,S.StudentName, AVG(M.Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName;

-- Hiển thị những bạn học viên có điểm trung bình các môn học lớn hơn 15.
SELECT S.StudentId,S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) > 15;

-- Hiển thị thông tin các học viên có điểm trung bình lớn nhất.
SELECT S.StudentId, S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) >= ALL (SELECT AVG(Mark) FROM Mark GROUP BY Mark.StudentId);