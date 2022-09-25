----create database if not exists Labor_SQL;
----use Labor_SQL;

--    IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'Labor_SQL')
--  BEGIN
--    CREATE DATABASE [Labor_SQL]


--    END
--    GO
--       USE [Labor_SQL]
--    GO

--CREATE TABLE Laptop (
--	code int NOT NULL ,
--	model varchar (50) NOT NULL ,
--	speed smallint NOT NULL ,
--	ram smallint NOT NULL ,
--	hd real NOT NULL ,
--	price decimal(8,2) NULL ,
--	screen tinyint NOT NULL 
--);

--CREATE TABLE PC (
--	code int NOT NULL ,
--	model varchar (50) NOT NULL ,
--	speed smallint NOT NULL ,
--	ram smallint NOT NULL ,
--	hd real NOT NULL ,
--	cd varchar (10) NOT NULL ,
--	price decimal(8,2) NULL 
--);

--CREATE TABLE Product (
--	maker varchar (10) NOT NULL ,
--	model varchar (50) NOT NULL ,
--	type varchar (50) NOT NULL 
--);

--CREATE TABLE Printer (
--	code int NOT NULL ,
--	model varchar (50) NOT NULL ,
--	color char (1) NOT NULL ,
--	type varchar (10) NOT NULL ,
--	price decimal(8,2) NULL 
--);

--ALTER TABLE Laptop ADD 
--	CONSTRAINT PK_Laptop PRIMARY KEY  NONCLUSTERED 
--	(
--		code
--	);

--ALTER TABLE PC  ADD 
--	CONSTRAINT PK_pc PRIMARY KEY  NONCLUSTERED 
--	(
--		code
--	);

--ALTER TABLE Product  ADD 
--	CONSTRAINT PK_product PRIMARY KEY  NONCLUSTERED 
--	(
--		model
--	); 


--ALTER TABLE Printer  ADD 
--	CONSTRAINT PK_printer PRIMARY KEY  NONCLUSTERED 
--	(
--		code
--	); 

--ALTER TABLE Laptop ADD 
--	CONSTRAINT FK_Laptop_product FOREIGN KEY 
--	(
--		model
--	) REFERENCES Product (
--		model
--	);

--ALTER TABLE PC ADD 
--	CONSTRAINT FK_pc_product FOREIGN KEY 
--	(
--		model
--	) REFERENCES Product (
--		model
--	);

--ALTER TABLE Printer ADD 
--	CONSTRAINT FK_printer_product FOREIGN KEY 
--	(
--		model
--	) REFERENCES Product (
--		model
--	);

-----Product------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
--insert into Product values('B','1121','PC');
--insert into Product values('A','1232','PC');
--insert into Product values('A','1233','PC');
--insert into Product values('E','1260','PC');
--insert into Product values('A','1276','Printer');
--insert into Product values('D','1288','Printer');
--insert into Product values('A','1298','Laptop');
--insert into Product values('C','1321','Laptop');
--insert into Product values('A','1401','Printer');
--insert into Product values('A','1408','Printer');
--insert into Product values('D','1433','Printer');
--insert into Product values('E','1434','Printer');
--insert into Product values('B','1750','Laptop');
--insert into Product values('A','1752','Laptop');
--insert into Product values('E','2111','PC');
--insert into Product values('E','2112','PC');
                                                                                                                                                                                                                                                                 
-----PC------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
--insert into PC values(1,'1232',500,64,5,'12x',600);
--insert into PC values(2,'1121',750,128,14,'40x',850);
--insert into PC values(3,'1233',500,64,5,'12x',600);
--insert into PC values(4,'1121',600,128,14,'40x',850);
--insert into PC values(5,'1121',600,128,8,'40x',850);
--insert into PC values(6,'1233',750,128,20,'50x',950);
--insert into PC values(7,'1232',500,32,10,'12x',400);
--insert into PC values(8,'1232',450,64,8,'24x',350);
--insert into PC values(9,'1232',450,32,10,'24x',350);
--insert into PC values(10,'1260',500,32,10,'12x',350);
--insert into PC values(11,'1233',900,128,40,'40x',980);
                                                                                                                                                                                                                                                                 
-----Laptop------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
--insert into Laptop values(1,'1298',350,32,4,700,11);
--insert into Laptop values(2,'1321',500,64,8,970,12);
--insert into Laptop values(3,'1750',750,128,12,1200,14);
--insert into Laptop values(4,'1298',600,64,10,1050,15);
--insert into Laptop values(5,'1752',750,128,10,1150,14);
--insert into Laptop values(6,'1298',450,64,10,950,12);
                                                                                                                                                                                                                                                                 
-----Printer------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
--insert into Printer values(1,'1276','n','Laser',400);
--insert into Printer values(2,'1433','y','Jet',270);
--insert into Printer values(3,'1434','y','Jet',290);
--insert into Printer values(4,'1401','n','Matrix',150);
--insert into Printer values(5,'1408','n','Matrix',270);
--insert into Printer values(6,'1288','n','Laser',400);


CREATE TABLE Income (
	code int NOT NULL ,
	point tinyint NOT NULL ,
	date datetime NOT NULL ,
	inc decimal(8,2) NOT NULL 
); 

CREATE TABLE Outcome (
	code int NOT NULL ,
	point tinyint NOT NULL ,
	date datetime NOT NULL ,
	out decimal(8,2) NOT NULL 
); 

CREATE TABLE Income_o (
	point tinyint NOT NULL ,
	date datetime NOT NULL ,
	inc decimal(8,2) NOT NULL 
); 

CREATE TABLE Outcome_o (
	point tinyint NOT NULL ,
	date datetime NOT NULL ,
	out decimal(8,2) NOT NULL 
); 

ALTER TABLE Income  ADD 
	CONSTRAINT PK_Income PRIMARY KEY  NONCLUSTERED 
	(
		code
	);   

ALTER TABLE Outcome  ADD 
	CONSTRAINT PK_Outcome PRIMARY KEY  NONCLUSTERED 
	(
		code
	);  

ALTER TABLE Income_o  ADD 
	CONSTRAINT PK_Income_o PRIMARY KEY  NONCLUSTERED 
	(
		point,
		date
	);   

ALTER TABLE Outcome_o  ADD 
	CONSTRAINT PK_Outcome_o PRIMARY KEY  NONCLUSTERED 
	(
		point,
		date
	);   
                                                                                                                                                                                                                                                                 
---Income------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
insert into Income values(1,1,'2001-03-22 00:00:00.000',15000.00);
insert into Income values(2,1,'2001-03-23 00:00:00.000',15000.00);
insert into Income values(3,1,'2001-03-24 00:00:00.000',3600.00);
insert into Income values(4,2,'2001-03-22 00:00:00.000',10000.00);
insert into Income values(5,2,'2001-03-24 00:00:00.000',1500.00);
insert into Income values(6,1,'2001-04-13 00:00:00.000',5000.00);
insert into Income values(7,1,'2001-05-11 00:00:00.000',4500.00);
insert into Income values(8,1,'2001-03-22 00:00:00.000',15000.00);
insert into Income values(9,2,'2001-03-24 00:00:00.000',1500.00);
insert into Income values(10,1,'2001-04-13 00:00:00.000',5000.00);
insert into Income values(11,1,'2001-03-24 00:00:00.000',3400.00);
insert into Income values(12,3,'2001-09-13 00:00:00.000',1350.00);
insert into Income values(13,3,'2001-09-13 00:00:00.000',1750.00);
                                                                                                                                                                                                                                                                 
-----Outcome 
insert into Outcome values(1,1,'2001-03-14 00:00:00.000',15348.00);
insert into Outcome values(2,1,'2001-03-24 00:00:00.000',3663.00);
insert into Outcome values(3,1,'2001-03-26 00:00:00.000',1221.00);
insert into Outcome values(4,1,'2001-03-28 00:00:00.000',2075.00);
insert into Outcome values(5,1,'2001-03-29 00:00:00.000',2004.00);
insert into Outcome values(6,1,'2001-04-11 00:00:00.000',3195.04);
insert into Outcome values(7,1,'2001-04-13 00:00:00.000',4490.00);
insert into Outcome values(8,1,'2001-04-27 00:00:00.000',3110.00);
insert into Outcome values(9,1,'2001-05-11 00:00:00.000',2530.00);
insert into Outcome values(10,2,'2001-03-22 00:00:00.000',1440.00);
insert into Outcome values(11,2,'2001-03-29 00:00:00.000',7848.00);
insert into Outcome values(12,2,'2001-04-02 00:00:00.000',2040.00);
insert into Outcome values(13,1,'2001-03-24 00:00:00.000',3500.00);
insert into Outcome values(14,2,'2001-03-22 00:00:00.000',1440.00);
insert into Outcome values(15,1,'2001-03-29 00:00:00.000',2006.00);
insert into Outcome values(16,3,'2001-09-13 00:00:00.000',1200.00);
insert into Outcome values(17,3,'2001-09-13 00:00:00.000',1500.00);
insert into Outcome values(18,3,'2001-09-14 00:00:00.000',1150.00);
                                                                                                                                                                                                                                                                
---Income_o 
insert into Income_o values(1,'2001-03-22 00:00:00.000',15000.00);
insert into Income_o values(1,'2001-03-23 00:00:00.000',15000.00);
insert into Income_o values(1,'2001-03-24 00:00:00.000',3400.00);
insert into Income_o values(1,'2001-04-13 00:00:00.000',5000.00);
insert into Income_o values(1,'2001-05-11 00:00:00.000',4500.00);
insert into Income_o values(2,'2001-03-22 00:00:00.000',10000.00);
insert into Income_o values(2,'2001-03-24 00:00:00.000',1500.00);
insert into Income_o values(3,'2001-09-13 00:00:00.000',11500.00);
insert into Income_o values(3,'2001-10-02 00:00:00.000',18000.00);
                                                                                                                                                                                                                                                                 
---Outcome_o 
insert into Outcome_o values(1,'2001-03-14 00:00:00.000',15348.00);
insert into Outcome_o values(1,'2001-03-24 00:00:00.000',3663.00);
insert into Outcome_o values(1,'2001-03-26 00:00:00.000',1221.00);
insert into Outcome_o values(1,'2001-03-28 00:00:00.000',2075.00);
insert into Outcome_o values(1,'2001-03-29 00:00:00.000',2004.00);
insert into Outcome_o values(1,'2001-04-11 00:00:00.000',3195.04);
insert into Outcome_o values(1,'2001-04-13 00:00:00.000',4490.00);
insert into Outcome_o values(1,'2001-04-27 00:00:00.000',3110.00);
insert into Outcome_o values(1,'2001-05-11 00:00:00.000',2530.00);
insert into Outcome_o values(2,'2001-03-22 00:00:00.000',1440.00);
insert into Outcome_o values(2,'2001-03-29 00:00:00.000',7848.00);
insert into Outcome_o values(2,'2001-04-02 00:00:00.000',2040.00);
insert into Outcome_o values(3,'2001-09-13 00:00:00.000',1500.00);
insert into Outcome_o values(3,'2001-09-14 00:00:00.000',2300.00);
insert into Outcome_o values(3,'2002-09-16 00:00:00.000',2150.00);

