use student_management;

create table class(
id_class int not null,
name_class varchar(45) null
);

create table teacher(
id_teacher int not null,
name_teacher varchar(45) null,
age_teacher int null,
country_teacher varchar(45) null
);

select * from class;


insert into class(id_class, name_class) value
(1 ,'A0722I1'),
(2 ,'C0922I2'),
(3 ,'A0821I1'),
(4 ,'21SE5');

select * from teacher;

insert into teacher(id_teacher, name_teacher, age_teacher, country_teacher) value
(1, 'Nguyen Huu Manh', 46, 'Da Nang'),
(2, 'Nguyen Thanh Cong', 32, 'Da Nang'),
(3, 'Pham Thi Yen Nhi', 26, 'Hue'),
(4, 'Pham Thanh Trung', 42, 'Nghe An');
