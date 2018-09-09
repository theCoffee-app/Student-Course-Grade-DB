INSERT INTO Student
VALUES 
	(101, 'Donald', 'Duck'),
	(102, 'Daffy', 'Duck'),
	(103, 'Mickey', 'Mouse'),
	(104, 'Minnie', 'Mouse'),
	(105, 'Makoto', 'Watanabe'),
	(106, 'Cassidy', 'Blake'),
	(107, 'Jason', 'Keller'),
	(108, 'Shaun', 'Khankan'),
	(109, 'Ryan', 'Konrad');
	
--Grade
INSERT INTO Grade
VALUES 
(23159, 100, 'A'), 
(24970, 100, 'A'), 
(23559, 100,'A'), 
(24808, 101, 'A'), 
(24972, 101, 'A'), 
(25601, 110, 'B'), 
(23658, 110, 'B'), 

--Spring 2015
(45563, 100, 'A'), 
(44858, 101, 'C'), 
(43010, 111, 'B'), 

--Fall 2015
 (27363, 100, 'A'), 
 (28157, 100, 'A'), 
 (26637, 110, 'A'), 
 (28653, 110, 'B'), 

--Spring 2016
 (43108, 100, 'A'), 
 (41010, 100, 'A'),

 --Summer 2016
 (14928, 102, 'A'),
 (14928, 103, 'B'),
 (14928, 104, 'A'),
 (14928, 105, 'C'),
 (14928, 106, 'A'),
 (14928, 107, 'D'),
 (14928, 108, 'C'),
 (14928, 109, 'A'),
 (14928, 112, 'D'),
 
 
--Fall 2016
 (21939, 106,'A'),
 (20615, 106, 'A'), 

--Spring 2017
 (45807, 101, 'B'), 
 (44310, 100, 'A'), 
 (44011, 101, 'C'),

--Fall 2017
 (25377, 105, 'D'),
 (24356, 100, 'A'),
 (25517, 101, 'A');
 
 --Querey
 SELECT Grade.CRN, Grade.Grade, Student.Stud_First_Name
FROM Grade
INNER JOIN Student 
ON Grade.StudentID = Student.StudentID
--ORDER BY Stud_First_Name;
WHERE Stud_First_Name = 'Blake';
 
 	