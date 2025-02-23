-- 1
-- select c.courseid , c.coursename , round(avg(
-- case
-- 	when g.grade = 'A' then 4
-- 	when g.grade = 'B' then 3
-- 	when g.grade = 'C' then 2
-- 	when g.grade = 'D' then 1
-- 	when g.grade = 'E' then 0
-- end
-- ),3) as avg_grade_per_couse
-- from grades as g
-- join courses as c on c.courseid = g.courseid
-- group by c.courseid , c.coursename;

-- 2
-- select c.courseid , c.coursename , round(avg(
-- case
-- 	when g.grade = 'A' then 4
-- 	when g.grade = 'B' then 3
-- 	when g.grade = 'C' then 2
-- 	when g.grade = 'D' then 1
-- 	when g.grade = 'E' then 0
-- end
-- ),3) as avg_grade_per_couse
-- from grades as g
-- join courses as c on c.courseid = g.courseid
-- group by c.courseid , c.coursename
-- order by avg_grade_per_couse limit 5;

-- 3
-- select major ,  count(*)
-- from students
-- group by major;

-- 4
-- select c.courseid , c.coursename , count(*) as no_of_student_per_course
-- from enrollments as e
-- join courses as c on c.courseid = e.courseid
-- group by c.courseid , c.coursename;

-- 5

-- 6
-- select p.professorid , p.professorname , count(c.courseid)
-- from courses as c
-- join professors as p on p.department = c.department
-- group by p.professorid , p.professorname;


-- 7
-- select s.studentid , s.studentname , count(g.grade)
-- from students as s
-- join grades as g on s.studentid = g.studentid
-- where g.grade = 'F'
-- group by s.studentid , s.studentname
-- having count(g.grade) > 1;

-- 8
-- select semester , round(avg(
-- case
-- 	when grade = 'A' then 4
-- 	when grade = 'B' then 3
-- 	when grade = 'C' then 2
-- 	when grade = 'D' then 1
-- 	when grade = 'E' then 0
-- end
-- ),3) as avg_grade_per_sem
-- from grades
-- group by semester;

-- 9
-- SELECT 
--     g.CourseID, 
--     c.CourseName, 
--     ROUND(100.0 * SUM(CASE WHEN g.Grade IN ('A', 'B', 'C') THEN 1 ELSE 0 END) / COUNT(*), 2) AS PassPercentage
-- FROM Grades g
-- JOIN Courses c ON g.CourseID = c.CourseID
-- GROUP BY g.CourseID, c.CourseName
-- ORDER BY PassPercentage DESC;

-- 10
-- select studentname , count(major) as changed_major
-- from students
-- group by studentname
-- having count(major)>1;

-- 11
-- select c.courseid , c.coursename , round(count(g.studentid)*100/count(e.studentid) , 2)
-- from enrollments as e
-- join grades as g on g.courseid = e.courseid
-- join courses as c on c.courseid = g.courseid
-- group by c.courseid , c.coursename;

-- 12

-- 13
-- select s.studentid , s.studentname , count(case
-- when a.status = 'Present' then 1
-- end
-- )*100/count(*) as student_attendencs_perc
-- from attendance as a
-- join students as s on s.studentid = a.studentid
-- group by s.studentid , s.studentname;

-- 14
-- select c.courseid , c.coursename , count(case
-- when a.status = 'Absent' then 1
-- end
-- )*100/count(*) as course_attendencs_perc
-- from attendance as a
-- join courses as c on c.courseid = a.courseid
-- group by c.courseid , c.coursename
-- order by course_attendencs_perc desc;

-- 15
-- select d.departmentid , d.departmentname , count(s.studentid) as no_of_Student
-- from students as s
-- join departments as d on d.departmentname = s.major
-- group by d.departmentid , d.departmentname
-- order by no_of_Student desc;
-- select * from students;