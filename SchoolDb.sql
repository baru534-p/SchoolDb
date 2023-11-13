create Database SchoolDB 
use SchoolDB
--Subject Table
Create Table Subjects 
(
 subjectId int primary key Identity (1,1),
 subjectName varchar(50),
 TeacherName varchar(50)
)
INSERT INTO Subjects
VALUES
 ( 'Biology','Aruna'),
 ( 'Physics','Priya'),
 ( 'Social','Subramanyam'),
 ( 'General Knowledge','Bhargavi'),
 ( 'Telugu','Sujatha')
--Classes Table
Create Table Classes 
(
 ClassId int primary key Identity (1,1),
 ClassName varchar(50),
 ClassFloor int
)
INSERT INTO Classes 
VALUES
 ('Class 1',0),
 ('Class 2',0),
 ('Class 3',1),
 ('Class 4',1),
 ('Class 5',2),
 ('Class 6',2),
 ('Class 7',2)
--Student Table
create Table Student
(
 RollNo int primary key Identity (1,1),
 studentName varchar(50),
 classId int foreign key references Classes(ClassId),
 subjectId int foreign key references Subjects(subjectId) 
)
INSERT into Student 
Values 
('Vasu',3,1),
('pushpa',1,4),
('Bhargavi',2,3),
('Durga',4,1),
('indu',7,5),
('pallavi',5,3),
('chelsy',6,4),
('kalyani',7,2)
--printing Values
select * from Subjects
select * from Classes
select * from Student