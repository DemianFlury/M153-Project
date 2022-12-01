delete from Customer, Creator, Course, Visit;

dbcc checkident(Customer, reseed, 0);
dbcc checkident(Creator, reseed, 0);
dbcc checkident(Course, reseed, 0);
dbcc checkident(Visit, reseed, 0);

INSERT INTO Customer(Age, Passwd, Email, FirstName, LastName) VALUES 
(23, 'ABC', 'franz@gmail.com', 'Franz', 'Herter'),
(34, 'JucktKeine', 'gilbert@gmx.ch', 'Gilbert', 'Gottfried'),
(43, 'lamassindcool', 'gottesgleiche@gmail.com', 'Olivia', 'Grünschnabel'),
(67, 'bittegutenote', 'gugugaga@gmail.com', 'Andreas', 'Oliander'),
(19, 'dasistanstrengend', 'jan_krause@sluz.ch', 'Jan', 'Krause'),
(43, 'unkreativ', 'gerrybre@protonmail.com', 'Simon', 'Gerhard'),
(66, 'ichweisnicht', 'GertiBerti@gmail.com', 'Judith', 'Gertner'),
(54, '67329432', 'DontSentItsBadForEnvironment@gmail.com', 'Greta', 'Tun-oder-nicht-tunberg'),
(56, 'SchweineMann420', 'LosPollosHermanos@gmail.com', 'Gustavo', 'Fring'),
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
(45, 'lame', 'CapnCook@gmx.com', 'Jesse', 'Pinkman'),
(246, 'kenboi', 'Jesus@JediOrder.ga', 'Obi-Wan', 'Kenobi'),
(53, 'heisenburger', 'heisenberg@gmx.com', 'Walter', 'White'),
(12, 'SpaceJesus', 'sussybaka@gmx.com', 'Hank', 'Schrader');
go

INSERT INTO Course(Price, CourseDescription, CourseName, CreationDate, fk_CreatorID) VALUES
(400,'','Trainingsplan Beine',02-02-2020, 1),
(345,'','Trainingsplan Oberkörper',02-02-2020, 1),
(450,'','Klassische Bodybuilding Basics',02-02-2020, 3),
(300,'','Posing Basics',02-02-2020, 4),
(460,'','Gym Habits',02-02-2020, 5),
(200,'','Meditation Basics',02-02-2020, 6),
(150.50,'','Calisthenics',02-02-2020, 7),
(60,'','Yoga-Lektion',02-02-2020, 8),
(265,'','Trainingsplan Oberkörper',02-02-2020, 9),
(369.95,'','Posing Basics',02-02-2020, 10),
(420,'','Trainingsplan Oberkörper',02-02-2020, 11),
(240,'','Trainingsplan Beine',02-02-2020, 12),
(80,'','Trainingsplan Oberkörper',02-02-2020, 13),
(123,'','Gym Habits',02-02-2020, 14),
(450,'','Trainingsplan Beine',02-02-2020, 2),
(250,'','Macher Mindset',02-02-2020, 15),
(550,'','Calisthenics',02-02-2020, 16),
(700,'','Trainingsplan Beine',02-02-2020, 17),
(400,'','Gym Habits',02-02-2020, 18),
(420,'','Trainingsplan Oberkörper',02-02-2020, 19),
(365,'','Trainingsplan Beine',02-02-2020, 20);