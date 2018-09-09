
CREATE TABLE Student (
	StudentID int NOT NULL PRIMARY KEY,
	Stud_First_Name varchar(50),
	Stud_Last__Name varchar(50),
	
		
	
);

INSERT INTO Student
VALUES (100, 'Blake', 'Graf'),
		(111, 'Bruce', 'Wayne'),
		(112, 'Peter', 'Parker'),
		(113, 'Barry', 'Alan'),
		(114, 'Steve', 'Jobs');

CREATE TABLE Professor (
	ProfessorID int NOT NULL PRIMARY KEY,
	Prof_First_Name varchar(50),
	Prof_Last_Name varchar(50),
	
	
);

INSERT INTO Professor
VALUES (200, 'David', 'Pumphrey'),
		(211, 'Johny', 'Snyder'),
		(212, 'Donald', 'Carpenter'),
		(213, 'Charles', 'Xavier'),
		(214, 'Roy', 'Griak');

	

CREATE TABLE Semester (
	SemesterID int NOT NULL PRIMARY KEY,
	Descrip varchar(500),
	
	
);

INSERT INTO Semester
VALUES (01, 'Fall'),
		(02, 'January'),
		(03, 'Spring'),
		(04, 'Summer');

CREATE TABLE Years (
	YearID int NOT NULL PRIMARY KEY,
	Descrip VARCHAR(20),
	
	
);

INSERT INTO Years
VALUES (01, '2014/2015'),
		(02, '2015/2016'),
		(03, '2016/2017'),
		(04, '2017/2018');

CREATE TABLE Course (
	CourseID int NOT NULL PRIMARY KEY,
	Course_Name varchar(200),
	Credit_Hours int
	
	
);

INSERT INTO Course
VALUES (241, 'Data Analysis', 3),
		(310, 'Project Management', 3),
		(315, 'Systems Analysis and Design', 3),
		(370, 'Management of Information Systems', 3),
		(341, 'Database Administration', 3);


CREATE TABLE Course_Offerings (
	CRN int NOT NULL PRIMARY KEY,
	CourseID int FOREIGN KEY REFERENCES Course(CourseID),
	ProfessorID int FOREIGN KEY REFERENCES Professor(ProfessorID),
	Section int,
		
);

INSERT INTO Course_Offerings
VALUES (01, 241, 211, 001),
		(02, 310, 212, 001),
		(03, 315, 200, 001),
		(04, 370, 212, 001),
		(05, 341, 200, 001);

CREATE TABLE Grade (
	CRN int NOT NULL FOREIGN KEY REFERENCES Course_Offerings(CRN),
	StudentID int FOREIGN KEY REFERENCES Student(StudentID),
	Grade varchar(5),
	
	
);

INSERT INTO Grade
VALUES (01, 100, 'A'),
		(02, 100, 'B'),
		(03, 100, 'A'),
		(04, 100, 'A'),
		(05, 100, 'A'),
		(01, 111, 'B'),
		(02, 111, 'A'),
		(03, 111, 'A'),
		(04, 111, 'C'),
		(05, 111, 'A'),
		(01, 112, 'C'),
		(02, 112, 'A'),
		(03, 112, 'A'),
		(04, 112, 'A'),
		(05, 112, 'C'),
		(01, 113, 'A'),
		(02, 113, 'C'),
		(03, 113, 'A'),
		(04, 113, 'B'),
		(05, 113, 'A'),
		(01, 114, 'A'),
		(02, 114, 'A'),
		(03, 114, 'B'),
		(04, 114, 'B'),
		(05, 114, 'C');

CREATE INDEX idx_Transcript
ON Student(StudentID, Stud_First_Name, Stud_Last__Name);

CREATE INDEX idx_ProfName
ON Professor(Prof_First_Name, Prof_Last_Name);

Create INDEX idx_StudName
ON Student(Stud_First_Name, Stud_Last__Name);

 