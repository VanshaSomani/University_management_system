-- -- Create Students Table
-- CREATE TABLE Students (
--     StudentID SERIAL PRIMARY KEY,
--     StudentName VARCHAR(100) NOT NULL,
--     DateOfBirth DATE NOT NULL,
--     Gender VARCHAR(10) CHECK (Gender IN ('Male', 'Female', 'Other')),
--     EnrollmentDate DATE NOT NULL,
--     Major VARCHAR(100) NOT NULL
-- );

-- -- Create Courses Table
-- CREATE TABLE Courses (
--     CourseID SERIAL PRIMARY KEY,
--     CourseName VARCHAR(100) NOT NULL,
--     Department VARCHAR(100) NOT NULL,
--     Credits INT CHECK (Credits > 0)
-- );

-- -- Create Professors Table
-- CREATE TABLE Professors (
--     ProfessorID SERIAL PRIMARY KEY,
--     ProfessorName VARCHAR(100) NOT NULL,
--     Department VARCHAR(100) NOT NULL
-- );

-- -- Create Enrollments Table
-- CREATE TABLE Enrollments (
--     EnrollmentID SERIAL PRIMARY KEY,
--     StudentID INT NOT NULL,
--     CourseID INT NOT NULL,
--     EnrollmentDate DATE NOT NULL,
--     FOREIGN KEY (StudentID) REFERENCES Students(StudentID) ON DELETE CASCADE,
--     FOREIGN KEY (CourseID) REFERENCES Courses(CourseID) ON DELETE CASCADE
-- );

-- -- Create Grades Table
-- CREATE TABLE Grades (
--     GradeID SERIAL PRIMARY KEY,
--     StudentID INT NOT NULL,
--     CourseID INT NOT NULL,
--     Grade VARCHAR(2) CHECK (Grade IN ('A', 'B', 'C', 'D', 'F')),
--     Semester VARCHAR(10) NOT NULL,
--     FOREIGN KEY (StudentID) REFERENCES Students(StudentID) ON DELETE CASCADE,
--     FOREIGN KEY (CourseID) REFERENCES Courses(CourseID) ON DELETE CASCADE
-- );

-- -- Create Departments Table
-- CREATE TABLE Departments (
--     DepartmentID SERIAL PRIMARY KEY,
--     DepartmentName VARCHAR(100) UNIQUE NOT NULL,
--     Dean VARCHAR(100) NOT NULL
-- );

-- -- Create Attendance Table
-- CREATE TABLE Attendance (
--     AttendanceID SERIAL PRIMARY KEY,
--     StudentID INT NOT NULL,
--     CourseID INT NOT NULL,
--     Date DATE NOT NULL,
--     Status VARCHAR(10) CHECK (Status IN ('Present', 'Absent')),
--     FOREIGN KEY (StudentID) REFERENCES Students(StudentID) ON DELETE CASCADE,
--     FOREIGN KEY (CourseID) REFERENCES Courses(CourseID) ON DELETE CASCADE
-- );

INSERT INTO Students (StudentName, DateOfBirth, Gender, EnrollmentDate, Major) VALUES
('Jeni', '2002-06-15', 'Female', '2023-08-01', 'Computer Science'),
('Jay', '2001-04-20', 'Male', '2022-07-15', 'Electrical Engineering'),
('Abhay', '2003-01-10', 'Male', '2024-01-10', 'Mechanical Engineering'),
('Vansh', '2002-09-05', 'Male', '2023-08-10', 'Civil Engineering'),
('Tanay', '2001-12-22', 'Male', '2022-06-20', 'Information Technology'),
('Kedar', '2000-03-18', 'Male', '2021-09-01', 'Physics'),
('Sanjay', '1999-11-30', 'Male', '2020-08-05', 'Mathematics'),
('Rushi', '2002-07-25', 'Male', '2023-08-01', 'Computer Science');

INSERT INTO Courses (CourseName, Department, Credits) VALUES
('Database Systems', 'Computer Science', 3),
('Circuit Analysis', 'Electrical Engineering', 4),
('Thermodynamics', 'Mechanical Engineering', 3),
('Structural Design', 'Civil Engineering', 4),
('Data Structures', 'Information Technology', 3),
('Quantum Mechanics', 'Physics', 4),
('Linear Algebra', 'Mathematics', 3),
('Operating Systems', 'Computer Science', 3);

INSERT INTO Professors (ProfessorName, Department) VALUES
('Dr. Alice Brown', 'Computer Science'),
('Dr. Robert Smith', 'Electrical Engineering'),
('Dr. David Johnson', 'Mechanical Engineering'),
('Dr. Emily Carter', 'Civil Engineering'),
('Dr. Michael White', 'Information Technology'),
('Dr. Sarah Green', 'Physics'),
('Dr. Daniel Black', 'Mathematics');

INSERT INTO Enrollments (StudentID, CourseID, EnrollmentDate) VALUES
(1, 1, '2024-01-10'),
(2, 2, '2023-09-15'),
(3, 3, '2024-02-01'),
(4, 4, '2023-08-20'),
(5, 5, '2022-07-12'),
(6, 6, '2021-10-05'),
(7, 7, '2020-08-10'),
(8, 8, '2023-09-01');

INSERT INTO Grades (StudentID, CourseID, Grade, Semester) VALUES
(1, 1, 'A', 'S2023'),
(2, 2, 'B', 'S2023'),
(3, 3, 'A', 'S2022'),
(4, 4, 'C', 'S2024'),
(5, 5, 'B', 'W2023'),
(6, 6, 'A', 'W2021'),
(7, 7, 'B', 'S2020'),
(8, 8, 'A', 'S2024');


INSERT INTO Departments (DepartmentName, Dean) VALUES
('Computer Science', 'Dr. Emily Carter'),
('Electrical Engineering', 'Dr. Robert Smith'),
('Mechanical Engineering', 'Dr. David Johnson'),
('Civil Engineering', 'Dr. Emily Carter'),
('Information Technology', 'Dr. Michael White'),
('Physics', 'Dr. Sarah Green'),
('Mathematics', 'Dr. Daniel Black');

INSERT INTO Attendance (StudentID, CourseID, Date, Status) VALUES
(1, 1, '2024-02-10', 'Present'),
(2, 2, '2024-02-11', 'Absent'),
(3, 3, '2024-02-12', 'Present'),
(4, 4, '2024-02-13', 'Present'),
(5, 5, '2024-02-14', 'Absent'),
(6, 6, '2024-02-15', 'Present'),
(7, 7, '2024-02-16', 'Absent'),
(8, 8, '2024-02-17', 'Present');

INSERT INTO Grades (StudentID, CourseID, Grade, Semester) VALUES
(2, 3, 'F', 'W2023'),
(2, 5, 'F', 'S2024'),
(4, 1, 'F', 'W2022'),
(4, 6, 'F', 'S2023');

INSERT INTO Students (StudentName, DateOfBirth, Gender, EnrollmentDate, Major) VALUES
-- (1, 'Jeni', '2002-05-15', 'Female', '2021-08-01', 'Computer Science'),
('Jeni', '2002-05-15', 'Female', '2021-08-01', 'Data Science'), -- Changed major

-- (2, 'Jay', '2001-07-10', 'Male', '2020-08-15', 'Mathematics'),
('Jay', '2001-07-10', 'Male', '2020-08-15', 'Statistics'), -- Changed major

-- (3, 'Abhay', '2000-12-20', 'Male', '2019-08-20', 'Physics'),
('Abhay', '2000-12-20', 'Male', '2019-08-20', 'Astronomy'), -- Changed major

-- (4, 'Vansh', '2003-03-25', 'Male', '2022-08-10', 'Mechanical Engineering'),
('Vansh', '2003-03-25', 'Male', '2022-08-10', 'Civil Engineering'); -- Changed major

INSERT INTO Courses (CourseName, Department, Credits) VALUES
('Database Systems', 'Computer Science', 3);

INSERT INTO Enrollments (StudentId , CourseID, EnrollmentDate) VALUES
(1, 1, '2023-08-01'),
(2, 1, '2023-08-01'),
(3, 1, '2023-08-01'),
(4, 1, '2023-08-01');

INSERT INTO Grades (StudentID, CourseID, Grade, Semester) VALUES
(1, 1, 'A', 'W2023'),
(2, 1, 'B', 'W2023');
select * from enrollments;