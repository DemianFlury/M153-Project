/*
	Insert Script for FitnessCourse-Database
	Module:			M153
	Authors:		Tim Bernhard
					Demian Flury
	Language:		T-SQL
	Database:		FitnessCourse

	Indication:		Do not execute before you created the database! :)
*/

use FitnessCourse;
go

exec sp_MSForEachTable "ALTER TABLE ? NOCHECK CONSTRAINT all"
exec sp_MSForEachTable "DELETE FROM ?"
exec sp_MSForEachTable "ALTER TABLE ? WITH CHECK CHECK CONSTRAINT all"

dbcc checkident(Customer, reseed, 0);
dbcc checkident(Creator, reseed, 0);
dbcc checkident(Course, reseed, 0);
dbcc checkident(Visit, reseed, 0);

go

INSERT INTO Customer(Age, Passwd, Email, FirstName, LastName) VALUES 
(23, 'ABC', 'franz@gmail.com', 'Franz', 'Herter'),
(34, 'JucktKeine', 'gilbert@gmx.ch', 'Gilbert', 'Gottfried'),
(43, 'lamassindcool', 'gottesgleiche@gmail.com', 'Olivia', 'Grünschnabel'),
(67, 'bittegutenote', 'gugugaga@gmail.com', 'Andreas', 'Oliander'),
(19, 'dasistanstrengend', 'jan_krause@sluz.ch', 'Jan', 'Krause'),
(43, 'unkreativ', 'gerrybre@protonmail.com', 'Simon', 'Gerhard'),
(66, 'ichweisnicht', 'GertiBerti@gmail.com', 'Judith', 'Gertner'),
(54, '67329432', 'DontSentItsBadForEnvironment@gmail.com', 'Greta', 'Tun-oder-nicht-tunberg'),
(56, 'HühnchenMann420', 'LosPollosHermanos@gmail.com', 'Gustavo', 'Fring'),
(76, 'Judithsmash', 'CartelLeader@gmail.com', 'Hector', 'Salamanca'),
(43, 'Hulksmash', 'Lukas@flury.ch', 'Lukas Walter', 'Flury'),
(21, 'DasIstSehrSicher', 'Cohones@gmail.com', 'Johannes', 'Cohones'),
(20, 'ImmerPasswörterSoSpeichern', 'QuanDingle@hotmail.com', 'Quandale', 'Dingle'),
(48, 'aaAAHAaAaa', 'bruderelteregönnedned@gmail.com', 'Schibewüscher', 'Kek'),
(46, 'mirfaelltnichtsein', '12test@gmail.com', 'Johnny', 'Sins'),
(82, 'gugugaga', 'olibre@gmail.com', 'Olivia', 'Bresa'),
(45, 'lame', 'CapnCook@gmx.com', 'Jesse', 'Pinkman'),
(246, 'kenboi', 'Jesus@JediOrder.ga', 'Obi-Wan', 'Kenobi'),
(53, 'heisenburger', 'heisenberg@gmx.com', 'Walter', 'White'),
(12, 'SpaceJesus', 'sussybaka@gmx.com', 'Hank', 'Schrader');
go

INSERT INTO Creator(Age, Passwd, Email, FirstName, LastName) VALUES 
(23, 'ABC', 'franz@gmail.com', 'Franz', 'Herter'),
(34, 'JucktKeine', 'gilbert@gmx.ch', 'Gilbert', 'Gottfried'),
(43, 'lamassindcool', 'gottesgleiche@gmail.com', 'Olivia', 'Grünschnabel'),
(67, 'bittegutenote', 'gugugaga@gmail.com', 'Andreas', 'Oliander'),
(19, 'dasistanstrengend', 'jan_krause@sluz.ch', 'Jan', 'Krause'),
(43, 'unkreativ', 'gerrybre@protonmail.com', 'Simon', 'Gerhard'),
(66, 'ichweisnicht', 'GertiBerti@gmail.com', 'Judith', 'Gertner'),
(54, '67329432', 'DontSentItsBadForEnvironment@gmail.com', 'Greta', 'Tun-oder-nicht-tunberg'),
(56, 'HühnchenMann420', 'LosPollosHermanos@gmail.com', 'Gustavo', 'Fring'),
(76, 'Judithsmash', 'CartelLeader@gmail.com', 'Hector', 'Salamanca'),
(43, 'Hulksmash', 'Lukas@flury.ch', 'Lukas Walter', 'Flury'),
(21, 'DasIstSehrSicher', 'Cohones@gmail.com', 'Johannes', 'Cohones'),
(20, 'ImmerPasswörterSoSpeichern', 'QuanDingle@hotmail.com', 'Quandale', 'Dingle'),
(48, 'aaAAHAaAaa', 'bruderelteregönnedned@gmail.com', 'Schibewüscher', 'Kek'),
(46, 'mirfaelltnichtsein', '12test@gmail.com', 'Johnny', 'Sins'),
(82, 'gugugaga', 'olibre@gmail.com', 'Olivia', 'Bresa'),
(45, 'MistahWhiteYo', 'CaptnCook@gmx.com', 'Jesse', 'Pinkman'),
(246, 'kenboi', 'Jesus@JediOrder.ga', 'Obi-Wan', 'Kenobi'),
(53, 'heisenburger', 'heisenberg@gmx.com', 'Walter', 'White'),
(12, 'SpaceJesus', 'sussybaka@gmx.com', 'Hank', 'Schrader');
go

INSERT INTO Course(Price, CourseDescription, CourseName, CreationDate, fk_CreatorID) VALUES
(400,'Einfacher Trainingsplan für Beginner um die Beine zu trainieren','Trainingsplan Beine',02-02-2020, 1),
(345,'Einfacher Trainingsplan für Beginner um den Oberkörper zu trainieren','Trainingsplan Oberkörper',02-02-2020, 1),
(450,'Die Basics beim Posen und Körperästhetik','Klassische Bodybuilding Basics',02-02-2020, 3),
(300,'Posen lernen leicht gemacht','Posing Basics',02-02-2020, 4),
(460,'Motivation finden, um jeden Tag ins Gym zu gehen','Gym Habits',02-02-2020, 5),
(200,'Meditieren lernen in 10 einfachen Schritten','Meditation Basics',02-02-2020, 6),
(150.50,'Anfängerkurs für Kraftübungen mit dem eigenen Körpergewicht','Calisthenics',02-02-2020, 7),
(60,'Eine Stunde Yoga mit professioneller Leitung und entspannter Musik','Yoga-Lektion',02-02-2020, 8),
(265,'Einfacher Trainingsplan für Beginner um den Oberkörper zu trainieren','Trainingsplan Oberkörper',02-02-2020, 9),
(369.95,'Posen lernen leicht gemacht','Posing Basics',02-02-2020, 10),
(420,'Einfacher Trainingsplan für Beginner um den Oberkörper zu trainieren','Trainingsplan Oberkörper',02-02-2020, 11),
(240,'Einfacher Trainingsplan für Beginner um die Beine zu trainieren','Trainingsplan Beine',02-02-2020, 12),
(80,'Einfacher Trainingsplan für Beginner um den Oberkörper zu trainieren','Trainingsplan Oberkörper',02-02-2020, 13),
(123,'Motivation finden, um jeden Tag ins Gym zu gehen','Gym Habits',02-02-2020, 14),
(450,'Einfacher Trainingsplan für Beginner um die Beine zu trainieren','Trainingsplan Beine',02-02-2020, 2),
(250,'Husteln lernen, mit dem Macher Mindset steht dir nichts mehr im Weg!','Macher Mindset',02-02-2020, 15),
(550,'Anfängerkurs für Kraftübungen mit dem eigenen Körpergewicht','Calisthenics',02-02-2020, 16),
(700,'Einfacher Trainingsplan für Beginner um die Beine zu trainieren','Trainingsplan Beine',02-02-2020, 17),
(400,'Motivation finden, um jeden Tag ins Gym zu gehen','Gym Habits',02-02-2020, 18),
(420,'Einfacher Trainingsplan für Beginner um den Oberkörper zu trainieren','Trainingsplan Oberkörper',02-02-2020, 19),
(365,'Einfacher Trainingsplan für Beginner um die Beine zu trainieren','Trainingsplan Beine',02-02-2020, 20);
go

INSERT INTO Visit(fk_CourseID, fk_CustomerID, VisitDate, Paid) VALUES
(1, 20, 12-12-2021, 0),
(2, 19, 12-12-2021, 1),
(3, 18, 12-12-2021, 0),
(4, 16, 12-12-2021, 1),
(5, 17, 12-12-2021, 1),
(6, 15, 12-12-2021, 0),
(7, 14, 12-12-2021, 1),
(8, 13, 12-12-2021, 1),
(9, 12, 12-12-2021, 1),
(10, 11, 12-12-2021, 1),
(11, 10, 12-12-2021, 0),
(12, 9, 12-12-2021, 0),
(13, 8, 12-12-2021, 0),
(14, 7, 12-12-2021, 0),
(15, 6, 12-12-2021, 0),
(17, 5, 12-12-2021, 1),
(16, 4, 12-12-2021, 1),
(18, 3, 12-12-2021, 0),
(19, 2, 12-12-2021, 0),
(20, 1, 12-12-2021, 1)