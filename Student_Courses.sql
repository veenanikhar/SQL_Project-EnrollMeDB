CREATE DATABASE `ACADEMIC_YEAR_2024`;

SHOW DATABASES;

#CREATE DATABASE
USE `ACADEMIC_YEAR_2024`;

#CREATE TABLE 
CREATE TABLE `Students`(
    `id` bigint PRIMARY KEY AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    `AGE` int NOT NULL,
    `phone` int NOT NULL
);

CREATE TABLE Courses(
    `id` bigint PRIMARY KEY AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    `Price` int
);

show tables;

CREATE TABLE `StudentCourses`(
    `StudentId` bigint NOT NULL,
    `CourseId` bigint NOT NULL
);

ALTER TABLE `StudentCourses` 
ADD FOREIGN KEY (StudentId)
REFERENCES Students(id);

ALTER TABLE `StudentCourses` 
ADD FOREIGN KEY (CourseId)
REFERENCES Courses(id);

desc `StudentCourses`;

#Inserting data
INSERT INTO `Students` (`name`, `age`, `phone`) VALUES('Tia','32','989829323');
INSERT INTO `Students` (`name`, `age`, `phone`) VALUES('Yush','34','829329323');
INSERT INTO `Students` (`name`, `age`, `phone`) VALUES('Prachi','32','239392323');

#Display Students
SELECT * FROM `Students`;

INSERT INTO `Courses` (`Name`, `Price`) VALUES ('AI-ML','30000');
INSERT INTO `Courses` (`Name`, `Price`) VALUES ('Full Stack Java Development','40000');
INSERT INTO `Courses` (`Name`, `Price`) VALUES ('Automation Testing','25000');

#Display Courses
SELECT * FROM Courses;

INSERT INTO `StudentCourses` (`StudentId`, `CourseId`) VALUES ('1','1');
INSERT INTO `StudentCourses` (`StudentId`, `CourseId`) VALUES ('2','1');
INSERT INTO `StudentCourses` (`StudentId`, `CourseId`) VALUES ('3','2');

SELECT * FROM `StudentCourses`;

#Retrieve all students 
SELECT * FROM Students;

#Retrieve all Courses
SELECT * FROM Courses;

#Retrieve all student-course mappings 
SELECT * FROM StudentCourses;

#Retrieve students enrolled in a specific course 
SELECT Students.* FROM Students JOIN StudentCourses ON Students.id = StudentCourses.StudentId WHERE StudentCourses.CourseId = 2;

#Enroll a student in a course 
INSERT INTO StudentCourses (StudentId, CourseId) VALUES (2, 3);

#Retrieve students who are not enrolled in any course
SELECT Students.*
FROM Students
LEFT JOIN StudentCourses ON Students.id = StudentCourses.StudentId
WHERE StudentCourses.StudentId IS NULL;

#Update student information
UPDATE Students SET name = 'Tina' WHERE id = 1;

#Delete a student
DELETE FROM Students WHERE id = 2;