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
