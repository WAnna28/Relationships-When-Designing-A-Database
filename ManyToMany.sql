-- Many to Many Relationship (M:M)
-- Multiple records in one table are related to multiple records in another table.
-- Via Join table (Junction Table)

CREATE TABLE Student
(
	StudentID INT IDENTITY(1, 1) PRIMARY KEY,
	StudentName VARCHAR(255)
);

CREATE TABLE Classroom
(
	ClassroomID INT IDENTITY(1, 1) PRIMARY KEY,
	RoomNumber INT NOT NULL
);

CREATE TABLE StudentClassroom
(
	StudentID INT NOT NULL,
	ClassroomID INT NOT NULL,
	CONSTRAINT PK_StudentClassroom PRIMARY KEY(StudentID, ClassroomID),
	FOREIGN KEY(StudentID) REFERENCES Student(StudentID),
	FOREIGN KEY(ClassroomID) REFERENCES Classroom(ClassroomID)
);

INSERT INTO Student VALUES ('Poghos');
INSERT INTO Student VALUES ('Petros');

INSERT INTO Classroom VALUES (141);
INSERT INTO Classroom VALUES (241);


INSERT INTO StudentClassroom VALUES (1, 1);
INSERT INTO StudentClassroom VALUES (1, 2);
INSERT INTO StudentClassroom VALUES (2, 1);
INSERT INTO StudentClassroom VALUES (2, 2);