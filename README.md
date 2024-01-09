# Project Name
EnrollMeDB

## Overview
A relational database project managing student information, course details, and enrollments with tables for Students, Courses, and StudentCourses.

## Tables
### Students

- **id**: bigint, primary key, auto-increment
- **name**: varchar(255), not null
- **AGE**: int, not null
- **phone**: int, not null

### Courses

- **id**: bigint, primary key, auto-increment
- **name**: varchar(255), not null
- **Price**: int

### StudentCourses

- **StudentId**: bigint, foreign key (references Students.id), not null
- **CourseId**: bigint, foreign key (references Courses.id), not null

## Usage

### 1. Database Setup

1.1 Create the necessary database tables by executing the SQL script provided in `Student_Courses.sql`.

1.2 Establish foreign key relationships by executing the SQL script provided in `Student_Courses.sql`.

### 2. Common Queries and Operations

2.1 Retrieve all students:
SELECT * FROM Students;

2.2 Retrieve all courses:
SELECT * FROM Courses;

2.3 Retrieve all student-course mappings:
SELECT * FROM StudentCourses;

2.4 Retrieve students enrolled in a specific course
SELECT Students.*
FROM Students
JOIN StudentCourses ON Students.id = StudentCourses.StudentId
WHERE StudentCourses.CourseId = 2;

2.5 Enroll a student in a course
INSERT INTO StudentCourses (StudentId, CourseId) VALUES (2, 3);

### 3. Advanced Queries

3.1 Retrieve students who are not enrolled in any course:
SELECT Students.*
FROM Students
LEFT JOIN StudentCourses ON Students.id = StudentCourses.StudentId
WHERE StudentCourses.StudentId IS NULL;

3.2 Update student information
UPDATE Students SET name = 'Tina' WHERE id = 1;

3.3 Delete a student
DELETE FROM Students WHERE id = 2;


