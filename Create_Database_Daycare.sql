Create Database Daycare; 
GO


--Create Parents Table, Insert Data, Create Index and drop table if it already exists
Use Daycare; 

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Parent_Child]') AND type in (N'U'))
DROP TABLE [dbo].[Parent_Child]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Children]') AND type in (N'U'))
DROP TABLE [dbo].[Children]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Parents]') AND type in (N'U'))
DROP TABLE [dbo].[Parents]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Teacher]') AND type in (N'U'))
DROP TABLE [dbo].[Teacher]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DayCare]') AND type in (N'U'))
DROP TABLE [dbo].[DayCare]
GO

CREATE TABLE [dbo].[Parents]( 
ParentID int PRIMARY KEY not null,
FirstName varchar(100) not null,
LastName varchar(100) not null,
StreetName varchar(100),
CityName varchar (50),
State varchar (2),
PostalCode varchar(5),
PhoneNumber varchar(12) not null,
EmailAddress varchar(100),
Gender varchar(1)
)

INSERT INTO [dbo].[Parents] ([ParentID], [FirstName], [LastName], [StreetName], [CityName], [State], [PostalCode], [PhoneNumber], [EmailAddress], [Gender]) VALUES 
(1, 'Dunca', 'Adao', 'Mendota', 'Louisville', 'KY', '40250', '502-782-1019', 'dadaogr@tinypic.com', 'M'),
(2, 'Jandy', 'Adao', 'Mendota', 'Louisville', 'KY', '40250', '502-782-1020', 'jadao@tinypic.com', 'F'),
(3, 'Shea', 'Adney', 'Meadow Valley', 'Louisville', 'KY', '40287', '502-375-0199', '', 'M'),
(4, 'Adore', 'Adney', 'Meadow Valley', 'Louisville', 'KY', '40287', '502-375-0198', 'aadney@bloglines.com', 'F'),
(5, 'Vite', 'Alcalde', 'Central', 'Louisville', 'KY', '40266', '502-113-6326', 'valcaldep4@hostgator.com', 'M'),
(6, 'Marcia', 'Alcalde', 'Central', 'Louisville', 'KY', '40266', '502-113-6327', 'malcalde@hostgator.com', 'F'),
(7, 'Sanso', 'Alsford', 'Clemons', 'Louisville', 'KY', '40266', '502-806-5220', 'salsfordoq@thetimes.co.uk', 'M'),
(8, 'Bre', 'Alsford', 'Clemons', 'Louisville', 'KY', '40266', '502-806-5221', 'balsford@thetimes.co.uk', 'F'),
(9, 'Kennett', 'Alvarado', 'Park Meadow', 'Louisville', 'KY', '40215', '502-477-4709', 'kalvarado5k@washingtonpost.com', 'M'),
(10, 'Valerie', 'Alvarado', 'Park Meadow', 'Louisville', 'KY', '40215', '502-477-4710', 'valvarado@washingtonpost.com', 'F'),
(11, 'Darcy', 'Arlet', 'Eliot', 'Louisville', 'KY', '40225', '502-816-8857', 'darlet54@freewebs.com', 'M'),
(12, 'Dominga', 'Arlet', 'Eliot', 'Louisville', 'KY', '40225', '502-816-8858', 'darlet@freewebs.com', 'F'),
(13, 'Burke', 'Ashborne', 'Arizona', 'Louisville', 'KY', '40256', '502-825-6754', 'bashborne7f@devhub.com', 'M'),
(14, 'Lynnett', 'Ashborne', 'Arizona', 'Louisville', 'KY', '40256', '502-825-6755', 'lashborne@devhub.com', 'F'),
(15, 'Trevar', 'Attride', 'Schmedema', 'Louisville', 'KY', '40220', '502-509-6325', 'tattride4p@freewebs.com', 'M'),
(16, 'Effie', 'Attride', 'Schmedema', 'Louisville', 'KY', '40220', '502-509-6326', 'eattride@freewebs.com', 'F'),
(17, 'Hurley', 'Bagot', 'Hefferna', 'Louisville', 'KY', '40215', '502-295-6027', 'hbagothn@icq.com', 'M'),
(18, 'Rosemary', 'Bagot', 'Hefferna', 'Louisville', 'KY', '40215', '502-295-6028', 'rbagot@icq.com', 'F'),
(19, 'Aristotle', 'Bakes', 'Onsgard', 'Louisville', 'KY', '40298', '502-638-0911', 'abakespy@angelfire.com', 'M'),
(20, 'Hedda', 'Bakes', 'Onsgard', 'Louisville', 'KY', '40298', '502-638-0912', 'hbakes@angelfire.com', 'F'),
(21, 'Morrie', 'Balchi', 'North', 'Louisville', 'KY', '40280', '502-616-6393', 'mbalchinc@unicef.org', 'M'),
(22, 'Valina', 'Balchi', 'North', 'Louisville', 'KY', '40280', '502-616-6394', 'vbalchin@unicef.org', 'F'),
(23, 'Dave', 'Balfour', 'Larry', 'Louisville', 'KY', '40293', '502-983-9021', 'dbalfour5d@github.io', 'M'),
(24, 'Orsa', 'Balfour', 'Larry', 'Louisville', 'KY', '40293', '502-983-9022', 'obalfour@github.io', 'F'),
(25, 'Irwi', 'Bangle', 'School', 'Louisville', 'KY', '40293', '502-958-7185', 'ibangle9p@mail.ru', 'M'),
(26, 'Christea', 'Bangle', 'School', 'Louisville', 'KY', '40293', '502-958-7186', 'cbangle@mail.ru', 'F'),
(27, 'Giustino', 'Barhem', 'Utah', 'Louisville', 'KY', '40215', '502-336-7714', 'gbarhemb7@ask.com', 'M'),
(28, 'Laury', 'Barhem', 'Utah', 'Louisville', 'KY', '40215', '502-336-7715', 'lbarhem@ask.com', 'F'),
(29, 'Ozzy', 'Baudrey', 'Fieldstone', 'Louisville', 'KY', '40220', '502-206-4243', 'obaudreycy@spotify.com', 'M'),
(30, 'Aubry', 'Baudrey', 'Fieldstone', 'Louisville', 'KY', '40220', '502-206-4244', 'abaudrey@spotify.com', 'F'),
(31, 'Allister', 'Beagrie', 'Alpine', 'Louisville', 'KY', '40250', '502-794-2063', 'abeagriei2@elegantthemes.com', 'M'),
(32, 'Johnath', 'Beagrie', 'Alpine', 'Louisville', 'KY', '40250', '502-794-2064', '', 'F'),
(33, 'Bale', 'Beard', 'Scoville', 'Louisville', 'KY', '40298', '502-669-4890', 'bbeardpc@uol.com.br', 'M'),
(34, 'Dido', 'Beard', 'Scoville', 'Louisville', 'KY', '40298', '502-669-4891', 'dbeard@uol.com.br', 'F'),
(35, 'Joseph', 'Beaudry', 'Old Gate', 'Louisville', 'KY', '40293', '502-239-7429', 'jbeaudryrb@bbc.co.uk', 'M'),
(36, 'Chandra', 'Beaudry', 'Old Gate', 'Louisville', 'KY', '40293', '502-239-7430', 'cbeaudry@bbc.co.uk', 'F'),
(37, 'Ingrim', 'Beavingto', 'Daystar', 'Louisville', 'KY', '40220', '502-508-5742', 'ibeavington3g@soup.io', 'M'),
(38, 'Cheslie', 'Beavingto', 'Daystar', 'Louisville', 'KY', '40220', '502-508-5743', 'cbeavington@soup.io', 'F'),
(39, 'Llywelly', 'Becarra', 'Kipling', 'Louisville', 'KY', '40287', '502-886-2897', 'lbecarrarr@last.fm', 'M'),
(40, 'Gwennie', 'Becarra', 'Kipling', 'Louisville', 'KY', '40287', '502-886-2898', 'gbecarra@last.fm', 'F'),
(41, 'Buckie', 'Becks', 'Hansons', 'Louisville', 'KY', '40210', '502-624-8202', 'bbecksh6@lulu.com', 'M'),
(42, 'Tanitansy', 'Becks', 'Hansons', 'Louisville', 'KY', '40210', '502-624-8203', 'tbecks@lulu.com', 'F'),
(43, 'Gale', 'Beevis', 'Grim', 'Louisville', 'KY', '40298', '502-364-4390', 'gbeevis45@github.com', 'M'),
(44, 'Brandie', 'Beevis', 'Grim', 'Louisville', 'KY', '40298', '502-364-4391', 'bbeevis@github.com', 'F'),
(45, 'Bradney', 'Benduh', 'Toba', 'Louisville', 'KY', '40293', '502-387-0886', 'bbenduhnlv@istockphoto.com', 'M'),
(46, 'Joannes', 'Benduh', 'Toba', 'Louisville', 'KY', '40293', '502-387-0887', 'jbenduhn@istockphoto.com', 'F'),
(47, 'Egor', 'Benedettini', 'Northwester', 'Louisville', 'KY', '40266', '502-358-6132', 'ebenedettinidy@printfriendly.com', 'M'),
(48, 'Sheri', 'Benedettini', 'Northwester', 'Louisville', 'KY', '40266', '502-358-6133', 'sbenedettini@printfriendly.com', 'F'),
(49, 'Rafe', 'Bickerto', 'Mockingbird', 'Louisville', 'KY', '40293', '502-557-2995', 'rbickertonla@netvibes.com', 'M'),
(50, 'Shanie', 'Bickerto', 'Mockingbird', 'Louisville', 'KY', '40293', '502-557-2996', 'sbickerton@netvibes.com', 'F'),
(51, 'Sigmund', 'Bilto', 'Fallview', 'Louisville', 'KY', '40266', '502-420-6460', 'sbilton5l@phoca.cz', 'M'),
(52, 'Lesly', 'Bilto', 'Fallview', 'Louisville', 'KY', '40266', '502-420-6461', 'lbilton@phoca.cz', 'F'),
(53, 'Thadeus', 'Birchner', 'Fairview', 'Louisville', 'KY', '40280', '502-158-9565', 'tbirchner4h@csmonitor.com', 'M'),
(54, 'Carrie', 'Birchner', 'Fairview', 'Louisville', 'KY', '40280', '502-158-9566', 'cbirchner@csmonitor.com', 'F'),
(55, 'Westbrook', 'Bjerka', 'Truax', 'Louisville', 'KY', '40287', '502-379-8796', '', 'M'),
(56, 'Wilona', 'Bjerka', 'Truax', 'Louisville', 'KY', '40287', '502-379-8797', 'wbjerkan@imgur.com', 'F'),
(57, 'Jeffrey', 'Bollands', 'Scoville', 'Louisville', 'KY', '40215', '502-404-7073', 'jbollands2t@weebly.com', 'M'),
(58, 'Babb', 'Bollands', 'Scoville', 'Louisville', 'KY', '40215', '502-404-7074', 'bbollands@weebly.com', 'F'),
(59, 'Justus', 'Boneham', 'Tomscot', 'Louisville', 'KY', '40225', '502-988-2133', 'jbonehamci@pbs.org', 'M'),
(60, 'Nettie', 'Boneham', 'Tomscot', 'Louisville', 'KY', '40225', '502-988-2134', 'nboneham@pbs.org', 'F'),
(61, 'Barth', 'Bosward', 'Hermina', 'Louisville', 'KY', '40225', '502-940-7175', 'bbosward3x@bloomberg.com', 'M'),
(62, 'Dedra', 'Bosward', 'Hermina', 'Louisville', 'KY', '40225', '502-940-7176', 'dbosward@bloomberg.com', 'F'),
(63, 'Rolando', 'Bottlestone', 'Magdeline', 'Louisville', 'KY', '40287', '502-444-6693', 'rbottlestonep7@mtv.com', 'M'),
(64, 'Aily', 'Bottlestone', 'Magdeline', 'Louisville', 'KY', '40287', '502-444-6694', 'abottlestone@mtv.com', 'F'),
(65, 'Templeto', 'Bozier', 'Bunting', 'Louisville', 'KY', '40215', '502-553-2768', 'tbozierji@merriam-webster.com', 'M'),
(66, 'Estell', 'Bozier', 'Bunting', 'Louisville', 'KY', '40215', '502-553-2769', 'ebozier@merriam-webster.com', 'F'),
(67, 'Glende', 'Bracegirdle', 'Straubel', 'Louisville', 'KY', '40233', '502-531-1399', 'gbracegirdleo2@scribd.com', 'M'),
(68, 'Valentia', 'Bracegirdle', 'Straubel', 'Louisville', 'KY', '40233', '502-531-1398', 'vbracegirdle@scribd.com', 'F'),
(69, 'Harwilll', 'Bradforth', 'Laurel', 'Louisville', 'KY', '40210', '502-970-0462', 'hbradforth4r@soundcloud.com', 'M'),
(70, 'Clerc', 'Bradforth', 'Packers', 'Louisville', 'KY', '40210', '502-566-5883', 'cbradforthlu@liveinternet.ru', 'M'),
(71, 'Malissia', 'Bradforth', 'Laurel', 'Louisville', 'KY', '40210', '502-970-0463', 'mbradforth@soundcloud.com', 'F'),
(72, 'Prudy', 'Bradforth', 'Packers', 'Louisville', 'KY', '40210', '502-566-5884', 'pbradforth@liveinternet.ru', 'F'),
(73, 'Marshal', 'Brainsby', 'Warbler', 'Louisville', 'KY', '40266', '502-873-4962', 'mbrainsbynd@salon.com', 'M'),
(74, 'Dnire', 'Brainsby', 'Warbler', 'Louisville', 'KY', '40266', '502-873-4963', 'dbrainsby@salon.com', 'F'),
(75, 'Cory', 'Brewerto', 'Harper', 'Louisville', 'KY', '40293', '502-339-7429', 'cbrewertonhy@amazon.co.jp', 'M'),
(76, 'Charmine', 'Brewerto', 'Harper', 'Louisville', 'KY', '40293', '502-339-7430', 'cbrewerton@amazon.co.jp', 'F'),
(77, 'Howard', 'Brignall', NULL, 'Louisville', 'KY', '40293', '502-183-2059', 'hbrignalldj@noaa.gov', 'M'),
(78, 'Genny', 'Brignall', NULL, 'Louisville', 'KY', '40293', '502-183-2060', 'gbrignall@noaa.gov', 'F'),
(79, 'Shaw', 'Bulch', 'Kenwood', 'Louisville', 'KY', '40256', '502-901-9395', 'sbulchmr@tripadvisor.com', 'M'),
(80, 'Catlee', 'Bulch', 'Kenwood', 'Louisville', 'KY', '40256', '502-901-9396', 'cbulch@tripadvisor.com', 'F'),
(81, 'Gu', 'Burchell', 'Jackso', 'Louisville', 'KY', '40287', '502-705-8369', 'gburchell6r@kickstarter.com', 'M'),
(82, 'Bernardina', 'Burchell', 'Jackso', 'Louisville', 'KY', '40287', '502-705-8370', 'bburchell@kickstarter.com', 'F'),
(83, 'Art', 'Caldwell', 'Bultma', 'Louisville', 'KY', '40215', '502-356-4595', 'acaldwellms@who.int', 'M'),
(84, 'Pansy', 'Caldwell', 'Bultma', 'Louisville', 'KY', '40215', '502-356-4596', 'pcaldwell@who.int', 'F'),
(85, 'Pasquale', 'Canepe', 'Jenna', 'Louisville', 'KY', '40287', '502-937-3749', 'pcanepe3q@51.la', 'M'),
(86, 'Aviva', 'Canepe', 'Jenna', 'Louisville', 'KY', '40287', '502-937-3750', 'acanepe@51.la', 'F'),
(87, 'Artie', 'Carlick', 'Carpenter', 'Louisville', 'KY', '40210', '502-442-2004', 'acarlickx@msu.edu', 'M'),
(88, 'Sidoney', 'Carlick', 'Carpenter', 'Louisville', 'KY', '40210', '502-442-2005', 'scarlick@msu.edu', 'F'),
(89, 'Eri', 'Carnie', 'Warner', 'Louisville', 'KY', '40215', '502-480-1183', 'ecarnieh@360.c', 'M'),
(90, 'Holly-anne', 'Carnie', 'Warner', 'Louisville', 'KY', '40215', '502-480-1184', 'hcarnie@360.c', 'F'),
(91, 'Khalil', 'Castelletti', 'Village', 'Louisville', 'KY', '40220', '502-857-4633', 'kcastelletti5r@hc360.com', 'M'),
(92, 'Sybille', 'Castelletti', 'Village', 'Louisville', 'KY', '40220', '502-857-4634', 'scastelletti@hc360.com', 'F'),
(93, 'Hale', 'Cawsto', 'Stuart', 'Louisville', 'KY', '40287', '502-600-0003', 'hcawstonde@twitpic.com', 'M'),
(94, 'Miofmela', 'Cawsto', '', '', '', '', '502-600-0004', '', 'F'),
(95, 'Graehme', 'Chastenet', 'Grasskamp', 'Louisville', 'KY', '40220', '502-127-8893', 'gchastenets@networkadvertising.org', 'M'),
(96, 'Tamarra', 'Chastenet', 'Grasskamp', 'Louisville', 'KY', '40220', '502-127-8894', 'tchastenet@networkadvertising.org', 'F'),
(97, 'Barnebas', 'Checchetelli', 'Acker', 'Louisville', 'KY', '40287', '502-313-2076', 'bchecchetellik2@mashable.com', 'M'),
(98, 'Brinna', 'Checchetelli', 'Acker', 'Louisville', 'KY', '40287', '502-313-2077', 'bchecchetelli@mashable.com', 'F'),
(99, 'Talyah', 'Dayce', 'Jenifer', 'Louisville', 'KY', '40293', '502-489-7794', 'tdayce@scientificamerican.com', 'F')


CREATE NONCLUSTERED INDEX IX_Parents_LastName_FirstName 
ON Parents ( LastName, FirstName )


--Create DayCare Table, Insert Data
CREATE TABLE [dbo].[DayCare]( 
DayCareID int PRIMARY KEY not null,
DayCareName varchar(100) not null,
StreetName varchar(100) not null,
CityName varchar(100) not null,
StateName varchar(2),
PostalCode varchar(5)
)

INSERT INTO [dbo].[DayCare] ([DayCareID], [DayCareName], [StreetName], [CityName], [StateName], [PostalCode])
VALUES (1, 'ABC123 Daycare', '123 Daycare Blvd', 'Louisville', 'KY', '40250'), (2, 'KidsLearnHere', '1489 Learning Way', 'Louisville', 'KY', '40287')


--Create Teacher Table, Insert Data, Create Index
CREATE TABLE [dbo].[Teacher] (
TeacherID int PRIMARY KEY not null,
FirstName varchar(50) not null,
LastName varchar(50) not null,
HireDate date,
ClassAge int,
DayCareID int FOREIGN KEY REFERENCES [DayCare](DayCareID)
)

INSERT INTO [dbo].Teacher (TeacherID, FirstName, LastName, HireDate, ClassAge, DayCareID)
VALUES (1, 'Kari', 'Louder', '12/3/2015', 1, 1),
(2, 'Melvin', 'Sarsons', '8/8/2019', 1, 2),
(3, 'Mohammed', 'Howle', '3/1/2014',2, 1),
(4, 'Jamal', 'Hawkswood', '8/2/2017', 2, 2),
(5, 'Jedd', 'Whyke', '1/31/2015', 3, 1),
(6, 'Ernaline', 'Arthan', '1/11/2013', 3, 2),
(7, 'Helen', 'Higginbottam', '8/11/2016', 4, 1),
(8, 'Beatriz', 'Momery', '10/31/2018', 4, 2),
(9, 'Nadeen', 'Scally', '3/18/2020', 5, 1),
(10, 'Catrina', 'Keaves', '2/6/2017', 5, 2),
(11, 'Rafaelita', 'Pilgrim', '9/11/2011', 6, 1),
(12, 'Vivien', 'VanBurg', '8/2/2015',6, 2),
(13, 'Jaelyn', 'Skaggs', '10/01/2020',1,2)

CREATE NONCLUSTERED INDEX IX_Teacher_LastName 
ON Teacher (LastName)


--Create Child Table, Insert Data, Create Index
CREATE TABLE [dbo].[Children]( 
ChildID int PRIMARY KEY not null,
FirstName varchar(100) not null,
LastName varchar(100) not null,
Gender varchar(1) not null,
ChildAge int not null,
MonthlyFee money not null,
EnrollmentDate date not null,
TeacherID int FOREIGN KEY REFERENCES [Teacher](TeacherID)
)

INSERT INTO [dbo].Children (ChildID, FirstName, LastName, Gender, ChildAge, MonthlyFee, EnrollmentDate,TeacherID)
VALUES (1,'Dane','Ada','M',5,1000,'08/15/2020',9), 
(2,'Trever','Adao','M',3,950,'4/27/2020',5), 
(3,'Orion','Adao','M',2,900,'4/27/2020',3), 
(4,'Gunner','Adney','M',6,1000,'7/13/2020',12), 
(5,'Shirleen','Adney','F',4,950,'7/13/2020',8), 
(6,'Stanislas','Alcalde','M',2,1000,'5/17/2020',3), 
(7,'Fey','Alsford','F',6,1000,'7/15/2019',11), 
(8,'Hurlee','Alvarado','M',5,1000,'8/01/2020',10), 
(9,'Dal','Alvarado','M',1,950,'8/01/2020',1), 
(10,'Yorker','Arlet','M',5,1000,'8/02/2020',9),
(11,'Allard','Ashborne','M',3,1000,'07/29/2020',5), 
(12,'Paula','Attride','F',3,1000,'8/15/2020',5),
(13,'Rance','Attride','M',3,950,'8/15/2020',5), 
(14,'Maryann','Bagot','F',6,1000,'3/15/2020',11), 
(15,'Adan','Bakes','F',3,1000,'8/01/2020',5), 
(16,'Vinnie','Balchin','F',3,1000,'7/23/2020',6),
(17,'Carlotta','Balfour','F',4,1000,'8/20/2020',7), 
(18,'Nichol','Bangle','F',5,1000,'2/17/2020',9), 
(19,'Rudolph','Barhem','M',1,1000, '8/15/2017',1), 
(20,'Briney','Baudrey','F',6,1000, '8/15/2020',11),
(21,'Skyler','Beagrie','M',5,1000,'7/28/2017',9), 
(22,'Laryssa','Beard','F',1,1000, '8/01/2020',1), 
(23,'Beverley','Beaudry','F',2,1000,'8/15/2018',3), 
(24,'Clyve','Beavington','M',2,1000,'06/01/2019',3),
(25,'Daune','Becarra','F',5,1000,'7/30/2018',10), 
(26,'Nicky','Becarra','M',5,950,'05/25/2020',10), 
(27,'Noach','Becarra','M',3,900,'9/01/2018',6), 
(28,'Bancroft','Becks','M',5,1000,'10/06/2020',9),
(29,'Felita','Beevis','F',3,1000,'8/05/2020',5),
(30,'Adelice','Beevis','F',2,950,'07/17/2020',3), 
(31,'Claudia','Benduhn','F',5,1000,'8/22/2020',9), 
(32,'Noelyn','Benedettini','F',3,1000, '8/15/2020',6), 
(33,'Anastassia','Bickerton','F',5,1000,'09/01/2020',10),
(34,'Waiter','Bickerton','M',2,950,'8/01/2020',4),
(35,'Cherey','Bilton','F',6,1000,'8/23/2020',12), 
(36,'Teddy','Birchner','M',6,1000,'06/15/2020',12), 
(37,'Luce','Bjerkan','F',5,1000,'8/01/2020',10), 
(38,'Diarmid','Bollands','M',5,1000, '8/01/2020',10),
(39,'Fionnula','Boneham','F',4,1000,'8/23/2020',7),
(40,'Bradley','Bosward','M',6,1000,'06/01/2020',12),
(41,'Kassia','Bottlestone','F',4,1000,'7/25/2020',7), 
(42,'Siffre','Bozier','M',5,1000, '8/15/2020',10), 
(43,'Aluino','Bracegirdle','M',2,1000,'8/01/2020',4),
(44,'Hunfredo','Bradforth','M',1,1000,'08/01/2019',1), 
(45,'Freemon','Brainsby','M',2,1000,'8/23/2020',4),
(46,'Joanne','Brewerton','F',1,1000,'01/03/2020',1), 
(47,'Karna','Brignall','F',1,1000,'8/22/2020',2),
(48,'Gerianne','Bulch','F',2,1000,'05/17/2020',4), 
(49,'Kerwinn','Burchell','M',5,1000,'8/01/2020',10),
(50,'Correy','Caldwell','M',6,1000,'03/11/2020',11), 
(51,'Josh','Caldwell','F',2,950,'8/23/2020',3),
(52,'Delmar','Canepe','M',3,1000,'01/22/2020',6),
(53,'Kerianne','Carlick','F',4,1000,'01/05/2019',8), 
(54,'Lucia','Carnie','F',1,1000, '8/01/2020',2), 
(55,'Nonna','Castelletti','F',6,1000,'12/01/2019',12),
(56,'Jobina','Castelletti','F',1,950,'07/03/2020',2), 
(57,'Devon','Cawston','F',4,1000,'10/15/2020',8),
(58,'Shelba','Chastenet','F',1,1000, '8/02/2020',2),
(59,'Marleen','Checchetelli','F',1,1000,'6/1/2020',2), 
(60,'Shepard','Dayce','M',1,1000,'10/28/2019',2),
(61,'Devon','Roylin','F',1,950,'10/15/2020', null),
(62,'Devon','Jacy','F',2,1000,'10/15/2020',null)

CREATE NONCLUSTERED INDEX IX_Children_LastName_FirstName 
ON Children ( LastName, FirstName )
INCLUDE (ChildAge)


--Create Parent_Child Table, Insert Data, Create Index
CREATE TABLE [dbo].[Parent_Child]( 
ParentID int FOREIGN KEY References dbo.Parents(ParentID),
ChildID int FOREIGN KEY References dbo.Children(ChildID),
CONSTRAINT Parent_Children PRIMARY KEY ([ParentID], [ChildID])
)
 
INSERT INTO [dbo].Parent_Child (ParentID, ChildID)
VALUES (1,1), (1,2), (1,3), (10,8), (10,9), (11,10), (12,10), (13,11), (14,11), (15,12), (15,13), (16,12), (16,13), (17,14), (18,14), (19,15), (2,1), (2,2), (2,3), (20,15), (21,16), (22,16), (23,17), (24,17), (25,18), (26,18), (27,19), (28,19), (29,20), (3,4), (3,5), (30,20), (31,21), (32,21), (33,22), (34,22), (35,23), (36,23), (37,24), (38,24), (39,25), (39,26), (39,27), (4,4), (4,5), (40,25), (40,26), (40,27), (41,28), (42,28), (43,29), (43,30), (44,29), (44,30), (45,31), (46,31), (47,32), (48,32), (49,33), (49,34), (5,6), (50,33), (50,34), (51,35), (52,35), (53,36), (54,36), (55,37), (56,37), (57,38), (58,38), (59,39), (6,6), (60,39), (61,40), (62,40), (63,41), (64,41), (65,42), (66,42), (67,43), (68,43), (69,44), (7,7), (70,44), (71,44), (72,44), (73,45), (74,45), (75,46), (76,46), (77,47), (78,47), (79,48), (8,7), (80,48), (81,49), (82,49), (83,50), (83,51), (84,50), (84,51), (85,52), (86,52), (87,53), (88,53), (89,54), (9,8), (9,9), (90,54), (91,55), (91,56), (92,55), (92,56), (93,57), (94,57), (95,58), (96,58), (97,59), (98,59), (99,60)


--Write a SELECT query that uses a WHERE clause
SELECT FirstName, LastName, ChildAge
FROM  Children
WHERE (ChildAge = 6)

--Write a SELECT query that uses an OR and an AND operator
SELECT Children.ChildID, Children.FirstName, Children.LastName, Children.ChildAge, DayCare.DayCareName
FROM  Children INNER JOIN
         Teacher ON Children.TeacherID = Teacher.TeacherID INNER JOIN
         DayCare ON Teacher.DayCareID = DayCare.DayCareID
WHERE ((Children.ChildAge = 6) OR (Children.ChildAge = 5)) AND (DayCare.DayCareName LIKE 'ABC%')

--Write a SELECT query that filters NULL rows using IS NOT NULL
SELECT ParentID, FirstName, LastName, StreetName, CityName, State, PostalCode, PhoneNumber, EmailAddress
FROM  Parents
WHERE (StreetName IS NOT NULL)

--Write a DML statement that UPDATES a set of rows with a WHERE clause.  The values used in the WHERE clause should be a variable
Declare @oldStreetName varchar(100) = 'Truax';
Declare @NewStreetName varchar(100) = 'Truax Drive';
Update dbo.Parents
SET StreetName = @NewStreetName
WHERE StreetName = @oldStreetName


--Write a SELECT query that utilizes a JOIN
SELECT Teacher.FirstName, Teacher.LastName, DayCare.DayCareName
FROM  Teacher JOIN
         DayCare ON Teacher.DayCareID = DayCare.DayCareID

--Write a SELECT query that utilizes a JOIN with 3 or more tables
SELECT Children.FirstName, Children.LastName, DayCare.DayCareName
FROM  Children LEFT JOIN
         Teacher ON Children.TeacherID = Teacher.TeacherID  JOIN
         DayCare ON Teacher.DayCareID = DayCare.DayCareID

--Write a SELECT query that utilizes a LEFT JOIN
SELECT Children.FirstName, Children.LastName, Children.ChildAge, Teacher.LastName AS TeacherLastName, Teacher.ClassAge
FROM  Children LEFT JOIN
         Teacher ON Children.TeacherID = Teacher.TeacherID

--Write a SELECT query that utilizes a variable in the WHERE clause
Declare @LastName varchar(100) = 'Pilgrim';
SELECT Children.*, Teacher.LastName AS TeacherLastName
FROM  Children INNER JOIN
         Teacher ON Children.TeacherID = Teacher.TeacherID
WHERE Teacher.LastName = @LastName


--Write a SELECT query that utilizes a ORDER BY clause
SELECT TeacherID, FirstName, LastName, HireDate, ClassAge
FROM  Teacher
ORDER BY HireDate DESC

--Write a SELECT query that utilizes a GROUP BY clause along with an aggregate function
SELECT Gender, COUNT(ChildID)
FROM  Children
GROUP BY Gender

--Write a SELECT query that utilizes a CALCULATED FIELD
SELECT MAX(ChildAge)-MIN(ChildAge)
FROM  Children

--Write a SELECT query that utilizes a SUBQUERY
SELECT AVG(ChildAge)
From Children

SELECT 
(Select  AVG(ChildAge) From Children) - ChildAge AS AgeDiff, ChildAge
FROM  Children

--Write a SELECT query that utilizes a JOIN, at least 2 OPERATORS (AND, OR, =, IN, BETWEEN, ETC) AND A GROUP BY clause with an aggregate function
SELECT DayCare.DayCareName, SUM(Children.MonthlyFee) AS MonthlyFeeSum, Children.ChildAge, Children.Gender
FROM  DayCare INNER JOIN
         Teacher ON DayCare.DayCareID = Teacher.DayCareID INNER JOIN
         Children ON Teacher.TeacherID = Children.TeacherID
WHERE (Children.ChildAge > 3) AND (Children.LastName BETWEEN 'a' AND 'c')
GROUP BY DayCare.DayCareName, Children.ChildAge, Children.Gender

/*Write a SELECT query that utilizes a JOIN with 3 or more tables, at least 2 OPERATORS (AND, OR, =, IN, BETWEEN, ETC), 
a GROUP BY clause with an aggregate function, and a HAVING clause.*/
SELECT DayCare.DayCareName, sum(Children.MonthlyFee) AS MonthlyFeeSum, Children.ChildAge, Children.Gender
FROM  DayCare INNER JOIN
         Teacher ON DayCare.DayCareID = Teacher.DayCareID INNER JOIN
         Children ON Teacher.TeacherID = Children.TeacherID
GROUP BY DayCare.DayCareName, Children.ChildAge, Children.Gender
Having DayCareName = 'KidsLearnHere' AND (Children.ChildAge =3 OR Children.ChildAge = 5)



----Write a DML statement that DELETES a set of rows with a WHERE clause.  The values used in the WHERE clause should be a variable
Declare @mychildID int
Select @mychildID = Children.ChildID
From Children
Where Children.LastName = 'Ashborne'

Select @mychildID

Delete
From Parent_Child
Where ChildID = @mychildID

Delete 
from Children
Where ChildID = @mychildID

Delete 
from Parents
where Parents.LastName = 'Ashborne'


--/*Write a DML statement that DELETES rows from a table that another table references.  This script will have to also DELETE any records that
--reference these rows.  Both of the DELETE statements need to be wrapped in a single TRANSACTION.*/
BEGIN Transaction
DELETE 
FROM Parent_Child
Where ChildID = 22

Delete 
FROM Children
Where  ChildID = 22
Commit;