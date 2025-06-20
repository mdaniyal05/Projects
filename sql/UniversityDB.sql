--Creates UniversityDB Database
CREATE DATABASE UniversityDB;

--Uses UniversityDB Database for queries
USE UniversityDB;

--Denormalized, duplicated and raw data for university combined
CREATE TABLE UniversityData (
	student_ID INT,
	firstName VARCHAR(50),
	lastName VARCHAR(50),
	dateOfBirth DATE,
	gender VARCHAR(8),
	email VARCHAR(50),
	phoneNumber VARCHAR(12),
	currentAddress VARCHAR(60),
	professor_ID INT,
	experienceInYears INT,
	hireDate DATE,
	department_ID INT,
	departmentCode VARCHAR(10),
	departmentName VARCHAR(50),
	course_ID INT,
	courseCode VARCHAR(10),
	courseName VARCHAR(50),
	creditHours INT,
	enrollment_ID INT,
	enrollmentDate DATE,
);

--Inserts the sample data into UniversityData table
INSERT INTO UniversityData (
	student_ID, firstName, lastName, dateOfBirth, gender, email,
	phoneNumber, currentAddress, professor_ID, experienceInYears,
	hireDate, department_ID, departmentCode, departmentName, course_ID,
	courseCode, courseName, creditHours, enrollment_ID, enrollmentDate)
VALUES
	(9901, 'Alice', 'Smith', '2002-08-15', 'Female', 'alice.smith@email.com', '123-456-7890', '123 Main St', 201, 5, '2020-07-20', 101, 'CS', 'Computer Science', 301, 'CS101', 'Intro to Programming', 3, 1001, '2023-09-05'),
	(9902, 'Bob', 'Johnson', '2001-11-20', 'Male', 'bob.johnson@email.com', '987-654-3210', '456 Oak Ave', 202, 10, '2015-03-10', 102, 'ENG', 'English', 302, 'ENGL201', 'American Literature', 4, 1002, '2023-09-06'),
	(9903, 'Charlie', 'Brown', '2003-03-01', 'Male', 'charlie.brown@email.com', '555-123-4567', '789 Pine Ln', 203, 7, '2018-11-01', 101, 'CS', 'Computer Science', 303, 'CS202', 'Data Structures', 3, 1003, '2023-09-07'),
	(9904, 'Diana', 'Miller', '2002-06-10', 'Female', 'diana.miller@email.com', '111-222-3333', '101 Elm Rd', 204, 3, '2022-09-15', 103, 'BIO', 'Biology', 304, 'BIO101', 'General Biology', 4, 1004, '2023-09-08'),
	(9905, 'Ethan', 'Davis', '2001-09-25', 'Male', 'ethan.davis@email.com', '444-555-6666', '222 Willow Dr', 205, 12, '2013-06-01', 102, 'ENG', 'English', 305, 'ENGL305', 'Shakespeare', 3, 1005, '2023-09-09'),
	(9906, 'Fiona', 'Wilson', '2003-01-12', 'Female', 'fiona.wilson@email.com', '777-888-9999', '333 Maple Ct', 201, 6, '2019-04-25', 104, 'MATH', 'Mathematics', 306, 'MATH210', 'Calculus I', 4, 1006, '2023-09-10'),
	(9907, 'George', 'Moore', '2002-04-05', 'Male', 'george.moore@email.com', '333-999-1111', '444 Cherry Blvd', 202, 9, '2016-08-01', 103, 'BIO', 'Biology', 307, 'BIO202', 'Genetics', 3, 1007, '2023-09-11'),
	(9908, 'Hannah', 'Taylor', '2001-12-18', 'Female', 'hannah.taylor@email.com', '666-222-8888', '555 Oak St', 203, 4, '2021-01-10', 104, 'MATH', 'Mathematics', 308, 'MATH301', 'Linear Algebra', 3, 1008, '2023-09-12'),
	(9909, 'Ian', 'Anderson', '2003-07-22', 'Male', 'ian.anderson@email.com', '999-111-3333', '666 Pine Ave', 204, 11, '2014-05-15', 101, 'CS', 'Computer Science', 309, 'CS310', 'Algorithms', 4, 1009, '2023-09-13'),
	(9910, 'Jane', 'Thomas', '2002-02-28', 'Female', 'jane.thomas@email.com', '222-777-4444', '777 Elm Ln', 205, 2, '2023-10-01', 102, 'ENG', 'English', 310, 'ENGL101', 'Composition', 3, 1010, '2023-09-14'),
	(9911, 'Kevin', 'Jackson', '2001-10-03', 'Male', 'kevin.jackson@email.com', '888-333-5555', '888 Willow Ct', 201, 8, '2017-12-01', 103, 'BIO', 'Biology', 311, 'BIO305', 'Ecology', 4, 1011, '2023-09-15'),
	(9912, 'Laura', 'White', '2003-05-16', 'Female', 'laura.white@email.com', '111-999-6666', '999 Maple Blvd', 202, 1, '2024-02-15', 104, 'MATH', 'Mathematics', 312, 'MATH150', 'Precalculus', 3, 1012, '2023-09-16'),
	(9913, 'Michael', 'Harris', '2002-07-09', 'Male', 'michael.harris@email.com', '444-111-7777', '100 Cherry St', 203, 13, '2012-09-01', 101, 'CS', 'Computer Science', 313, 'CS401', 'Operating Systems', 3, 1013, '2023-09-17'),
	(9914, 'Nancy', 'Martin', '2001-11-29', 'Female', 'nancy.martin@email.com', '777-555-2222', '200 Oak Ave', 204, 4, '2021-06-20', 102, 'ENG', 'English', 314, 'ENGL250', 'Creative Writing', 4, 1014, '2023-09-18'),
	(9915, 'Oliver', 'Clark', '2003-02-11', 'Male', 'oliver.clark@email.com', '333-666-8888', '300 Pine Ln', 205, 9, '2016-11-01', 103, 'BIO', 'Biology', 315, 'BIO150', 'Botany', 3, 1015, '2023-09-19'),
	(9916, 'Patricia', 'Lewis', '2002-05-24', 'Female', 'patricia.lewis@email.com', '666-999-3333', '400 Elm Rd', 201, 7, '2018-03-10', 104, 'MATH', 'Mathematics', 316, 'MATH220', 'Calculus II', 4, 1016, '2023-09-20'),
	(9917, 'Quinn', 'Walker', '2001-09-07', 'Male', 'quinn.walker@email.com', '999-222-4444', '500 Willow Dr', 202, 5, '2020-08-15', 101, 'CS', 'Computer Science', 317, 'CS320', 'Database Systems', 3, 1017, '2023-09-21'),
	(9918, 'Rachel', 'Hall', '2003-01-30', 'Female', 'rachel.hall@email.com', '222-888-5555', '600 Maple Ct', 203, 10, '2015-04-01', 102, 'ENG', 'English', 318, 'ENGL310', 'Modern Poetry', 3, 1018, '2023-09-22'),
	(9919, 'Samuel', 'Young', '2002-04-12', 'Male', 'samuel.young@email.com', '888-444-6666', '700 Cherry Blvd', 204, 3, '2022-11-15', 103, 'BIO', 'Biology', 319, 'BIO210', 'Zoology', 4, 1019, '2023-09-23'),
	(9920, 'Teresa', 'Allen', '2001-12-05', 'Female', 'teresa.allen@email.com', '111-555-7777', '800 Oak St', 205, 12, '2013-07-01', 104, 'MATH', 'Mathematics', 320, 'MATH320', 'Differential Equations', 3, 1020, '2023-09-24'),
	(9921, 'Victor', 'Wright', '2003-07-18', 'Male', 'victor.wright@email.com', '444-777-9999', '900 Pine Ave', 201, 6, '2019-05-20', 101, 'CS', 'Computer Science', 321, 'CS410', 'Artificial Intelligence', 4, 1021, '2023-09-25'),
	(9922, 'Wendy', 'King', '2002-02-21', 'Female', 'wendy.king@email.com', '777-111-3333', '1001 Elm Ln', 202, 8, '2017-01-15', 102, 'ENG', 'English', 322, 'ENGL150', 'Introduction to Literature', 3, 1022, '2023-09-26'),
	(9923, 'Xavier', 'Scott', '2001-10-15', 'Male', 'xavier.scott@email.com', '333-222-4444', '1101 Willow Ct', 203, 1, '2024-03-01', 103, 'BIO', 'Biology', 323, 'BIO310', 'Microbiology', 4, 1023, '2023-09-27'),
	(9924, 'Yara', 'Green', '2003-05-09', 'Female', 'yara.green@email.com', '666-444-5555', '1201 Maple Blvd', 204, 9, '2016-12-10', 104, 'MATH', 'Mathematics', 324, 'MATH180', 'Statistics', 3, 1024, '2023-09-28'),
	(9925, 'Zane', 'Adams', '2002-07-02', 'Male', 'zane.adams@email.com', '999-555-6666', '1301 Cherry St', 205, 4, '2021-07-01', 101, 'CS', 'Computer Science', 325, 'CS250', 'Web Development', 3, 1025, '2023-09-29'),
	(9926, 'Bella', 'Baker', '2001-11-22', 'Female', 'bella.baker@email.com', '222-666-7777', '1401 Oak Ave', 201, 11, '2014-06-15', 102, 'ENG', 'English', 326, 'ENGL280', 'World Literature', 4, 1026, '2023-09-30'),
	(9927, 'Caleb', 'Carter', '2003-03-15', 'Male', 'caleb.carter@email.com', '888-777-1111', '1501 Pine Ln', 202, 2, '2023-11-01', 103, 'BIO', 'Biology', 327, 'BIO401', 'Biochemistry', 3, 1027, '2023-10-01'),
	(9928, 'Daisy', 'Cook', '2002-05-28', 'Female', 'daisy.cook@email.com', '111-888-2222', '1601 Elm Rd', 203, 7, '2018-04-25', 104, 'MATH', 'Mathematics', 328, 'MATH350', 'Probability', 4, 1028, '2023-10-02'),
	(9929, 'Felix', 'Fisher', '2001-09-10', 'Male', 'felix.fisher@email.com', '444-999-3333', '1701 Willow Dr', 204, 5, '2020-09-01', 101, 'CS', 'Computer Science', 329, 'CS150', 'Computer Architecture', 3, 1029, '2023-10-03'),
	(9930, 'Grace', 'Grant', '2003-01-05', 'Female', 'grace.grant@email.com', '777-222-4444', '1801 Maple Ct', 205, 10, '2015-05-15', 102, 'ENG', 'English', 330, 'ENGL350', 'Literary Theory', 3, 1030, '2023-10-04');

--All the tables and data is normalized according to 1NF, 2NF and 3NF below

--Creates Departments table
CREATE TABLE Departments (
	department_ID INT,
	departmentCode VARCHAR(10) NOT NULL UNIQUE,
	departmentName VARCHAR(50) NOT NULL,
	PRIMARY KEY (department_ID),
);

--Creates Professors table
CREATE TABLE Professors (
	professor_ID INT,
	firstName VARCHAR(50) NOT NULL,
	lastName VARCHAR(50) NOT NULL,
	gender VARCHAR(8) NOT NULL,
	email VARCHAR(50) NOT NULL,
	phoneNumber VARCHAR(12) NOT NULL,
	experienceInYears INT NOT NULL CHECK (experienceInYears >= 7),
	hireDate DATE NOT NULL,
	inDepartment INT,
	isHeadOfDepartment BIT,		--1 for HOD and 0 for Not HOD
	PRIMARY KEY (professor_ID),
	FOREIGN KEY (inDepartment) REFERENCES Departments (department_ID),
);

--Creates Students table
CREATE TABLE Students (
	student_ID INT,
	firstName VARCHAR(50) NOT NULL,
	lastName VARCHAR(50) NOT NULL,
	dateOfBirth DATE NOT NULL,
	gender VARCHAR(8) NOT NULL,
	email VARCHAR(50) NOT NULL,
	phoneNumber VARCHAR(12) NOT NULL,
	currentAddress VARCHAR(60) NOT NULL,
	inDepartment INT,
	PRIMARY KEY (student_ID),
	FOREIGN KEY (inDepartment) REFERENCES Departments (department_ID),
);

--Creates Courses table
CREATE TABLE Courses (
	course_ID INT,
	courseCode VARCHAR(10) NOT NULL UNIQUE,
	courseName VARCHAR(50) NOT NULL,
	creditHours INT NOT NULL CHECK (creditHours <= 4 AND creditHours > 0),
	courseOfDepartment INT,
	instructor INT,
	PRIMARY KEY (course_ID),
	FOREIGN KEY (courseOfDepartment) REFERENCES Departments (department_ID),
	FOREIGN KEY (instructor) REFERENCES Professors (professor_ID),
);

--Creates Enrollment table
CREATE TABLE Enrollment (
	enrollmentDate DATE,
	enrolledInCourse INT,
	enrolledStudent INT,
	PRIMARY KEY (enrolledStudent, enrolledInCourse),	--Composite primary key
	FOREIGN KEY (enrolledInCourse) REFERENCES Courses (course_ID),
	FOREIGN KEY (enrolledStudent) REFERENCES Students (student_ID),
);

--Inserts the sample data into Departments table
INSERT INTO Departments (
	department_ID, departmentCode, departmentName)
VALUES
	(101, 'CS', 'Computer Science'),
	(102, 'ENG', 'English'),
	(103, 'BIO', 'Biology'),
	(104, 'MATH', 'Mathematics');

--Inserts the sample data into Professors table
INSERT INTO Professors (
	professor_ID, firstName, lastName, gender, email, phoneNumber,
	experienceInYears, hireDate, inDepartment, isHeadOfDepartment)
VALUES
	(201, 'Alice', 'Smith', 'Female', 'alice.smith@email.com', '123-456-7890', 8, '2020-07-20', 101, 0),
	(202, 'Bob', 'Johnson', 'Male', 'bob.johnson@email.com', '987-654-3210', 10, '2015-03-10', 103, 0),
	(203, 'Charlie', 'Brown', 'Male', 'charlie.brown@email.com', '555-123-4567', 7, '2018-11-01', 102, 0),
	(204, 'Diana', 'Miller', 'Female', 'diana.miller@email.com', '111-222-3333', 9, '2022-09-15', 101, 0),
	(205, 'Ethan', 'Davis', 'Male', 'ethan.davis@email.com', '444-555-6666', 12, '2013-06-01', 104, 1),
	(206, 'Fiona', 'Wilson', 'Female', 'fiona.wilson@email.com', '777-888-9999', 9, '2019-04-25', 104, 0),
	(207, 'George', 'Moore', 'Male', 'george.moore@email.com', '333-999-1111', 11, '2016-08-01', 102, 0),
	(208, 'Hannah', 'Taylor', 'Female', 'hannah.taylor@email.com', '666-222-8888', 13, '2021-01-10', 103, 1),
	(209, 'Ian', 'Anderson', 'Male', 'ian.anderson@email.com', '999-111-3333', 12, '2014-05-15', 102, 1),
	(210, 'Jane', 'Thomas', 'Female', 'jane.thomas@email.com', '222-777-4444', 15, '2023-10-01', 101, 1);

--Inserts the sample data into Students table
INSERT INTO Students (
	student_ID, firstName, lastName, dateOfBirth, gender,
	email, phoneNumber, currentAddress, inDepartment)
VALUES
	(9911, 'Kevin', 'Jackson', '2001-10-03', 'Male', 'kevin.jackson@email.com', '888-333-5555', '888 Willow Ct', 101),
	(9912, 'Laura', 'White', '2003-05-16', 'Female', 'laura.white@email.com', '111-999-6666', '999 Maple Blvd', 102),
	(9913, 'Michael', 'Harris', '2002-07-09', 'Male', 'michael.harris@email.com', '444-111-7777', '100 Cherry St', 103),
	(9914, 'Nancy', 'Martin', '2001-11-29', 'Female', 'nancy.martin@email.com', '777-555-2222', '200 Oak Ave', 104),
	(9915, 'Oliver', 'Clark', '2003-02-11', 'Male', 'oliver.clark@email.com', '333-666-8888', '300 Pine Ln', 104),
	(9916, 'Patricia', 'Lewis', '2002-05-24', 'Female', 'patricia.lewis@email.com', '666-999-3333', '400 Elm Rd', 101),
	(9917, 'Quinn', 'Walker', '2001-09-07', 'Male', 'quinn.walker@email.com', '999-222-4444', '500 Willow Dr', 103),
	(9918, 'Rachel', 'Hall', '2003-01-30', 'Female', 'rachel.hall@email.com', '222-888-5555', '600 Maple Ct', 102),
	(9919, 'Samuel', 'Young', '2002-04-12', 'Male', 'samuel.young@email.com', '888-444-6666', '700 Cherry Blvd', 102),
	(9920, 'Teresa', 'Allen', '2001-12-05', 'Female', 'teresa.allen@email.com', '111-555-7777', '800 Oak St', 102),
	(9921, 'Victor', 'Wright', '2003-07-18', 'Male', 'victor.wright@email.com', '444-777-9999', '900 Pine Ave', 101),
	(9922, 'Wendy', 'King', '2002-02-21', 'Female', 'wendy.king@email.com', '777-111-3333', '1001 Elm Ln', 101),
	(9923, 'Xavier', 'Scott', '2001-10-15', 'Male', 'xavier.scott@email.com', '333-222-4444', '1101 Willow Ct', 101),
	(9924, 'Yara', 'Green', '2003-05-09', 'Female', 'yara.green@email.com', '666-444-5555', '1201 Maple Blvd', 104),
	(9925, 'Zane', 'Adams', '2002-07-02', 'Male', 'zane.adams@email.com', '999-555-6666', '1301 Cherry St', 103),
	(9926, 'Bella', 'Baker', '2001-11-22', 'Female', 'bella.baker@email.com', '222-666-7777', '1401 Oak Ave', 102),
	(9927, 'Caleb', 'Carter', '2003-03-15', 'Male', 'caleb.carter@email.com', '888-777-1111', '1501 Pine Ln', 101),
	(9928, 'Daisy', 'Cook', '2002-05-28', 'Female', 'daisy.cook@email.com', '111-888-2222', '1601 Elm Rd', 101),
	(9929, 'Felix', 'Fisher', '2001-09-10', 'Male', 'felix.fisher@email.com', '444-999-3333', '1701 Willow Dr', 102),
	(9930, 'Grace', 'Grant', '2003-01-05', 'Female', 'grace.grant@email.com', '777-222-4444', '1801 Maple Ct', 104);

--Inserts the sample data into Courses table
INSERT INTO Courses (
	course_ID, courseCode, courseName,
	creditHours, courseOfDepartment, instructor)
VALUES
	(301, 'CS101', 'Intro to Programming', 3, 101, 210),
	(302, 'ENGL201', 'American Literature', 4, 102, 203),
	(303, 'CS202', 'Data Structures', 3, 101, 201),
	(304, 'BIO101', 'General Biology', 4, 103, 208),
	(305, 'ENGL305', 'Shakespeare', 3, 102, 207),
	(306, 'MATH210', 'Calculus I', 4, 104, 205),
	(307, 'BIO202', 'Genetics', 3, 103, 202),
	(308, 'MATH301', 'Linear Algebra', 3, 104, 206),
	(309, 'CS310', 'Algorithms', 4, 101, 204),
	(310, 'ENGL101', 'Composition', 3, 102, 209),
	(311, 'BIO305', 'Ecology', 4, 103, 202),
	(312, 'MATH150', 'Precalculus', 3, 104, 205),
	(313, 'CS401', 'Operating Systems', 3, 101, 204),
	(314, 'ENGL250', 'Creative Writing', 4, 102, 207),
	(315, 'BIO150', 'Botany', 3, 103, 208),
	(316, 'MATH220', 'Calculus II', 4, 104, 206);

--Inserts the sample data into Enrollment table
INSERT INTO Enrollment
	(enrollmentDate, enrolledInCourse, enrolledStudent)
VALUES
	('2023-09-05', 316, 9911),
	('2023-09-06', 315, 9912),
	('2023-09-07', 314, 9913),
	('2023-09-08', 313, 9914),
	('2023-09-09', 312, 9915),
	('2023-09-10', 311, 9916),
	('2023-09-11', 310, 9917),
	('2023-09-12', 301, 9929),
	('2023-09-13', 302, 9928),
	('2023-09-14', 303, 9927),
	('2023-09-15', 304, 9926),
	('2023-09-16', 305, 9925),
	('2023-09-17', 306, 9924),
	('2023-09-18', 307, 9918),
	('2023-09-19', 308, 9919),
	('2023-09-20', 309, 9920);

--Selects all data from UniversityData, Departments, Professors, Students, Courses and Enrollment table
SELECT * FROM UniversityData;
SELECT * FROM Departments;
SELECT * FROM Professors;
SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM Enrollment;

--It displays the table with combination of first name and last name with professor_ID and student_ID
SELECT professor_ID, CONCAT(firstName, ' ', lastName) AS [fullName] FROM Professors;
SELECT student_ID, CONCAT(firstName, ' ', lastName) AS [fullName] FROM Students;

--Updates the record with ID 309 courseName from Algorithms to Theory of Automata
UPDATE Courses
SET courseName = 'Theory of Automata'
WHERE course_ID = 309;

--Updates the record date of enrolledStudent 9912
UPDATE Enrollment
SET enrollmentDate = '2023-10-01'
WHERE enrolledStudent = 9912;

--Deletes the student enrolled with ID 9919 from Enrollment table
DELETE FROM Enrollment
WHERE enrolledStudent = 9919;

--Deletes all the records from the Students table
DELETE FROM Students;


--TEST CASES

--Valid Data Insertion
--Verify that a new, valid student can be successfully inserted into the `Students` table.
INSERT INTO Students (student_ID, firstName, lastName, dateOfBirth, gender, email, phoneNumber, currentAddress, inDepartment)
VALUES (9931, 'Test', 'Student', '2004-01-01', 'Other', 'test.student@email.com', '123-456-7891', '1 Test St', 101);
SELECT * FROM Students WHERE student_ID = 9931;

--Duplicate Code Rejection
--Ensure that the `UNIQUE` constraint on `departmentCode` in the `Departments` table is enforced.
INSERT INTO Departments (department_ID, departmentCode, departmentName)
VALUES (105, 'CS', 'Duplicate Department');

--Invalid Credit Hours
--Check that the `CHECK` constraint on `creditHours` in the `Courses` table is enforced.
INSERT INTO Courses (course_ID, courseCode, courseName, creditHours, courseOfDepartment, instructor)
VALUES (331, 'CS999', 'Invalid Credits', 5, 101, 201);

--Foreign Key Violation (Invalid Department)
--Verify that the foreign key constraint on `inDepartment` in the `Students` table is enforced.
INSERT INTO Students (student_ID, firstName, lastName, dateOfBirth, gender, email, phoneNumber, currentAddress, inDepartment)
VALUES (9932, 'Bad', 'Student', '2004-01-01', 'Other', 'bad.student@email.com', '123-456-7892', '1 Bad St', 999);

--Enrollment with Non-Existent Student/Course
--Test the foreign key constraints in the `Enrollment` table.
INSERT INTO Enrollment (enrollmentDate, enrolledInCourse, enrolledStudent)
VALUES ('2024-01-01', 999, 9911);
INSERT INTO Enrollment (enrollmentDate, enrolledInCourse, enrolledStudent)
VALUES ('2024-01-01', 301, 9999);

--Professor with Invalid Experience
--Verify the `CHECK` constraint on `experienceInYears` in the `Professors` table.
INSERT INTO Professors (professor_ID, firstName, lastName, gender, email, phoneNumber, experienceInYears, hireDate, inDepartment, isHeadOfDepartment)
VALUES (211, 'Young', 'Professor', 'Male', 'young.prof@email.com', '111-222-3333', 6, '2024-01-01', 101, 0);

--Update Department Code
--Test updating a department's code.
UPDATE Departments
SET departmentCode = 'IT'
WHERE department_ID = 101;
SELECT * FROM Departments WHERE department_ID = 101;

--Delete a Department with Existing Foreign Key References
--Check the behavior when deleting a department that has associated students, professors, or courses.
DELETE FROM Departments
WHERE department_ID = 101;
SELECT * FROM Departments WHERE department_ID = 101;
SELECT * FROM Students WHERE inDepartment = 101;

--Querying Student and Department Information
--Test joining tables to retrieve related data.
SELECT s.firstName, s.lastName, d.departmentName
FROM Students s
JOIN Departments d ON s.inDepartment = d.department_ID;

--Modifying Enrollment Data
--Test updating and deleting records in the `Enrollment` table.
UPDATE Enrollment
SET enrollmentDate = '2024-02-01'
WHERE enrolledStudent = 9911 AND enrolledInCourse = 316;
SELECT * FROM Enrollment WHERE enrolledStudent = 9911 AND enrolledInCourse = 316;


-- Aggregate Functions and Grouping

-- Add GPA column
ALTER TABLE Students
ADD GPA DECIMAL(3, 2);
GO

-- Set Student GPAs
UPDATE Students SET GPA = 3.8 WHERE student_ID = 9911;
UPDATE Students SET GPA = 3.9 WHERE student_ID = 9912;
UPDATE Students SET GPA = 3.7 WHERE student_ID = 9913;
UPDATE Students SET GPA = 3.6 WHERE student_ID = 9914;
UPDATE Students SET GPA = 3.5 WHERE student_ID = 9915;
UPDATE Students SET GPA = 3.4 WHERE student_ID = 9916;
UPDATE Students SET GPA = 3.3 WHERE student_ID = 9917;
UPDATE Students SET GPA = 3.3 WHERE student_ID = 9918;
UPDATE Students SET GPA = 3.2 WHERE student_ID = 9919;
UPDATE Students SET GPA = 3.1 WHERE student_ID = 9920;
UPDATE Students SET GPA = 3.0 WHERE student_ID = 9921;
UPDATE Students SET GPA = 2.5 WHERE student_ID = 9922;
UPDATE Students SET GPA = 2.6 WHERE student_ID = 9923;
UPDATE Students SET GPA = 2.7 WHERE student_ID = 9924;
UPDATE Students SET GPA = 2.8 WHERE student_ID = 9925;
UPDATE Students SET GPA = 2.1 WHERE student_ID = 9926;
UPDATE Students SET GPA = 2.2 WHERE student_ID = 9927;
UPDATE Students SET GPA = 2.3 WHERE student_ID = 9928;
UPDATE Students SET GPA = 2.4 WHERE student_ID = 9929;
UPDATE Students SET GPA = 2.5 WHERE student_ID = 9930;
GO

-- Average GPA per Department
SELECT
    D.departmentName,
    AVG(S.GPA) AS AverageGPA
FROM
    Students AS S
JOIN
    Departments AS D ON S.inDepartment = D.department_ID
GROUP BY
    D.departmentName;
GO

-- Departments with more than 5 Students (No records are shown with 10)
SELECT
    D.departmentName,
    COUNT(S.student_ID) AS NumberOfStudents
FROM
    Students AS S
JOIN
    Departments AS D ON S.inDepartment = D.department_ID
GROUP BY
    D.departmentName
HAVING
    COUNT(S.student_ID) > 5;
GO



-- Joins

-- Left Join to get all multi table data of all students, their enrolled courses and the professor teaching the course. NULL for those students who are not enrolled.
SELECT
    S.student_ID,
    S.firstName AS StudentFirstName,
    S.lastName AS StudentLastName,
    C.courseCode,
    C.courseName,
    P.firstName AS ProfessorFirstName,
    P.lastName AS ProfessorLastName
FROM
    Students AS S
LEFT JOIN
    Enrollment AS E ON S.student_ID = E.enrolledStudent
LEFT JOIN
    Courses AS C ON E.enrolledInCourse = C.course_ID
LEFT JOIN
    Professors AS P ON C.instructor = P.professor_ID;
GO



-- Subqueries and Nested Queries

-- Query using Correlated Subquery
SELECT
    S.firstName,
    S.lastName,
    S.GPA,
    D.departmentName
FROM
    Students AS S
JOIN
    Departments AS D ON S.inDepartment = D.department_ID
WHERE
    S.GPA > (SELECT AVG(S2.GPA)
             FROM Students AS S2
             WHERE S2.inDepartment = S.inDepartment);
GO

-- Query using a Nested Query
WITH DepartmentAverageGPAs AS (
    SELECT
        inDepartment,
        AVG(GPA) AS AverageDepartmentGPA
    FROM
        Students
    GROUP BY
        inDepartment
)
SELECT
    S.firstName,
    S.lastName,
    S.GPA,
    D.departmentName,
    DAG.AverageDepartmentGPA
FROM
    Students AS S
JOIN
    Departments AS D ON S.inDepartment = D.department_ID
JOIN
    DepartmentAverageGPAs AS DAG ON S.inDepartment = DAG.inDepartment
WHERE
    S.GPA > DAG.AverageDepartmentGPA;
GO



-- Stored Procedures and Triggers

-- Create the table to store audit information for courses
CREATE TABLE CourseAudit (
    AuditID INT IDENTITY(1,1) PRIMARY KEY,
    CourseID INT,
    CourseCode VARCHAR(10),
    CourseName VARCHAR(50),
    ActionType VARCHAR(10) DEFAULT 'INSERT',
    ChangeTimestamp DATETIME DEFAULT GETDATE(),
    ChangedBy VARCHAR(128) DEFAULT SUSER_SNAME()
);
GO

-- Create the trigger
CREATE TRIGGER trg_Course_InsertAudit
ON Courses
AFTER INSERT
AS
BEGIN
    INSERT INTO CourseAudit (
        CourseID,
        CourseCode,
        CourseName
    )
    SELECT
        I.course_ID,
        I.courseCode,
        I.courseName
    FROM
        INSERTED AS I;
END;
GO

INSERT INTO Courses (course_ID, courseCode, courseName, creditHours, courseOfDepartment, instructor)
VALUES (332, 'TS101', 'Intro to TypeScript', 3, 101, 210);
GO

SELECT * FROM CourseAudit;
GO

-- Create the stored procedure
CREATE PROCEDURE sp_GetProfessorCourseEnrollment
    @professor_id INT
AS
BEGIN
    SELECT
        C.courseCode,
        C.courseName,
        C.creditHours,
        COUNT(E.enrolledStudent) AS EnrollmentCount
    FROM
        Professors AS P
    JOIN
        Courses AS C ON P.professor_ID = C.instructor
    LEFT JOIN
        Enrollment AS E ON C.course_ID = E.enrolledInCourse
    WHERE
        P.professor_ID = @professor_id
    GROUP BY
        C.courseCode, C.courseName, C.creditHours;
END;
GO

EXEC sp_GetProfessorCourseEnrollment @professor_id = 201;
EXEC sp_GetProfessorCourseEnrollment @professor_id = 205;
GO



-- Indexing

-- Measure their performance improvement
SET STATISTICS IO ON;
GO

SELECT *
FROM Enrollment
WHERE enrolledInCourse = 316;
GO

-- Create Non clustered indexing
CREATE NONCLUSTERED INDEX IX_Enrollment_CourseID
ON Enrollment (enrolledInCourse);
GO

SELECT *
FROM Enrollment
WHERE enrolledInCourse = 316;
GO



-- Transactions and Rollbacks

-- Add new column in students table
ALTER TABLE Students
ADD availableCreditLoad INT;
GO

-- Sample record
UPDATE Students SET availableCreditLoad = 12;
GO

-- Add new column in courses table
ALTER TABLE Courses
ADD seatsAvailable INT;
GO

-- Sample record
UPDATE Courses SET seatsAvailable = 5 WHERE course_ID = 301;
UPDATE Courses SET seatsAvailable = 0 WHERE course_ID = 303;
GO

-- For Success
BEGIN TRANSACTION;

DECLARE @studentId INT = 9928;
DECLARE @courseId INT = 301;
DECLARE @creditHours INT;

SELECT @creditHours = creditHours FROM Courses WHERE course_ID = @courseId;

IF EXISTS (
    SELECT 1
    FROM Students S
    JOIN Courses C ON C.course_ID = @courseId
    WHERE S.student_ID = @studentId
      AND S.availableCreditLoad >= C.creditHours
      AND C.seatsAvailable > 0
)
BEGIN
    UPDATE Students
    SET availableCreditLoad = availableCreditLoad - @creditHours
    WHERE student_ID = @studentId;

    UPDATE Courses
    SET seatsAvailable = seatsAvailable - 1
    WHERE course_ID = @courseId;

    INSERT INTO Enrollment (enrollmentDate, enrolledInCourse, enrolledStudent)
    VALUES (GETDATE(), @courseId, @studentId);

    COMMIT;
    PRINT 'Registration successful.';
END
ELSE
BEGIN
    ROLLBACK;
    PRINT 'Registration failed. Insufficient load or course is full.';
END
GO

-- For Failure
BEGIN TRANSACTION;

DECLARE @studentIdFail INT = 9930;
DECLARE @courseIdFail INT = 303;
DECLARE @creditHoursFail INT;

SELECT @creditHoursFail = creditHours FROM Courses WHERE course_ID = @courseIdFail;

IF EXISTS (
    SELECT 1
    FROM Students S
    JOIN Courses C ON C.course_ID = @courseIdFail
    WHERE S.student_ID = @studentIdFail
      AND S.availableCreditLoad >= C.creditHours
      AND C.seatsAvailable > 0
)
BEGIN
    UPDATE Students
    SET availableCreditLoad = availableCreditLoad - @creditHoursFail
    WHERE student_ID = @studentIdFail;

    UPDATE Courses
    SET seatsAvailable = seatsAvailable - 1
    WHERE course_ID = @courseIdFail;

    INSERT INTO Enrollment (enrollmentDate, enrolledInCourse, enrolledStudent)
    VALUES (GETDATE(), @courseIdFail, @studentIdFail);

    COMMIT;
    PRINT 'Registration successful.';
END
ELSE
BEGIN
    ROLLBACK;
    PRINT 'Registration failed. Insufficient load or course is full.';
END
GO


SELECT student_ID, availableCreditLoad FROM Students WHERE student_ID = 9930;
SELECT course_ID, seatsAvailable FROM Courses WHERE course_ID IN (301, 303);
SELECT * FROM Enrollment WHERE enrolledStudent = 9930;
GO
