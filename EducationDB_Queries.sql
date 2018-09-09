
--Select Student Grade for this semester of CISB 451
SELECT 
	Student.StudentID, Stud_First_Name, Stud_Last__Name, Course_Offerings.CourseID, Section, Semester.Descrip, Years.Descrip, Grade
FROM Student
	LEFT JOIN Grade ON Student.StudentID = Grade.StudentID
	LEFT JOIN Course_Offerings ON Grade.CRN = Course_Offerings.CRN
	LEFT JOIN Years ON Years.YearID = Course_Offerings.YearID
	LEFT JOIN Semester ON Semester.SemesterID = Course_Offerings.SemesterID
WHERE
	Student.StudentID = 100
AND CourseID = 451

--What Classes has Pumphrey taught since Spring 2014
SELECT 
	CRN, CourseID, Professor.ProfessorID, Section, Semester.Descrip, Years.Descrip, Prof_Last_Name	
FROM
	Course_Offerings
	LEFT JOIN Professor ON Course_Offerings.ProfessorID = Professor.ProfessorID	
	LEFT JOIN Years ON Course_Offerings.YearID = Years.YearID
	LEFT JOIN Semester ON Course_Offerings.SemesterID = Semester.SemesterID
WHERE
	Professor.ProfessorID = 200
ORDER BY Years.Descrip ASC, Semester.Descrip;

--What grades are on my transcript?

SELECT 
	Student.StudentID, Stud_First_Name, Stud_Last__Name, Course_Offerings.CRN, Course_Offerings.CourseID, Section, Semester.Descrip, Years.Descrip, Grade
FROM Student
	LEFT JOIN Grade ON Student.StudentID = Grade.StudentID
	LEFT JOIN Course_Offerings ON Grade.CRN = Course_Offerings.CRN
	LEFT JOIN Years ON Years.YearID = Course_Offerings.YearID
	LEFT JOIN Semester ON Semester.SemesterID = Course_Offerings.SemesterID
WHERE
	Student.StudentID = 100
ORDER BY Years.Descrip ASC, Semester.Descrip;


--What were the grades of the students in CISB 241 Summer 2016
SELECT 
	Student.StudentID, Stud_First_Name, Stud_Last__Name, Course_Offerings.CourseID, Section, Semester.Descrip, Years.Descrip, Grade
FROM Student
	LEFT JOIN Grade ON Student.StudentID = Grade.StudentID
	LEFT JOIN Course_Offerings ON Grade.CRN = Course_Offerings.CRN
	LEFT JOIN Years ON Years.YearID = Course_Offerings.YearID
	LEFT JOIN Semester ON Semester.SemesterID = Course_Offerings.SemesterID
WHERE	
	CourseID = 241
AND Years.YearID = 3
AND Semester.SemesterID = 4


---What Professors taught CISB coures in 2016?

SELECT DISTINCT
	Years.Descrip, Professor.ProfessorID, Prof_Last_Name, Dept	
FROM
	Course_Offerings
	LEFT JOIN Professor ON Course_Offerings.ProfessorID = Professor.ProfessorID	
	LEFT JOIN Years ON Course_Offerings.YearID = Years.YearID
	LEFT JOIN Semester ON Course_Offerings.SemesterID = Semester.SemesterID
WHERE
	Years.YearID = 2 
AND Dept = 'CIS'