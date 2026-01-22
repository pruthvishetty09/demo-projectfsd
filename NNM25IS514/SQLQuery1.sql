create database student_514
use student_514
create table student_base_table
(USN varchar(15) primary key,
Name varchar(20),
Branch varchar(10),
Section char(1),
Email_ID char(20),
Mobile_No decimal(10)
);

drop table student_base_table;

 select * from student_base_table

 create table student_marks_table
 (MUSN varchar(15) references student_base_table(USN),
 Exam_name varchar(10),
 Marks1 decimal(6,2),
 Marks2 decimal (6,2),
 Marks3 decimal (6,2),
 Total decimal (6,2),
 Average decimal (6,2),
 Result varchar (10)
 );

 select *from student_marks_table 

 insert into student_base_table values('NNM25IS100','Shekar','ISE','D','nnm25is100@nmamit.in',1234567890);
 insert into student_base_table values('NNM25IS101','Shankar','ISE','D','nnm25is101@nmamit.in',1224567890);
 insert into student_base_table values('NNM25IS102','Shekh','ISE','D','nnm25is102@nmamit.in',1233456789);
 insert into student_base_table values('NNM25IS103','Sheku','ISE','D','nnm25is103@nmamit.in',1223456780);

 update student_marks_table set Exam_name='MSE' where MUSN='NNM25IS101'


 insert into student_marks_table values ('NNM25IS100','MSE-1',16,18,15,NUll,0,NULL);
 insert into student_marks_table values ('NNM25IS101','MSE-1',18,16,19,NUll,0,NULL);
 insert into student_marks_table values ('NNM25IS102','MSE-1',17,16,18,NUll,0,NULL);
 insert into student_marks_table values ('NNM25IS103','MSE-1',15,18,16,NUll,0,NULL);

  update student_marks_table set Exam_name='MSE' where MUSN='NNM25IS101'

  delete from student_marks_table where MUSN='NNM25IS100'

  select USN,Name,Branch from student_base_table 