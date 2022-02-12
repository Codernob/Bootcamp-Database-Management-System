--student names and their bootcamp titles
SELECT DISTINCT s.Name,b.Title
FROM Bootcamp AS b, Student AS s
WHERE s.Bootcamp_ID=b.Bootcamp_ID

--instructors and their bootcamps
SELECT I.Name,B.Title
FROM Instructor AS I,Bootcamp AS B
WHERE I.Bootcamp_ID=B.Bootcamp_ID

--students of a specific course
SELECT Name, Student_ID
FROM Student
WHERE Student_ID IN (SELECT Student_ID
			FROM Student
			WHERE Bootcamp_ID = 563120);

--specific course and enrollment status
SELECT Name, Student_ID
FROM Student
WHERE Enrollment_Status = "Currntly Enrolled" AND Bootcamp_ID = 563121;

--schedule of a specific course
SELECT Number_of_Weekly_Classes, Class_Duration, Class_Days
FROM Schedules
WHERE Bootcamp_ID = 563122;

--Maximum Salary of Instructor
SELECT Name, Salary
FROM Instructor
WHERE Salary = (SELECT MAX(Salary)
		FROM Instructor);

--Maximum Assignment Completed from the currently enrolled students
SELECT Student_ID, MAX(Completed_Assignments)
FROM Progress
WHERE Certificate = (SELECT Certificate
					 FROM Progress
					 WHERE Certificate = "Not Issued Yet");

--All the instructors of a specific course
SELECT Name, Salary
FROM Instructor
WHERE SALARY IN (SELECT Salary
		FROM Instructor
		WHERE Bootcamp_ID = 563120);

--Maximum Salary of an instructor from a speific course
SELECT Name, MAX(Salary)
FROM Instructor
WHERE SALARY IN (SELECT Salary
			FROM Instructor
			WHERE Bootcamp_ID = 563122);

-- find which student is assigned to which instructor
SELECT I.ID as "Instructor's ID",I.Name as "Instructor's name",S.Name as "student's name",S.Student_ID as "student's id"
FROM Instructor as I, Student as S, Bootcamp as B
WHERE I.Bootcamp_ID = B.Bootcamp_ID AND B.Bootcamp_ID = S.Bootcamp_ID
