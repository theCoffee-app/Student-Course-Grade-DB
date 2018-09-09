SELECT StudentID, Grade FROM Grade WHERE StudentID = 100;

SELECT Grade.CRN, Grade.Grade, Student.Stud_First_Name
FROM Grade
INNER JOIN Student 
ON Grade.StudentID = Student.StudentID
--ORDER BY Stud_First_Name;
WHERE Stud_First_Name = 'Blake';


ALTER TABLE Course_Offerings
ADD YearID int FOREIGN KEY REFERENCES [Year](YearID);


SELECT CRN, CourseID, ProfessorID, YearID
FROM Course_Offerings
WHERE ProfessorID = 200 
AND YearID = 2;

SELECT CRN, CourseID, ProfessorID, Years.Descrip
FROM Course_Offerings, Years
WHERE ProfessorID = 200 
AND Years.YearID = 2;


--What Professors taught CISB coures in 2016?
SELECT 
	CRN, CourseID,  Semester.Descrip, Years.Descrip, Professor.ProfessorID, Prof_Last_Name, Dept	
FROM
	Course_Offerings
	LEFT JOIN Professor ON Course_Offerings.ProfessorID = Professor.ProfessorID	
	LEFT JOIN Years ON Course_Offerings.YearID = Years.YearID
	LEFT JOIN Semester ON Course_Offerings.SemesterID = Semester.SemesterID
WHERE
	Years.YearID = 2
AND Dept = 'CIS'
ORDER BY Years.Descrip ASC, Semester.Descrip;

---