create table groups
(
    id         serial primary key,
    group_name varchar(50)
);
create table courses
(
    id          serial primary key,
    course_name varchar(50),
    start_date  varchar(50),
    groups_id   int references groups (id)
);
create table lessons
(
    id          serial primary key,
    lesson_name varchar(50),
    course_id   int references courses (id)
);
create table mentors
(
    id             serial primary key,
    first_name     varchar(50),
    last_name      varchar(50),
    gender         varchar(50),
    email          varchar(50),
    specialization varchar(50),
    experience     int,
    course_id      int references courses (id)
);
create table students
(
    id            serial primary key,
    first_name    varchar(50),
    last_name     varchar(50),
    gender        varchar(50),
    email         varchar(50),
    date_of_birth date,
    group_id      int references groups (id)
);
insert into groups(group_name)
values ('Java 9'),
       ('JS 9'),
       ('Java 12'),
       ('JS 12'),
       ('Java 13'),
       ('JS 13');
insert into courses (course_name, start_date, groups_id)
values ('Java 9 core', '2023-01-03', 1),
       ('JS 9 core', '2023-01-03', 2),
       ('Java 12 core', '2023-10-03', 3),
       ('JS 12 core', '2023-10-03', 4),
       ('Java 13 core', '2024-01-08', 5),
       ('JS 13 core', '2024-01-08', 6),
       ('Technical English','2024-01-08', 1),
       ('Python','2024-01-08', 6);
insert into lessons(lesson_name, course_id)
values ('Loops', 1),
       ('HTML', 2),
       ('Methods', 3),
       ('CSS', 4),
       ('Collections', 5),
       ('React', 6);
insert into mentors (first_name, last_name, gender, email, specialization, experience, course_id)
values ('Datka', 'Mamatzhanova', 'Female', 'datka@gmail.com', 'java', 2, 1),
       ('Ulan', 'Kubanychbekov', 'Male', 'ulan@gmail.com', 'java', 3, 3),
       ('Aizat', 'Duisheeva', 'Female', 'aizat@gmail.com', 'java', 1, 5),
       ('Elizar', 'Aitbek uulu', 'Male', 'elizar@gmail.com', 'js', 1, 2),
       ('Aziat', 'Abdimalikov', 'Male', 'aziat@gmail.com', 'js', 1, 4),
       ('Alisher', 'Jumanov', 'Male', 'alisher@gmail.com', 'js', 1, 6);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (1, 'Knox', 'Jacquot', 'kjacquot0@addthis.com', 'Male', '2004-04-12', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (2, 'Dewain', 'Hunt', 'dhunt1@trellian.com', 'Male', '2003-04-13', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (3, 'Jarrett', 'Iianon', 'jiianon2@chronoengine.com', 'Male', '2005-05-05', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (4, 'Merry', 'Niezen', 'mniezen3@canalblog.com', 'Male', '1999-04-03', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (5, 'Nollie', 'Pellingar', 'npellingar4@usgs.gov', 'Female', '2003-05-06', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (6, 'Eveleen', 'Moukes', 'emoukes5@amazon.co.uk', 'Female', '1996-03-03', 6);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (7, 'Nollie', 'Becker', 'nbecker6@is.gd', 'Male', '1994-02-04', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (8, 'Nadine', 'Robilart', 'nrobilart7@walmart.com', 'Female', '2000-06-06', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (9, 'Dex', 'Prugel', 'dprugel8@arizona.edu', 'Male', '2001-03-04', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (10, 'Phyllis', 'Baroche', 'pbaroche9@state.gov', 'Female', '2004-04-04', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (11, 'Bernadette', 'Dulson', 'bdulsona@altervista.org', 'Female', '2004-04-04', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (12, 'Earlie', 'Pledge', 'epledgeb@jimdo.com', 'Male', '1993-12-04', 6);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (13, 'Luigi', 'Standish', 'lstandishc@army.mil', 'Male', '1998-11-13', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (14, 'Cody', 'McLeoid', 'cmcleoidd@yahoo.com', 'Male', '2000-10-10', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (15, 'Heall', 'Dolligon', 'hdolligone@squidoo.com', 'Male', '2003-09-09', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (16, 'Isiahi', 'Somerscales', 'isomerscalesf@eepurl.com', 'Male', '1995-05-03', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (17, 'Matthieu', 'Spolton', 'mspoltong@so-net.ne.jp', 'Male', '1995-03-30', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (18, 'Esme', 'Brockway', 'ebrockwayh@hexun.com', 'Female', '1997-08-08', 6);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (19, 'Erroll', 'Cutforth', 'ecutforthi@wisc.edu', 'Male', '2002-03-30', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (20, 'Gordon', 'Thieme', 'gthiemej@japanpost.jp', 'Male', '1994-04-04', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (21, 'Dom', 'Arnecke', 'darneckek@google.fr', 'Male', '2000-03-03', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (22, 'Raven', 'Yarrall', 'ryarralll@vimeo.com', 'Female', '2009-05-05', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (23, 'Emery', 'McSporon', 'emcsporonm@reverbnation.com', 'Male', '1990-12-20', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (24, 'Der', 'Caville', 'dcavillen@csmonitor.com', 'Male',  '2003-03-20',6);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (25, 'Erich', 'Lorroway', 'elorrowayo@bizjournals.com', 'Male', '2000-08-07', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (26, 'Edan', 'Brayne', 'ebraynep@prweb.com', 'Male', '2008-12-23', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (27, 'Garald', 'Puddle', 'gpuddleq@taobao.com', 'Male', '1990-03-03', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (28, 'Orelee', 'Hoggan', 'ohogganr@e-recht24.de', 'Female', '1999-03-29', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (29, 'Dion', 'Kepp', 'dkepps@boston.com', 'Female', '2000-12-13', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (30, 'Winna', 'Ganders', 'wganderst@artisteer.com', 'Female', '2001-11-11', 6);
--groups
--1 Получите все записи таблицы groups;
select  * from groups;
--2 Получите общее количество записей таблицы groups
select count(*) as kolichestvo from groups;
--3 Выведите группы их курсы
select * from groups g inner join courses c on g.id=c.groups_id;
--4 Выведите курсы групп у которых курс начался с 2020-1-1 по 2023-3-3
select  * from courses c inner join groups g on c.groups_id = g.id where c.start_date between '2020-1-1'and'2023-3-3';
--5 Выведите имена, дату рождения студентов , которые родились с 1980-1-1 по 2004-12-12, и названиегруппы
select s.first_name,s.date_of_birth,g.group_name from students s inner join  groups g  on s.group_id=g.id where s.date_of_birth between '1980-1-1' and '2004-12-12';
--6 Вывести полное имя, возраст, почту студентов и название группы, где айди группы равен 3
select concat(s.first_name,' ',s.last_name)as full_name,s.date_of_birth,s.email,g.group_name  from students s inner join groups g on s.group_id = g.id where g.id = 3 ;
--7 Вывести все курсы одной группы, где название группы 'Java-13'
select c.id,c.course_name,g.group_name from courses c inner join groups g on c.groups_id =g.id where g.group_name ='Java 13';
--8 Вывести название всех групп и количество студентов в группе
select  g.group_name,count(s.id) as student_count from groups g inner join students s on s.group_id = g.id group by g.group_name;
--9 Вывести название всех групп и количество студентов в группе, если в группе больше 4 студентов
select  g.group_name,count(s.id) as student_count from groups g inner join students s on s.group_id = g.id group by g.group_name having count(s.id)>4;
-- 10. Отсортируйте имена студентов группы по убыванию, где айди группы равна 4 и выведите айдистудента, имя, пол и название групп
select s.id,s.first_name,s.gender,g.id,g.group_name from groups g inner join students s on s.group_id=g.id where g.id=4 order by s.first_name desc;

--courses
--1 Вывести все курсы
select * from courses;
--2 Вывести все уроки курса 'Technical English'
select * from lessons l inner join courses c on l.course_id=c.id where c.course_name='Technical English';
--3 Вывести количество всех студентов курса id = 4
select c.id as course_id,c.course_name,count(s.id)as student_count from students s inner join groups g on s.group_id = g.id inner join courses c on g.id =c.groups_id where c.id=4 group by c.id;
--4 Вывести имя, почту, специализацию ментора и название курса где курс айди равен 2
select m.first_name,m.email,m.specialization,c.id as sourse_id,c.course_name from mentors m inner join courses c on m.course_id=c.id where c.id=2;
--5 Посчитaть сколько менторов в каждом курсе
select c.course_name,count(m.id) as mentors_count from mentors m inner join courses c on m.course_id= c.id group by c.course_name;
--6 Сгруппируйте и посчитайте менторов в каждом курсе и выведите только те курсы, где в курсебольше 2 менторов
select c.course_name,count(m.id) as mentors_count from mentors m inner join courses c on m.course_id= c.id group by c.course_name having count(m.first_name)>2;
--7 Вывести название, дату и полное имя ментора, все курсы которые начинаются с 2020-1-1 по 2023-3-3
select c.course_name,c.start_date,concat(m.first_name,' ',m.last_name) as full_name from mentors m inner join courses c on m.course_id=c.id where c.start_date between '2020-1-1'and '2023-3-3';
--8 Вывести имя, почту, возраст студентов курса 'Java 13 core'
select s.first_name,s.email,extract(year from age(timestamp '2024-4-16',s.date_of_birth))as age,c.course_name from students s inner join groups g on s.group_id=g.id inner join courses c on g.id = c.groups_id where c.course_name='Java 13 core';
--9 Вывести тот курс где нет ментора
select c.course_name,m.first_name as mentors from mentors m inner join courses c on m.course_id=c.id where m.first_name like ' ';
--10 Вывести тот курс где нет уроков
select c.course_name,l.lesson_name as lessons from courses c inner join lessons l on c.id= l.course_id where l.lesson_name like ' ';
--11 Вывести тот курс где нет студентов
select c.course_name,s.first_name as students from students s inner join groups g on s.group_id = g.id inner join courses c on g.id = c.groups_id where s.first_name like' ';

--students
--1 Вывести общее количество студентов
select count(*) as student_count from students;
--2 Вывести имя, почту и пол студента, айди группы которого равна 2
select s.first_name,s.email,s.gender,g.id,g.group_name from students s inner join groups g on s.group_id=g.id where g.id=2;
--3 Вывести группу студента, айди которого равна 4
select g.group_name,s.* from groups g inner join students s on g.id=s.group_id where s.id=4;
--4 Сгруппируйте студентов по gender и выведите общее количество gender
select  gender,count(*) from students s  group by s.gender;
--5 Найдите студента с айди 8 и обновите его данные
update students set first_name='nurmuhammed', last_name='rusbaev',email='nur@gmail.com',date_of_birth='2006-11-22' where id=8;
--6 Найдите самого старшего студента курса, айди курса которого равна 5
select c.id,c.course_name,s.* from students s inner join groups g on s.group_id=g.id inner join courses c on g.id=c.groups_id where c.id=5 order by s.date_of_birth limit 1;
--7 Добавьте unique constraint email в столбец таблицы students
alter table students add constraint email unique (email);
--8 Добавьте check constraint gender в столбец таблицы mentors
alter table mentors add constraint gender check (gender in ('Male','Female'));
--9 Добавьте check constraint gender в столбец таблицы students
alter table students add constraint  gender check (gender in ('Male','Female'));


--mentors
--1 Вывести средний возраст всех менторов
select  from mentors;
--2 Вывести имя, почту и специализацию ментора группы 'Java-9'
select m.first_name,m.email,m.specialization,g.group_name from mentors m inner join courses c on m.course_id = c.id inner join groups g on c.groups_id=g.id where g.group_name='Java 9';
--3 Вывести всех менторов, чей опыт превышает 1 год
select experience as opyt,* from mentors m  where m.experience>1;
--4 Вывести ментора у которого нет курса
select m.first_name as mentor_name,c.course_name as courses from mentors m inner join courses c on m.course_id=c.id where c.course_name like' ';
--5 Вывести айди, имя ментора и его студентов
select m.id,m.first_name,s.* from mentors m inner join courses c on m.course_id= c.id inner join groups g on c.groups_id=g.id inner join students s on g.id=s.group_id;
--6 Посчитать сколько студентов у каждого ментора, и вывести полное имя ментора и количество его студентов
select concat(m.first_name,' ',m.last_name) as full_name,count(c.id) as student_count from mentors m inner join courses c on m.course_id= c.id inner join groups g on c.groups_id=g.id inner join students s on g.id=s.group_id group by m.first_name,m.last_name;
--7 Вывести ментора у которого нет студентов
select m.first_name as mentor, s.first_name as students from mentors m inner join courses c on m.course_id= c.id inner join groups g on c.groups_id=g.id inner join students s on g.id=s.group_id where s.email  like' ';
--8 Вывести ментора у которого студентов больше чем 2
select m.first_name as mentor_name,count(s.id) as student_count from  mentors m inner join courses c on m.course_id= c.id inner join groups g on c.groups_id=g.id inner join students s on g.id=s.group_id group by m.first_name having count(s.*)>2;
--9 Вывести курсы ментора с айди 5
select m.id,m.first_name,c.* from courses c inner join  mentors m on c.id=m.course_id where m.id=5;
-- 10.Вывести все уроки ментора, айди которого равен 5
select m.id,m.first_name,l.lesson_name from mentors m inner join courses c on m.course_id=c.id inner join lessons l on c.id=l.course_id where m.id=5;

--lessons
--1 Вывести все уроки
select * from lessons;
--2 Получить все уроки студента, айди которого равен 2
select l.*,s.id,s.first_name from lessons l inner join courses c on l.course_id=c.id inner join groups g on c.groups_id= g.id inner join students s on g.id=s.group_id where  s.id=2;
--3 Посчитать уроки каждой группы и вывести название группы и количество уроков, где количество уроков больше чем 2
select  g.group_name,count(l.*) as lessons_count from lessons l inner join courses c on l.course_id = c.id inner join groups g on c.groups_id=g.id group by g.group_name having count(l.*)<2;
--4 Отсортировать уроки студента по названию, где айди студента равна 7
select l.lesson_name,s.id as student_id,s.first_name as student_name from lessons l inner join courses c on l.course_id= c.id inner join groups g on c.groups_id=g.id inner join students s on g.id=s.group_id where s.id=7 order by l.lesson_name;
--5 Получить все уроки курса, где название курса 'Python kids'
select * from lessons l inner join courses c on l.course_id=c.id where c.course_name like 'Python kids';
--6 Получить все уроки ментора, айди которого равен 5
select m.id,m.first_name,l.* from lessons l inner join courses c on l.course_id=c.id inner join mentors m on c.id=m.course_id where m.id=5;