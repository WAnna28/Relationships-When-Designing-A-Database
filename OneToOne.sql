-- One to One Relationship (1:1)
-- Primary Key - Unique Foreign Key constraints

CREATE TABLE Person
(
	Pk_Person_Id INT IDENTITY PRIMARY KEY,
	PersonName VARCHAR(255),
	Email VARCHAR(100)
);

CREATE TABLE PassportDetails
(
	Pk_Passport_Id INT PRIMARY KEY,
	PassportNumber VARCHAR(255),
	Gender VARCHAR(100),
	Fk_Person_Id INT UNIQUE FOREIGN KEY REFERENCES Person(Pk_Person_Id)
);

INSERT INTO Person VALUES ('Mike','Mike@gmail.com');
INSERT INTO Person VALUES ('Kate','Kate@gmail.com');
INSERT INTO Person VALUES ('Adam','Adam@gmail.com');
INSERT INTO Person VALUES ('Joanna','Joanna@gmail.com');

INSERT INTO PassportDetails VALUES (101,'AE854646', 'M', 1);
INSERT INTO PassportDetails VALUES (102,'DE784654', 'F', 2);
INSERT INTO PassportDetails VALUES (103,'FK448325', 'M', 3);
INSERT INTO PassportDetails VALUES (104,'ED458787', 'F', 4);