-- One to Many Relationship (1:M)
-- Primary Key - Foreign Key constraints

CREATE TABLE Client
(
	Pk_Client_Id INT IDENTITY PRIMARY KEY,
	ClientName VARCHAR(255),
	ClientAddress VARCHAR(255)
);

CREATE TABLE ClientOrder
(
	Pk_ClientOrder_Id INT IDENTITY PRIMARY KEY,
	ClientDetails VARCHAR(255),
	CreateDate DateTime,
	Fk_Client_Id INT FOREIGN KEY REFERENCES Client(Pk_Client_Id)
);

INSERT INTO Client VALUES ('Teona Smith','Alek Manukyan 9');
INSERT INTO Client VALUES ('Poghos Poghosyan','Leo 3');

INSERT INTO ClientOrder VALUES ('Two coffe, one pancake','2021-09-12 11:13:08.443', 1);
INSERT INTO ClientOrder VALUES ('One tea, one pizza','2021-09-12 12:19:08.443', 2);
INSERT INTO ClientOrder VALUES ('Three tea, one cake','2021-09-13 12:53:08.443', 1);
INSERT INTO ClientOrder VALUES ('Two salad, one cola','2021-09-14 12:43:08.443', 2);