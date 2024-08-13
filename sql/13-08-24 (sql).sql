show databases;
use abesit;
show tables;
----create table-----
create table student(student_name varchar(10),Roll_no int(10), marks_1 int(3), marks_2 int(3));
----insert value----
insert into student values('ram',1,34,56);
insert into student values('vijay',2,38,54);
insert into student values('vinay',3,78,69);
insert into student values('rajal',4,67,47);
show tables;

-----operators----
select * from student where Roll_no=2 and marks_1=38;   #and operator
select * from student where Roll_no=4 or marks_1=38;    #or operator
select * from student where not Roll_no=4 ;             #not operator
select * from student where Roll_no in (1,2,3,4) ;       #in operator
select * from student where Roll_no Between  2 and 4;   #Between operator
select * from student where marks_1 like '3%';          #like operator
select * from student where marks_1 like '3%8';
select * from student where marks_1 like '_8';
select * from student where marks_1 like '3_';
select * from student where student_name like '_a%l';
select * from student limit 2;                         #limit
select distinct student_name from student;             #distinct
 select * from customer where student_name like '_a%';
 
 --------aggregate function-----
 select sum(marks_1) from student          #sum
 select max(marks_1) from student          #max
 select min(marks_1) from student         #min
 select avg(marks_1) from student          #avg
select count(marks_1) from student         #count


------order by ------
select * from student order by marks_1;          #order by (by default ascending)
select * from student order by marks_1 desc;
