/*
*********************************************************************
http://www.mysqltutorial.org
*********************************************************************
Name: MySQL Sample Database classicmodels
Link: http://www.mysqltutorial.org/mysql-sample-database.aspx
Version 3.1
+ changed data type from DOUBLE to DECIMAL for amount columns
Version 3.0
+ changed DATETIME to DATE for some colunmns
Version 2.0
+ changed table type from MyISAM to InnoDB
+ added foreign keys for all tables 
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`curity` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `curity`;

grant all privileges on curity.* to 'webapp'@'%';
flush privileges;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

CREATE TABLE `hospital` (
    `hospitalID` int(64),
    `street` varchar(64) NOT NULL,
    `city` varchar(64) NOT NULL,
    `state` varchar(64),
    PRIMARY KEY (`hospitalID`)
);

insert into hospital (hospitalID, street, city, state) values (1, 'Oak Valley', 'Wilkes Barre', 'Pennsylvania');
insert into hospital (hospitalID, street, city, state) values (2, 'Randy', 'Fort Myers', 'Florida');
insert into hospital (hospitalID, street, city, state) values (3, 'Claremont', 'Chicago', 'Illinois');
insert into hospital (hospitalID, street, city, state) values (4, 'Huxley', 'Indianapolis', 'Indiana');
insert into hospital (hospitalID, street, city, state) values (5, 'Stephen', 'Columbus', 'Ohio');
insert into hospital (hospitalID, street, city, state) values (6, 'Sycamore', 'Valdosta', 'Georgia');
insert into hospital (hospitalID, street, city, state) values (7, 'Sachtjen', 'Gainesville', 'Georgia');
insert into hospital (hospitalID, street, city, state) values (8, 'Service', 'Hialeah', 'Florida');
insert into hospital (hospitalID, street, city, state) values (9, 'Westridge', 'Tacoma', 'Washington');
insert into hospital (hospitalID, street, city, state) values (10, 'Walton', 'Richmond', 'Virginia');
insert into hospital (hospitalID, street, city, state) values (11, 'Lien', 'Fort Lauderdale', 'Florida');
insert into hospital (hospitalID, street, city, state) values (12, 'Annamark', 'Jamaica', 'New York');
insert into hospital (hospitalID, street, city, state) values (13, 'Prairieview', 'Prescott', 'Arizona');
insert into hospital (hospitalID, street, city, state) values (14, 'Sauthoff', 'San Antonio', 'Texas');
insert into hospital (hospitalID, street, city, state) values (15, 'Esker', 'New York City', 'New York');
insert into hospital (hospitalID, street, city, state) values (16, 'Dawn', 'Charlottesville', 'Virginia');
insert into hospital (hospitalID, street, city, state) values (17, 'Fremont', 'Sacramento', 'California');
insert into hospital (hospitalID, street, city, state) values (18, 'Heath', 'Odessa', 'Texas');
insert into hospital (hospitalID, street, city, state) values (19, 'Artisan', 'San Antonio', 'Texas');
insert into hospital (hospitalID, street, city, state) values (20, 'Hanover', 'Battle Creek', 'Michigan');
insert into hospital (hospitalID, street, city, state) values (21, 'Almo', 'Bronx', 'New York');
insert into hospital (hospitalID, street, city, state) values (22, 'Mandrake', 'Duluth', 'Minnesota');
insert into hospital (hospitalID, street, city, state) values (23, 'Sachs', 'San Francisco', 'California');
insert into hospital (hospitalID, street, city, state) values (24, 'Golf Course', 'Montgomery', 'Alabama');
insert into hospital (hospitalID, street, city, state) values (25, 'Acker', 'Springfield', 'Missouri');
insert into hospital (hospitalID, street, city, state) values (26, 'Evergreen', 'Naples', 'Florida');
insert into hospital (hospitalID, street, city, state) values (27, 'Hayes', 'Sandy', 'Utah');
insert into hospital (hospitalID, street, city, state) values (28, 'Graceland', 'Anchorage', 'Alaska');
insert into hospital (hospitalID, street, city, state) values (29, 'Magdeline', 'Racine', 'Wisconsin');
insert into hospital (hospitalID, street, city, state) values (30, 'Grayhawk', 'Sacramento', 'California');

CREATE TABLE `branch` (
    `branchID` int(64),
    `branch_phone` int(10),
    `hospitalID` int(64),
    PRIMARY KEY (`branchID`),
    FOREIGN KEY (`hospitalID`) REFERENCES `hospital` (`hospitalID`)
);

insert into branch (branchID, branch_phone, hospitalID) values (1, '216-942-1494', 1);
insert into branch (branchID, branch_phone, hospitalID) values (2, '141-542-1389', 2);
insert into branch (branchID, branch_phone, hospitalID) values (3, '884-717-3724', 3);
insert into branch (branchID, branch_phone, hospitalID) values (4, '520-765-8111', 4);
insert into branch (branchID, branch_phone, hospitalID) values (5, '775-728-5148', 5);
insert into branch (branchID, branch_phone, hospitalID) values (6, '553-720-2393', 6);
insert into branch (branchID, branch_phone, hospitalID) values (7, '362-475-4588', 7);
insert into branch (branchID, branch_phone, hospitalID) values (8, '559-641-5649', 8);
insert into branch (branchID, branch_phone, hospitalID) values (9, '322-345-1655', 9);
insert into branch (branchID, branch_phone, hospitalID) values (10, '194-291-5073', 10);
insert into branch (branchID, branch_phone, hospitalID) values (11, '207-883-4853', 11);
insert into branch (branchID, branch_phone, hospitalID) values (12, '683-159-7167', 12);
insert into branch (branchID, branch_phone, hospitalID) values (13, '106-364-0984', 13);
insert into branch (branchID, branch_phone, hospitalID) values (14, '743-238-5313', 14);
insert into branch (branchID, branch_phone, hospitalID) values (15, '621-873-0199', 15);
insert into branch (branchID, branch_phone, hospitalID) values (16, '865-280-9107', 16);
insert into branch (branchID, branch_phone, hospitalID) values (17, '423-266-8443', 17);
insert into branch (branchID, branch_phone, hospitalID) values (18, '462-903-7855', 18);
insert into branch (branchID, branch_phone, hospitalID) values (19, '159-754-5604', 19);
insert into branch (branchID, branch_phone, hospitalID) values (20, '249-259-2828', 20);
insert into branch (branchID, branch_phone, hospitalID) values (21, '300-354-1068', 21);
insert into branch (branchID, branch_phone, hospitalID) values (22, '195-536-9608', 22);
insert into branch (branchID, branch_phone, hospitalID) values (23, '517-288-4149', 23);
insert into branch (branchID, branch_phone, hospitalID) values (24, '693-791-6241', 24);
insert into branch (branchID, branch_phone, hospitalID) values (25, '870-217-7569', 25);
insert into branch (branchID, branch_phone, hospitalID) values (26, '757-691-9959', 26);
insert into branch (branchID, branch_phone, hospitalID) values (27, '637-325-6562', 27);
insert into branch (branchID, branch_phone, hospitalID) values (28, '993-933-9630', 28);
insert into branch (branchID, branch_phone, hospitalID) values (29, '791-185-6052', 29);
insert into branch (branchID, branch_phone, hospitalID) values (30, '433-660-9098', 30);

CREATE TABLE `doctor` (
    `doctorID` int(64),
    `first_name` varchar(64) NOT NULL,
    `last_name` varchar(64) NOT NULL,
    `specialization` varchar(64),
    `phone` int(10),
    `email` varchar(64),
    `branchID` int(64),
    PRIMARY KEY (`doctorID`),
    FOREIGN KEY (`branchID`) REFERENCES `branch` (`branchID`)
);

insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (1, 'Maud', 'Simonini', 'health', '542-691-7189', 'msimonini0@blog.com', 1);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (2, 'Vanny', 'Thorn', 'health', '546-952-2767', 'vthorn1@omniture.com', 2);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (3, 'Aryn', 'Muddimer', 'health', '622-381-3886', 'amuddimer2@booking.com', 3);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (4, 'Arch', 'Klimaszewski', 'health', '543-462-6962', 'aklimaszewski3@geocities.com', 4);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (5, 'Skip', 'Levane', 'health', '473-517-9950', 'slevane4@prlog.org', 5);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (6, 'Ellsworth', 'Coppeard', 'health', '205-985-1025', 'ecoppeard5@dmoz.org', 6);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (7, 'Emmie', 'Leggon', 'health', '248-508-4262', 'eleggon6@ibm.com', 7);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (8, 'Saleem', 'Jamison', 'health', '437-910-9137', 'sjamison7@state.tx.us', 8);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (9, 'Corbie', 'Rentilll', 'health', '942-487-3120', 'crentilll8@wp.com', 9);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (10, 'Huey', 'Andrejevic', 'health', '174-604-5516', 'handrejevic9@shareasale.com', 10);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (11, 'Anet', 'Gorhardt', 'health', '262-399-0967', 'agorhardta@nih.gov', 6);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (12, 'Matthew', 'Stace', 'health', '142-484-5011', 'mstaceb@microsoft.com', 9);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (13, 'Sharleen', 'Longmire', 'health', '373-394-7014', 'slongmirec@fema.gov', 23);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (14, 'Lindi', 'Burder', 'health', '889-564-7340', 'lburderd@elpais.com', 13);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (15, 'Sebastiano', 'Paddle', 'health', '738-965-7333', 'spaddlee@ihg.com', 13);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (16, 'Georgena', 'Verbruggen', 'health', '765-772-9464', 'gverbruggenf@state.tx.us', 11);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (17, 'Ertha', 'O''Grada', 'health', '557-426-2562', 'eogradag@technorati.com', 6);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (18, 'Constancy', 'Chillingsworth', 'health', '343-361-5701', 'cchillingsworthh@dropbox.com', 28);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (19, 'Ingamar', 'Lowthian', 'health', '652-749-5247', 'ilowthiani@tamu.edu', 12);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (20, 'Valeda', 'Quidenham', 'health', '775-227-6186', 'vquidenhamj@jiathis.com', 25);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (21, 'Neil', 'Castellaccio', 'health', '118-442-2660', 'ncastellacciok@so-net.ne.jp', 6);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (22, 'Odelinda', 'Turk', 'health', '631-559-8420', 'oturkl@friendfeed.com', 6);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (23, 'Pietrek', 'Euplate', 'health', '867-245-2734', 'peuplatem@t.co', 15);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (24, 'Carilyn', 'Palfrie', 'health', '984-862-4089', 'cpalfrien@illinois.edu', 15);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (25, 'Lexis', 'Barnhart', 'health', '958-411-4270', 'lbarnharto@kickstarter.com', 14);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (26, 'Rachel', 'Brownill', 'health', '786-548-3329', 'rbrownillp@last.fm', 20);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (27, 'Anthe', 'Crunden', 'health', '785-764-4723', 'acrundenq@diigo.com', 19);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (28, 'Hailey', 'Abbatucci', 'health', '913-428-2724', 'habbatuccir@smugmug.com', 4);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (29, 'Steffane', 'Gommes', 'health', '365-165-6773', 'sgommess@noaa.gov', 10);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (30, 'Alfons', 'Scamadin', 'health', '637-265-6514', 'ascamadint@irs.gov', 13);



CREATE TABLE `patients` (
    `firstName` varchar(50),
    `lastName` varchar(50),
    `patientID` int(11),
    `doctorID` int(11),
    PRIMARY KEY (`patientID`),
    FOREIGN KEY (`doctorID`) REFERENCES `doctor` (`doctorID`)

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

insert into patients (firstName, lastName, patientID, doctorID) values ('Tawsha', 'Laurenceau', 1, 1);
insert into patients (firstName, lastName, patientID, doctorID) values ('Christopher', 'Gethins', 2, 2);
insert into patients (firstName, lastName, patientID, doctorID) values ('Putnam', 'Pledger', 3, 3);
insert into patients (firstName, lastName, patientID, doctorID) values ('Allistir', 'Chesher', 4, 4);
insert into patients (firstName, lastName, patientID, doctorID) values ('Kaia', 'Laird', 5, 5);
insert into patients (firstName, lastName, patientID, doctorID) values ('Aigneis', 'Cheves', 6, 6);
insert into patients (firstName, lastName, patientID, doctorID) values ('Rogerio', 'Hazart', 7, 7);
insert into patients (firstName, lastName, patientID, doctorID) values ('Rosie', 'Hollow', 8, 8);
insert into patients (firstName, lastName, patientID, doctorID) values ('Annemarie', 'Brunicke', 9, 9);
insert into patients (firstName, lastName, patientID, doctorID) values ('Alon', 'Yvon', 10, 10);
insert into patients (firstName, lastName, patientID, doctorID) values ('Matt', 'Williams', 11, 1);
insert into patients (firstName, lastName, patientID, doctorID) values ('Tony', 'Simmons', 12, 1);
insert into patients (firstName, lastName, patientID, doctorID) values ('Taylor', 'Sockford', 13, 1);
insert into patients (firstName, lastName, patientID, doctorID) values ('Bobby', 'Christopher', 14, 1);
insert into patients (firstName, lastName, patientID, doctorID) values ('Berna', 'Gianolini', 15, 23);
insert into patients (firstName, lastName, patientID, doctorID) values ('Prescott', 'Pomphrey', 16, 19);
insert into patients (firstName, lastName, patientID, doctorID) values ('Wald', 'Habden', 17, 19);
insert into patients (firstName, lastName, patientID, doctorID) values ('Vincent', 'Asty', 18, 2);
insert into patients (firstName, lastName, patientID, doctorID) values ('Peterus', 'Bryning', 19, 11);
insert into patients (firstName, lastName, patientID, doctorID) values ('Jesus', 'Dionisetti', 20, 29);
insert into patients (firstName, lastName, patientID, doctorID) values ('Joya', 'Doucette', 21, 9);
insert into patients (firstName, lastName, patientID, doctorID) values ('Ali', 'Helstrom', 22, 17);
insert into patients (firstName, lastName, patientID, doctorID) values ('Birgitta', 'Brisseau', 23, 9);
insert into patients (firstName, lastName, patientID, doctorID) values ('Darnell', 'Cruise', 24, 13);
insert into patients (firstName, lastName, patientID, doctorID) values ('Merv', 'Harroll', 25, 24);
insert into patients (firstName, lastName, patientID, doctorID) values ('Newton', 'Eagers', 26, 16);
insert into patients (firstName, lastName, patientID, doctorID) values ('Seward', 'Juste', 27, 1);
insert into patients (firstName, lastName, patientID, doctorID) values ('Leslie', 'Biggam', 28, 30);
insert into patients (firstName, lastName, patientID, doctorID) values ('Ashley', 'Cronshaw', 29, 1);
insert into patients (firstName, lastName, patientID, doctorID) values ('Verla', 'Becerra', 30, 25);


CREATE TABLE `field` (
    `fieldID` int(64),
    `name` varchar(64) NOT NULL,
    `specialty` varchar(64),
    PRIMARY KEY (`fieldID`)
);

insert into field (fieldID, name, specialty) values (1, 'optical', 'laser eye care');
insert into field (fieldID, name, specialty) values (2, 'surgical', 'ER surgery');
insert into field (fieldID, name, specialty) values (3, 'oral', 'dental hygiene');
insert into field (fieldID, name, specialty) values (4, 'oral', 'Invisalign');
insert into field (fieldID, name, specialty) values (5, 'surgical', 'ER surgery');
insert into field (fieldID, name, specialty) values (6, 'pediatrics', 'general checkup');
insert into field (fieldID, name, specialty) values (7, 'pediatrics', null);
insert into field (fieldID, name, specialty) values (8, 'general', 'vaccination');
insert into field (fieldID, name, specialty) values (9, 'general', 'blood testing');
insert into field (fieldID, name, specialty) values (10, 'general', null);
insert into field (fieldID, name, specialty) values (11, 'optical', 'vaccination');
insert into field (fieldID, name, specialty) values (12, 'general', 'blood testing');
insert into field (fieldID, name, specialty) values (13, 'oral', 'blood testing');
insert into field (fieldID, name, specialty) values (14, 'optical', 'dental hygiene');
insert into field (fieldID, name, specialty) values (15, 'optical', 'blood testing');
insert into field (fieldID, name, specialty) values (16, 'optical', 'ER surgery');
insert into field (fieldID, name, specialty) values (17, 'optical', 'Invisalign');
insert into field (fieldID, name, specialty) values (18, 'pediatrics', 'general checkup');
insert into field (fieldID, name, specialty) values (19, 'general', 'general checkup');
insert into field (fieldID, name, specialty) values (20, 'general', 'general checkup');
insert into field (fieldID, name, specialty) values (21, 'surgical', 'Invisalign');
insert into field (fieldID, name, specialty) values (22, 'pediatrics', 'vaccination');
insert into field (fieldID, name, specialty) values (23, 'surgical', 'dental hygiene');
insert into field (fieldID, name, specialty) values (24, 'pediatrics', 'Invisalign');
insert into field (fieldID, name, specialty) values (25, 'surgical', 'general checkup');
insert into field (fieldID, name, specialty) values (26, 'general', 'general checkup');
insert into field (fieldID, name, specialty) values (27, 'surgical', 'laser eye care');
insert into field (fieldID, name, specialty) values (28, 'general', 'vaccination');
insert into field (fieldID, name, specialty) values (29, 'optical', 'blood testing');
insert into field (fieldID, name, specialty) values (30, 'oral', 'ER surgery');

CREATE TABLE `doctors_in_fields` (
    `doctorID` int(64),
    `fieldID` int(64),
    FOREIGN KEY (`fieldID`) REFERENCES `field` (`fieldID`),
    FOREIGN KEY (`doctorID`) REFERENCES `doctor` (`doctorID`)
);

insert into doctors_in_fields (doctorID, fieldID) values (21, 21);
insert into doctors_in_fields (doctorID, fieldID) values (6, 16);
insert into doctors_in_fields (doctorID, fieldID) values (24, 13);
insert into doctors_in_fields (doctorID, fieldID) values (9, 16);
insert into doctors_in_fields (doctorID, fieldID) values (19, 10);
insert into doctors_in_fields (doctorID, fieldID) values (7, 17);
insert into doctors_in_fields (doctorID, fieldID) values (16, 28);
insert into doctors_in_fields (doctorID, fieldID) values (28, 19);
insert into doctors_in_fields (doctorID, fieldID) values (22, 17);
insert into doctors_in_fields (doctorID, fieldID) values (4, 2);
insert into doctors_in_fields (doctorID, fieldID) values (2, 8);
insert into doctors_in_fields (doctorID, fieldID) values (15, 11);
insert into doctors_in_fields (doctorID, fieldID) values (6, 21);
insert into doctors_in_fields (doctorID, fieldID) values (10, 25);
insert into doctors_in_fields (doctorID, fieldID) values (28, 17);
insert into doctors_in_fields (doctorID, fieldID) values (6, 30);
insert into doctors_in_fields (doctorID, fieldID) values (9, 25);
insert into doctors_in_fields (doctorID, fieldID) values (16, 6);
insert into doctors_in_fields (doctorID, fieldID) values (22, 5);
insert into doctors_in_fields (doctorID, fieldID) values (5, 24);
insert into doctors_in_fields (doctorID, fieldID) values (15, 26);
insert into doctors_in_fields (doctorID, fieldID) values (29, 18);
insert into doctors_in_fields (doctorID, fieldID) values (22, 20);
insert into doctors_in_fields (doctorID, fieldID) values (12, 17);
insert into doctors_in_fields (doctorID, fieldID) values (7, 20);
insert into doctors_in_fields (doctorID, fieldID) values (14, 18);
insert into doctors_in_fields (doctorID, fieldID) values (22, 12);
insert into doctors_in_fields (doctorID, fieldID) values (26, 6);
insert into doctors_in_fields (doctorID, fieldID) values (12, 22);
insert into doctors_in_fields (doctorID, fieldID) values (26, 8);
insert into doctors_in_fields (doctorID, fieldID) values (12, 6);
insert into doctors_in_fields (doctorID, fieldID) values (23, 9);
insert into doctors_in_fields (doctorID, fieldID) values (17, 3);
insert into doctors_in_fields (doctorID, fieldID) values (26, 19);
insert into doctors_in_fields (doctorID, fieldID) values (12, 12);
insert into doctors_in_fields (doctorID, fieldID) values (4, 13);
insert into doctors_in_fields (doctorID, fieldID) values (2, 1);
insert into doctors_in_fields (doctorID, fieldID) values (28, 9);
insert into doctors_in_fields (doctorID, fieldID) values (10, 4);
insert into doctors_in_fields (doctorID, fieldID) values (21, 29);
insert into doctors_in_fields (doctorID, fieldID) values (29, 11);
insert into doctors_in_fields (doctorID, fieldID) values (12, 13);
insert into doctors_in_fields (doctorID, fieldID) values (5, 23);
insert into doctors_in_fields (doctorID, fieldID) values (29, 2);
insert into doctors_in_fields (doctorID, fieldID) values (7, 5);
insert into doctors_in_fields (doctorID, fieldID) values (27, 7);
insert into doctors_in_fields (doctorID, fieldID) values (6, 17);
insert into doctors_in_fields (doctorID, fieldID) values (10, 12);
insert into doctors_in_fields (doctorID, fieldID) values (29, 1);
insert into doctors_in_fields (doctorID, fieldID) values (22, 22);
insert into doctors_in_fields (doctorID, fieldID) values (15, 21);
insert into doctors_in_fields (doctorID, fieldID) values (22, 13);
insert into doctors_in_fields (doctorID, fieldID) values (24, 7);
insert into doctors_in_fields (doctorID, fieldID) values (21, 13);
insert into doctors_in_fields (doctorID, fieldID) values (21, 2);
insert into doctors_in_fields (doctorID, fieldID) values (18, 10);
insert into doctors_in_fields (doctorID, fieldID) values (17, 14);
insert into doctors_in_fields (doctorID, fieldID) values (16, 10);
insert into doctors_in_fields (doctorID, fieldID) values (8, 23);
insert into doctors_in_fields (doctorID, fieldID) values (28, 29);
insert into doctors_in_fields (doctorID, fieldID) values (18, 22);
insert into doctors_in_fields (doctorID, fieldID) values (2, 26);
insert into doctors_in_fields (doctorID, fieldID) values (13, 30);
insert into doctors_in_fields (doctorID, fieldID) values (29, 18);
insert into doctors_in_fields (doctorID, fieldID) values (17, 3);
insert into doctors_in_fields (doctorID, fieldID) values (15, 9);
insert into doctors_in_fields (doctorID, fieldID) values (3, 26);
insert into doctors_in_fields (doctorID, fieldID) values (20, 3);
insert into doctors_in_fields (doctorID, fieldID) values (21, 15);
insert into doctors_in_fields (doctorID, fieldID) values (21, 21);
insert into doctors_in_fields (doctorID, fieldID) values (10, 26);
insert into doctors_in_fields (doctorID, fieldID) values (30, 6);
insert into doctors_in_fields (doctorID, fieldID) values (24, 3);
insert into doctors_in_fields (doctorID, fieldID) values (29, 23);
insert into doctors_in_fields (doctorID, fieldID) values (26, 25);
insert into doctors_in_fields (doctorID, fieldID) values (2, 8);
insert into doctors_in_fields (doctorID, fieldID) values (1, 12);
insert into doctors_in_fields (doctorID, fieldID) values (30, 19);
insert into doctors_in_fields (doctorID, fieldID) values (18, 24);
insert into doctors_in_fields (doctorID, fieldID) values (18, 20);
insert into doctors_in_fields (doctorID, fieldID) values (26, 17);
insert into doctors_in_fields (doctorID, fieldID) values (23, 26);
insert into doctors_in_fields (doctorID, fieldID) values (21, 12);
insert into doctors_in_fields (doctorID, fieldID) values (12, 8);
insert into doctors_in_fields (doctorID, fieldID) values (29, 1);
insert into doctors_in_fields (doctorID, fieldID) values (21, 3);
insert into doctors_in_fields (doctorID, fieldID) values (25, 7);
insert into doctors_in_fields (doctorID, fieldID) values (29, 19);
insert into doctors_in_fields (doctorID, fieldID) values (1, 14);
insert into doctors_in_fields (doctorID, fieldID) values (8, 30);
insert into doctors_in_fields (doctorID, fieldID) values (19, 16);
insert into doctors_in_fields (doctorID, fieldID) values (2, 6);
insert into doctors_in_fields (doctorID, fieldID) values (20, 3);
insert into doctors_in_fields (doctorID, fieldID) values (7, 22);
insert into doctors_in_fields (doctorID, fieldID) values (20, 3);
insert into doctors_in_fields (doctorID, fieldID) values (10, 3);
insert into doctors_in_fields (doctorID, fieldID) values (20, 5);
insert into doctors_in_fields (doctorID, fieldID) values (3, 22);
insert into doctors_in_fields (doctorID, fieldID) values (21, 24);
insert into doctors_in_fields (doctorID, fieldID) values (27, 26);

CREATE TABLE `disease` (
    `diseaseID` int(64),
    `name` varchar(64) NOT NULL,
    `description` varchar(64) DEFAULT 'more research required',
    `precaution` varchar(64) DEFAULT 'more research required',
    PRIMARY KEY (`diseaseID`)
);

insert into disease (diseaseID, name, description, precaution) values (1, 'Malaria', 'Radiation scoliosis', 'Brigid');
insert into disease (diseaseID, name, description, precaution) values (2, 'Allergy', 'RR acc w explosion-empl', 'Ruthi');
insert into disease (diseaseID, name, description, precaution) values (3, 'Psoriasis', 'Nephritis NOS in oth dis', 'Silvester');
insert into disease (diseaseID, name, description, precaution) values (4, 'GERD', 'Hypotony due to fistula', 'Nikolos');
insert into disease (diseaseID, name, description, precaution) values (5, 'hepatitis', 'Chronic pancreatitis', 'Vale');
insert into disease (diseaseID, name, description, precaution) values (6, 'Osteoarth', 'Snow veh acc-anim rider', 'Dulcie');
insert into disease (diseaseID, name, description, precaution) values (7, 'Acne', 'Cl skul base fx-brf coma', 'Adelina');
insert into disease (diseaseID, name, description, precaution) values (8, 'Diabetes', 'Skin - kaposi''s sarcoma', 'Maynord');
insert into disease (diseaseID, name, description, precaution) values (9, 'Impetigo', 'Externl cause status NOS', 'Sioux');
insert into disease (diseaseID, name, description, precaution) values (10, 'Hypertension', 'Contusion of finger', 'Aurthur');
insert into disease (diseaseID, name, description, precaution) values (11, 'Peptic Ulcer', 'Adv eff opiat antagonist', 'Sal');
insert into disease (diseaseID, name, description, precaution) values (12, 'Common cold', 'Childhd disintegr-active', 'Keene');
insert into disease (diseaseID, name, description, precaution) values (13, 'Chicken pox', 'Acc poisn-petrol solvent', 'Elsa');
insert into disease (diseaseID, name, description, precaution) values (14, 'AIDS', 'Air embol comp med care', 'Stefa');
insert into disease (diseaseID, name, description, precaution) values (15, 'Migraine', 'Dislocat lumbar vert-opn', 'Rutger');
insert into disease (diseaseID, name, description, precaution) values (16, 'Alcoholic', 'Traum pneumohemothor-cl', 'Towney');
insert into disease (diseaseID, name, description, precaution) values (17, 'Jaundice', 'Adverse eff insulin NOS', 'Eada');
insert into disease (diseaseID, name, description, precaution) values (18, 'Jaundice', 'Cataract in inflam dis', 'Magda');
insert into disease (diseaseID, name, description, precaution) values (19, 'Tuberculosis', 'Sacral spinal cord injur', 'Daryl');
insert into disease (diseaseID, name, description, precaution) values (20, 'Heart attack', 'Contusion leg NOS', 'Sayers');
insert into disease (diseaseID, name, description, precaution) values (21, 'Dengue', 'Open wound of trunk NEC', 'Sandi');
insert into disease (diseaseID, name, description, precaution) values (22, 'Paralysis (brain hemorrhage)', 'Open wound foot w tendon', 'Alano');
insert into disease (diseaseID, name, description, precaution) values (23, 'Cervical spondylosis', 'Cerebral cortx contusion', 'Shelli');
insert into disease (diseaseID, name, description, precaution) values (24, 'Varicose veins', 'TB sp crd absc-micro dx', 'Codie');
insert into disease (diseaseID, name, description, precaution) values (25, 'Dimorphic hemmorhoids(piles)', 'Invers uterus-del w p/p', 'Virge');
insert into disease (diseaseID, name, description, precaution) values (26, '(vertigo) Paroymsal Positional Vertigo', 'Unc behav neo pleura', 'Carrie');
insert into disease (diseaseID, name, description, precaution) values (27, 'Osteoarthristis', 'Benign carcinoid stomach', 'Nertie');
insert into disease (diseaseID, name, description, precaution) values (28, 'Urinary tract infection', 'Abdmnal mass periumbilic', 'Bria');
insert into disease (diseaseID, name, description, precaution) values (29, 'Bronchial Asthma', 'Microstomia', 'Brigid');
insert into disease (diseaseID, name, description, precaution) values (30, 'Gastroenteritis', 'Vert fx NOS-op w crd inj', 'Charmion');


CREATE TABLE `patient_disease_history` (
    `patientID` int(64),
    `diseaseID` int(64),
    `is_still_afflicted` boolean NOT NULL,
    FOREIGN KEY (`patientID`) REFERENCES `patients` (`patientID`),
    FOREIGN KEY (`diseaseID`) REFERENCES `disease` (`diseaseID`)
);

insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (23, 19, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (18, 16, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (9, 25, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (5, 10, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (21, 22, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (15, 10, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (19, 8, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (30, 22, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (25, 28, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (6, 10, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (12, 20, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (10, 23, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (29, 16, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (21, 3, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (1, 4, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (16, 16, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (12, 22, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (20, 4, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (3, 8, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (22, 25, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (27, 21, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (6, 12, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (1, 10, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (19, 13, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (16, 25, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (9, 19, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (23, 27, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (25, 12, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (17, 23, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (29, 12, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (21, 2, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (8, 22, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (18, 12, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (27, 10, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (13, 28, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (15, 16, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (23, 16, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (26, 8, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (17, 12, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (23, 29, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (18, 5, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (15, 14, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (1, 4, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (7, 16, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (15, 14, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (3, 29, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (22, 16, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (30, 25, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (25, 9, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (16, 29, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (16, 17, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (27, 15, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (26, 3, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (17, 23, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (29, 29, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (16, 2, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (3, 28, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (29, 21, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (7, 29, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (10, 14, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (28, 11, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (29, 6, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (16, 20, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (5, 20, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (21, 14, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (14, 12, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (9, 11, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (25, 29, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (30, 30, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (2, 28, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (23, 5, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (6, 26, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (22, 18, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (7, 18, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (14, 30, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (30, 20, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (20, 19, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (18, 18, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (20, 18, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (10, 9, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (3, 28, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (8, 5, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (24, 4, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (17, 13, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (12, 21, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (16, 3, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (20, 18, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (14, 25, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (2, 3, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (20, 16, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (8, 27, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (26, 17, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (29, 2, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (6, 5, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (28, 26, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (18, 13, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (21, 26, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (30, 10, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (22, 14, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (23, 4, false);


CREATE TABLE `symptoms` (
    `symptomID` int(64) AUTO_INCREMENT,
    `name` varchar(64) NOT NULL,
    `description` varchar(64) DEFAULT 'more research required',
    `severity` int(10),
    PRIMARY KEY (`symptomID`)
);

insert into symptoms (symptomID, name, description, severity) values (1, 'Common Cold', 'The common cold is a viral infection of your nose and throat (upper respiratory tract).', 2.4);
insert into symptoms (symptomID, name, description, severity) values (2, 'Chicken pox', 'Chickenpox is a highly contagious disease caused by the varicella-zoster virus (VZV).', 6.1);
insert into symptoms (symptomID, name, description, severity) values (3, 'Urinary tract infection', 'Urinary tract infection: An infection of the kidney, ureter, bladder, or urethra.', 3.0);
insert into symptoms (symptomID, name, description, severity) values (4, 'Typhoid', 'An acute illness characterized by fever caused by infection with the bacterium Salmonella typhi.', 7.5);
insert into symptoms (symptomID, name, description, severity) values (5, 'Hepatitis B', 'Hepatitis B is an infection of your liver.', 4.0);
insert into symptoms (symptomID, name, description, severity) values (6, 'Heart attack', 'The death of heart muscle due to the loss of blood supply.', 4.3);
insert into symptoms (symptomID, name, description, severity) values (7, 'Pneumonia', 'Pneumonia is an infection in one or both lungs.', 3.6);
insert into symptoms (symptomID, name, description, severity) values (8, 'Arthritis', 'Arthritis is the swelling and tenderness of one or more of your joints.', 8.3);
insert into symptoms (symptomID, name, description, severity) values (9, 'Malaria', 'An infectious disease caused by protozoan parasites from the Plasmodium family that can be transmitt', 3.3);
insert into symptoms (symptomID, name, description, severity) values (10, 'Allergy', 'An allergy is an immune system response to a foreign substance thats not typically harmful to your', 9.6);
insert into symptoms (symptomID, name, description, severity) values (11, 'Shivering', 'shake slightly and quickly because of feeling cold, ill, or frightened', 1.8);
insert into symptoms (symptomID, name, description, severity) values (12, 'Chills', 'Chills refers to feeling cold after being in a cold environment', 3.2);
insert into symptoms (symptomID, name, description, severity) values (13, 'Acidity', 'Heartburn, regurgitation, and dyspepsia are a few of the most common acid reflux symptoms.', 3.7);
insert into symptoms (symptomID, name, description, severity) values (14, 'Vomiting', 'The forcible voluntary or involuntary emptying of stomach contents through the mouth or, less often, the nose.', 3.1);
insert into symptoms (symptomID, name, description, severity) values (15, 'Fatigue', 'Fatigue is a lack of energy and motivation. Drowsiness and apathy (a feeling of not caring about what happens) can be symptoms that go along with fatigue.', 1.9);
insert into symptoms (symptomID, name, description, severity) values (16, 'Anxiety', 'Anxiety is a feeling of fear, dread, and uneasiness. It might cause you to sweat, feel restless and tense, and have a rapid heartbeat.', 7.8);
insert into symptoms (symptomID, name, description, severity) values (17, 'Restlessness', 'Unable to rest or relax as a result of anxiety or boredom', 6.3);
insert into symptoms (symptomID, name, description, severity) values (18, 'Lethargy', 'Lethargy causes you to feel sleepy or fatigued and sluggish. This sluggishness may be physical or mental.', 3.2);
insert into symptoms (symptomID, name, description, severity) values (19, 'Cough', 'A cough is the rapid expulsion of air from the lungs when the air passages are irritated.', 4.4);
insert into symptoms (symptomID, name, description, severity) values (20, 'Breathlessness', 'Shortness of breath — known medically as dyspnea — is often described as an intense tightening in the chest, air hunger, difficulty breathing, breathlessness or a feeling of suffocation.', 7.6);
insert into symptoms (symptomID, name, description, severity) values (21, 'Sweating', 'Sweating is the release of liquid from the bodys sweat glands.', 2.8);
insert into symptoms (symptomID, name, description, severity) values (22, 'Dehydration', 'A condition that occurs when the body loses too much water and other fluids that it needs to work normally', 4.3);
insert into symptoms (symptomID, name, description, severity) values (23, 'Indigestion', 'Indigestion — also called dyspepsia or an upset stomach — is discomfort in your upper abdomen', 5.6);
insert into symptoms (symptomID, name, description, severity) values (24, 'Headache', 'Headache is pain in any region of the head. Headaches may occur on one or both sides of the head, be isolated to a certain location, radiate across the head from one point, or have a viselike quality', 10.0);
insert into symptoms (symptomID, name, description, severity) values (25, 'Nausea', 'Nausea is the sensation of having to vomit or having the urge to vomit.', 6.7);
insert into symptoms (symptomID, name, description, severity) values (26, 'Constipation', 'A condition in which stool becomes hard, dry, and difficult to pass, and bowel movements dont happen very often.', 7.8);
insert into symptoms (symptomID, name, description, severity) values (27, 'Diarrhea', 'Diarrhea — loose, watery and possibly more-frequent bowel movements — is a common problem.', 9.3);
insert into symptoms (symptomID, name, description, severity) values (28, 'Malaise', 'Malaise is a general feeling of discomfort, illness, or lack of well-being', 5.9);
insert into symptoms (symptomID, name, description, severity) values (29, 'Phlegm', 'he thick mucus secreted in the respiratory passages and discharged through the mouth, esp. that occurring in the lungs and throat passages, as during a cold', 2.0);
insert into symptoms (symptomID, name, description, severity) values (30, 'Congestion', 'An abnormal or excessive accumulation of a body fluid. The term is used broadly in medicine', 1.7);


CREATE TABLE `disease_symptoms` (
    `diseaseID` int(64),
    `symptomID` int(64),
    FOREIGN KEY (`symptomID`) REFERENCES `symptoms` (`symptomID`),
    FOREIGN KEY (`diseaseID`) REFERENCES `disease` (`diseaseID`)
);

insert into disease_symptoms (diseaseID, symptomID) values (14, 12);
insert into disease_symptoms (diseaseID, symptomID) values (14, 23);
insert into disease_symptoms (diseaseID, symptomID) values (15, 6);
insert into disease_symptoms (diseaseID, symptomID) values (28, 22);
insert into disease_symptoms (diseaseID, symptomID) values (12, 24);
insert into disease_symptoms (diseaseID, symptomID) values (13, 2);
insert into disease_symptoms (diseaseID, symptomID) values (28, 18);
insert into disease_symptoms (diseaseID, symptomID) values (12, 10);
insert into disease_symptoms (diseaseID, symptomID) values (22, 30);
insert into disease_symptoms (diseaseID, symptomID) values (7, 26);
insert into disease_symptoms (diseaseID, symptomID) values (19, 16);
insert into disease_symptoms (diseaseID, symptomID) values (29, 20);
insert into disease_symptoms (diseaseID, symptomID) values (15, 7);
insert into disease_symptoms (diseaseID, symptomID) values (17, 24);
insert into disease_symptoms (diseaseID, symptomID) values (10, 13);
insert into disease_symptoms (diseaseID, symptomID) values (15, 24);
insert into disease_symptoms (diseaseID, symptomID) values (22, 7);
insert into disease_symptoms (diseaseID, symptomID) values (7, 5);
insert into disease_symptoms (diseaseID, symptomID) values (1, 2);
insert into disease_symptoms (diseaseID, symptomID) values (28, 1);
insert into disease_symptoms (diseaseID, symptomID) values (11, 4);
insert into disease_symptoms (diseaseID, symptomID) values (27, 15);
insert into disease_symptoms (diseaseID, symptomID) values (1, 18);
insert into disease_symptoms (diseaseID, symptomID) values (28, 24);
insert into disease_symptoms (diseaseID, symptomID) values (22, 18);
insert into disease_symptoms (diseaseID, symptomID) values (20, 11);
insert into disease_symptoms (diseaseID, symptomID) values (26, 2);
insert into disease_symptoms (diseaseID, symptomID) values (21, 11);
insert into disease_symptoms (diseaseID, symptomID) values (25, 23);
insert into disease_symptoms (diseaseID, symptomID) values (13, 27);
insert into disease_symptoms (diseaseID, symptomID) values (29, 17);
insert into disease_symptoms (diseaseID, symptomID) values (19, 9);
insert into disease_symptoms (diseaseID, symptomID) values (22, 12);
insert into disease_symptoms (diseaseID, symptomID) values (13, 17);
insert into disease_symptoms (diseaseID, symptomID) values (30, 4);
insert into disease_symptoms (diseaseID, symptomID) values (28, 18);
insert into disease_symptoms (diseaseID, symptomID) values (9, 25);
insert into disease_symptoms (diseaseID, symptomID) values (7, 17);
insert into disease_symptoms (diseaseID, symptomID) values (16, 8);
insert into disease_symptoms (diseaseID, symptomID) values (26, 15);
insert into disease_symptoms (diseaseID, symptomID) values (15, 9);
insert into disease_symptoms (diseaseID, symptomID) values (15, 18);
insert into disease_symptoms (diseaseID, symptomID) values (21, 9);
insert into disease_symptoms (diseaseID, symptomID) values (28, 26);
insert into disease_symptoms (diseaseID, symptomID) values (10, 29);
insert into disease_symptoms (diseaseID, symptomID) values (10, 19);
insert into disease_symptoms (diseaseID, symptomID) values (2, 22);
insert into disease_symptoms (diseaseID, symptomID) values (23, 26);
insert into disease_symptoms (diseaseID, symptomID) values (19, 28);
insert into disease_symptoms (diseaseID, symptomID) values (10, 28);
insert into disease_symptoms (diseaseID, symptomID) values (14, 24);
insert into disease_symptoms (diseaseID, symptomID) values (15, 4);
insert into disease_symptoms (diseaseID, symptomID) values (5, 14);
insert into disease_symptoms (diseaseID, symptomID) values (16, 26);
insert into disease_symptoms (diseaseID, symptomID) values (4, 24);
insert into disease_symptoms (diseaseID, symptomID) values (22, 3);
insert into disease_symptoms (diseaseID, symptomID) values (21, 22);
insert into disease_symptoms (diseaseID, symptomID) values (13, 10);
insert into disease_symptoms (diseaseID, symptomID) values (8, 2);
insert into disease_symptoms (diseaseID, symptomID) values (13, 26);
insert into disease_symptoms (diseaseID, symptomID) values (9, 4);
insert into disease_symptoms (diseaseID, symptomID) values (16, 6);
insert into disease_symptoms (diseaseID, symptomID) values (17, 9);
insert into disease_symptoms (diseaseID, symptomID) values (13, 23);
insert into disease_symptoms (diseaseID, symptomID) values (22, 16);
insert into disease_symptoms (diseaseID, symptomID) values (22, 6);
insert into disease_symptoms (diseaseID, symptomID) values (3, 24);
insert into disease_symptoms (diseaseID, symptomID) values (7, 6);
insert into disease_symptoms (diseaseID, symptomID) values (15, 7);
insert into disease_symptoms (diseaseID, symptomID) values (27, 25);
insert into disease_symptoms (diseaseID, symptomID) values (12, 11);
insert into disease_symptoms (diseaseID, symptomID) values (28, 6);
insert into disease_symptoms (diseaseID, symptomID) values (18, 4);
insert into disease_symptoms (diseaseID, symptomID) values (11, 3);
insert into disease_symptoms (diseaseID, symptomID) values (22, 3);
insert into disease_symptoms (diseaseID, symptomID) values (18, 26);
insert into disease_symptoms (diseaseID, symptomID) values (29, 25);
insert into disease_symptoms (diseaseID, symptomID) values (28, 21);
insert into disease_symptoms (diseaseID, symptomID) values (3, 28);
insert into disease_symptoms (diseaseID, symptomID) values (17, 2);
insert into disease_symptoms (diseaseID, symptomID) values (20, 12);
insert into disease_symptoms (diseaseID, symptomID) values (15, 22);
insert into disease_symptoms (diseaseID, symptomID) values (19, 16);
insert into disease_symptoms (diseaseID, symptomID) values (17, 23);
insert into disease_symptoms (diseaseID, symptomID) values (28, 10);
insert into disease_symptoms (diseaseID, symptomID) values (6, 3);
insert into disease_symptoms (diseaseID, symptomID) values (8, 13);
insert into disease_symptoms (diseaseID, symptomID) values (9, 26);
insert into disease_symptoms (diseaseID, symptomID) values (21, 3);
insert into disease_symptoms (diseaseID, symptomID) values (13, 27);
insert into disease_symptoms (diseaseID, symptomID) values (27, 5);
insert into disease_symptoms (diseaseID, symptomID) values (28, 8);
insert into disease_symptoms (diseaseID, symptomID) values (9, 23);
insert into disease_symptoms (diseaseID, symptomID) values (1, 10);
insert into disease_symptoms (diseaseID, symptomID) values (10, 19);
insert into disease_symptoms (diseaseID, symptomID) values (14, 25);
insert into disease_symptoms (diseaseID, symptomID) values (12, 28);
insert into disease_symptoms (diseaseID, symptomID) values (1, 8);
insert into disease_symptoms (diseaseID, symptomID) values (6, 5);
insert into disease_symptoms (diseaseID, symptomID) values (27, 30);
insert into disease_symptoms (diseaseID, symptomID) values (23, 30);
insert into disease_symptoms (diseaseID, symptomID) values (8, 19);
insert into disease_symptoms (diseaseID, symptomID) values (12, 19);
insert into disease_symptoms (diseaseID, symptomID) values (30, 21);
insert into disease_symptoms (diseaseID, symptomID) values (17, 27);
insert into disease_symptoms (diseaseID, symptomID) values (13, 23);
insert into disease_symptoms (diseaseID, symptomID) values (10, 14);
insert into disease_symptoms (diseaseID, symptomID) values (1, 30);
insert into disease_symptoms (diseaseID, symptomID) values (10, 28);
insert into disease_symptoms (diseaseID, symptomID) values (12, 9);
insert into disease_symptoms (diseaseID, symptomID) values (6, 29);
insert into disease_symptoms (diseaseID, symptomID) values (15, 13);
insert into disease_symptoms (diseaseID, symptomID) values (25, 16);
insert into disease_symptoms (diseaseID, symptomID) values (30, 12);
insert into disease_symptoms (diseaseID, symptomID) values (8, 1);
insert into disease_symptoms (diseaseID, symptomID) values (16, 26);
insert into disease_symptoms (diseaseID, symptomID) values (2, 8);
insert into disease_symptoms (diseaseID, symptomID) values (25, 23);
insert into disease_symptoms (diseaseID, symptomID) values (3, 12);
insert into disease_symptoms (diseaseID, symptomID) values (24, 3);
insert into disease_symptoms (diseaseID, symptomID) values (21, 16);
insert into disease_symptoms (diseaseID, symptomID) values (9, 19);
insert into disease_symptoms (diseaseID, symptomID) values (30, 15);
insert into disease_symptoms (diseaseID, symptomID) values (8, 13);
insert into disease_symptoms (diseaseID, symptomID) values (8, 25);
insert into disease_symptoms (diseaseID, symptomID) values (11, 29);
insert into disease_symptoms (diseaseID, symptomID) values (16, 12);
insert into disease_symptoms (diseaseID, symptomID) values (26, 21);
insert into disease_symptoms (diseaseID, symptomID) values (24, 11);
insert into disease_symptoms (diseaseID, symptomID) values (10, 4);
insert into disease_symptoms (diseaseID, symptomID) values (2, 18);
insert into disease_symptoms (diseaseID, symptomID) values (13, 23);
insert into disease_symptoms (diseaseID, symptomID) values (7, 7);
insert into disease_symptoms (diseaseID, symptomID) values (14, 27);
insert into disease_symptoms (diseaseID, symptomID) values (15, 6);
insert into disease_symptoms (diseaseID, symptomID) values (16, 14);
insert into disease_symptoms (diseaseID, symptomID) values (27, 13);
insert into disease_symptoms (diseaseID, symptomID) values (1, 6);
insert into disease_symptoms (diseaseID, symptomID) values (3, 17);
insert into disease_symptoms (diseaseID, symptomID) values (9, 11);
insert into disease_symptoms (diseaseID, symptomID) values (8, 23);
insert into disease_symptoms (diseaseID, symptomID) values (16, 12);
insert into disease_symptoms (diseaseID, symptomID) values (7, 26);
insert into disease_symptoms (diseaseID, symptomID) values (12, 3);
insert into disease_symptoms (diseaseID, symptomID) values (27, 24);
insert into disease_symptoms (diseaseID, symptomID) values (20, 22);
insert into disease_symptoms (diseaseID, symptomID) values (3, 25);
insert into disease_symptoms (diseaseID, symptomID) values (7, 1);
insert into disease_symptoms (diseaseID, symptomID) values (21, 5);
insert into disease_symptoms (diseaseID, symptomID) values (15, 18);



CREATE TABLE `drug` (
    `drugID` int(64) AUTO_INCREMENT,
    `name` varchar(64) NOT NULL,
    `quantity` int(10) NOT NULL,
    `price` float,
    PRIMARY KEY (`drugID`)
);

insert into drug (drugID, name, quantity, price) values (1, 'Sertraline Hydrochloride', 696, 68.8);
insert into drug (drugID, name, quantity, price) values (2, 'Avobenzone, Octinoxate, Octisalate, and Oxybenzone', 186, 43.7);
insert into drug (drugID, name, quantity, price) values (3, 'POTASSIUM CHLORIDE', 18, 29.28);
insert into drug (drugID, name, quantity, price) values (4, 'Avobenzone, Octisalate, Octocrylene, and Oxybenzone', 438, 38.29);
insert into drug (drugID, name, quantity, price) values (5, 'Antipyrine and Benzocaine', 961, 70.26);
insert into drug (drugID, name, quantity, price) values (6, 'ALUMINUM CHLOROHYDRATE', 562, 16.32);
insert into drug (drugID, name, quantity, price) values (7, 'Phentermine Hydrochloride', 958, 60.67);
insert into drug (drugID, name, quantity, price) values (8, 'MENTHOL, CAMPHOR, AND METHYLSALICYLATE', 158, 15.16);
insert into drug (drugID, name, quantity, price) values (9, 'ACETAMINOPHEN, CAFFEINE, and PYRILAMINE MALEATE', 841, 4.45);
insert into drug (drugID, name, quantity, price) values (10, 'pioglitazone', 123, 6.03);
insert into drug (drugID, name, quantity, price) values (11, 'clotrimazole ', 43, 6.99);
insert into drug (drugID, name, quantity, price) values (12, 'Heparin Sodium', 89, 25.94);
insert into drug (drugID, name, quantity, price) values (13, 'Dextroamphetamine Saccharate, Amphetamine Aspartate, Dextroamphetamine Sulfate and Amphetamine Sulfate', 33, 85.09);
insert into drug (drugID, name, quantity, price) values (14, 'DR DENTAL CARE 250ML', 85, 94.0);
insert into drug (drugID, name, quantity, price) values (15, 'Oxycodone Hydrochloride', 53, 68.79);
insert into drug (drugID, name, quantity, price) values (16, 'OXYGEN', 10, 64.47);
insert into drug (drugID, name, quantity, price) values (17, 'AZITHROMYCIN', 26, 44.18);
insert into drug (drugID, name, quantity, price) values (18, 'Robongbang Propolis', 89, 70.73);
insert into drug (drugID, name, quantity, price) values (19, 'REMEDY Calazime Skin Protectant', 12, 50.3);
insert into drug (drugID, name, quantity, price) values (20, 'Obao Men Audaz', 53, 6.83);
insert into drug (drugID, name, quantity, price) values (21, 'Promethazine Hydrochloride', 99, 48.99);
insert into drug (drugID, name, quantity, price) values (22, 'Sodium Bicarbonate', 76, 39.33);
insert into drug (drugID, name, quantity, price) values (23, 'Orajel', 7, 61.49);
insert into drug (drugID, name, quantity, price) values (24, 'supernatural airbrushed canvas broad spectrum spf 15 sunscreen', 89, 57.66);
insert into drug (drugID, name, quantity, price) values (25, 'Earths Best Diaper Relief', 79, 99.84);
insert into drug (drugID, name, quantity, price) values (26, 'Moisturizing Hand Sanitizer', 32, 54.14);
insert into drug (drugID, name, quantity, price) values (27, 'Pomegranate Orange Antibacterial Foaming Hand Wash', 37, 86.12);
insert into drug (drugID, name, quantity, price) values (28, 'Butalbital, Aspirin and Caffeine', 71, 90.14);
insert into drug (drugID, name, quantity, price) values (29, 'Allergies Fragrances and Phenolics', 22, 43.72);
insert into drug (drugID, name, quantity, price) values (30, 'Moisture Renew', 72, 14.57);
insert into drug (drugID, name, quantity, price) values (31, 'Cefepime', 26, 71.39);

CREATE TABLE `disease_drugs` (
    `drugID` int(64),
    `diseaseID` int(64),
    FOREIGN KEY (`drugID`) REFERENCES `drug` (`drugID`),
    FOREIGN KEY (`diseaseID`) REFERENCES `disease` (`diseaseID`)
);

insert into disease_drugs (diseaseID, drugID) values (6, 2);
insert into disease_drugs (diseaseID, drugID) values (11, 7);
insert into disease_drugs (diseaseID, drugID) values (1, 27);
insert into disease_drugs (diseaseID, drugID) values (28, 5);
insert into disease_drugs (diseaseID, drugID) values (12, 2);
insert into disease_drugs (diseaseID, drugID) values (10, 24);
insert into disease_drugs (diseaseID, drugID) values (20, 26);
insert into disease_drugs (diseaseID, drugID) values (24, 6);
insert into disease_drugs (diseaseID, drugID) values (15, 1);
insert into disease_drugs (diseaseID, drugID) values (6, 29);
insert into disease_drugs (diseaseID, drugID) values (20, 20);
insert into disease_drugs (diseaseID, drugID) values (29, 27);
insert into disease_drugs (diseaseID, drugID) values (25, 14);
insert into disease_drugs (diseaseID, drugID) values (3, 27);
insert into disease_drugs (diseaseID, drugID) values (6, 9);
insert into disease_drugs (diseaseID, drugID) values (27, 18);
insert into disease_drugs (diseaseID, drugID) values (8, 18);
insert into disease_drugs (diseaseID, drugID) values (30, 8);
insert into disease_drugs (diseaseID, drugID) values (13, 23);
insert into disease_drugs (diseaseID, drugID) values (12, 11);
insert into disease_drugs (diseaseID, drugID) values (25, 18);
insert into disease_drugs (diseaseID, drugID) values (19, 15);
insert into disease_drugs (diseaseID, drugID) values (4, 17);
insert into disease_drugs (diseaseID, drugID) values (21, 17);
insert into disease_drugs (diseaseID, drugID) values (1, 5);
insert into disease_drugs (diseaseID, drugID) values (21, 19);
insert into disease_drugs (diseaseID, drugID) values (15, 13);
insert into disease_drugs (diseaseID, drugID) values (23, 19);
insert into disease_drugs (diseaseID, drugID) values (7, 6);
insert into disease_drugs (diseaseID, drugID) values (21, 16);
insert into disease_drugs (diseaseID, drugID) values (29, 24);
insert into disease_drugs (diseaseID, drugID) values (7, 9);
insert into disease_drugs (diseaseID, drugID) values (3, 19);
insert into disease_drugs (diseaseID, drugID) values (2, 12);
insert into disease_drugs (diseaseID, drugID) values (15, 11);
insert into disease_drugs (diseaseID, drugID) values (17, 2);
insert into disease_drugs (diseaseID, drugID) values (1, 12);
insert into disease_drugs (diseaseID, drugID) values (12, 5);
insert into disease_drugs (diseaseID, drugID) values (25, 10);
insert into disease_drugs (diseaseID, drugID) values (2, 13);
insert into disease_drugs (diseaseID, drugID) values (28, 19);
insert into disease_drugs (diseaseID, drugID) values (19, 16);
insert into disease_drugs (diseaseID, drugID) values (2, 16);
insert into disease_drugs (diseaseID, drugID) values (27, 19);
insert into disease_drugs (diseaseID, drugID) values (8, 18);
insert into disease_drugs (diseaseID, drugID) values (9, 5);
insert into disease_drugs (diseaseID, drugID) values (6, 25);
insert into disease_drugs (diseaseID, drugID) values (27, 24);
insert into disease_drugs (diseaseID, drugID) values (23, 24);
insert into disease_drugs (diseaseID, drugID) values (8, 28);
insert into disease_drugs (diseaseID, drugID) values (7, 27);
insert into disease_drugs (diseaseID, drugID) values (4, 7);
insert into disease_drugs (diseaseID, drugID) values (2, 13);
insert into disease_drugs (diseaseID, drugID) values (20, 6);
insert into disease_drugs (diseaseID, drugID) values (18, 23);
insert into disease_drugs (diseaseID, drugID) values (4, 24);
insert into disease_drugs (diseaseID, drugID) values (13, 12);
insert into disease_drugs (diseaseID, drugID) values (20, 28);
insert into disease_drugs (diseaseID, drugID) values (28, 23);
insert into disease_drugs (diseaseID, drugID) values (20, 13);
insert into disease_drugs (diseaseID, drugID) values (24, 6);
insert into disease_drugs (diseaseID, drugID) values (16, 23);
insert into disease_drugs (diseaseID, drugID) values (7, 12);
insert into disease_drugs (diseaseID, drugID) values (4, 3);
insert into disease_drugs (diseaseID, drugID) values (6, 28);
insert into disease_drugs (diseaseID, drugID) values (9, 29);
insert into disease_drugs (diseaseID, drugID) values (7, 27);
insert into disease_drugs (diseaseID, drugID) values (4, 24);
insert into disease_drugs (diseaseID, drugID) values (10, 8);
insert into disease_drugs (diseaseID, drugID) values (22, 27);
insert into disease_drugs (diseaseID, drugID) values (24, 8);
insert into disease_drugs (diseaseID, drugID) values (14, 8);
insert into disease_drugs (diseaseID, drugID) values (24, 12);
insert into disease_drugs (diseaseID, drugID) values (12, 2);
insert into disease_drugs (diseaseID, drugID) values (28, 6);
insert into disease_drugs (diseaseID, drugID) values (19, 9);
insert into disease_drugs (diseaseID, drugID) values (10, 16);
insert into disease_drugs (diseaseID, drugID) values (29, 21);
insert into disease_drugs (diseaseID, drugID) values (5, 21);
insert into disease_drugs (diseaseID, drugID) values (22, 23);
insert into disease_drugs (diseaseID, drugID) values (10, 11);
insert into disease_drugs (diseaseID, drugID) values (20, 24);
insert into disease_drugs (diseaseID, drugID) values (14, 5);
insert into disease_drugs (diseaseID, drugID) values (7, 27);
insert into disease_drugs (diseaseID, drugID) values (7, 9);
insert into disease_drugs (diseaseID, drugID) values (22, 18);
insert into disease_drugs (diseaseID, drugID) values (4, 12);
insert into disease_drugs (diseaseID, drugID) values (26, 20);
insert into disease_drugs (diseaseID, drugID) values (23, 28);
insert into disease_drugs (diseaseID, drugID) values (22, 17);
insert into disease_drugs (diseaseID, drugID) values (19, 8);
insert into disease_drugs (diseaseID, drugID) values (17, 19);
insert into disease_drugs (diseaseID, drugID) values (9, 24);
insert into disease_drugs (diseaseID, drugID) values (28, 8);
insert into disease_drugs (diseaseID, drugID) values (7, 27);
insert into disease_drugs (diseaseID, drugID) values (28, 24);
insert into disease_drugs (diseaseID, drugID) values (6, 6);
insert into disease_drugs (diseaseID, drugID) values (16, 19);
insert into disease_drugs (diseaseID, drugID) values (16, 4);
insert into disease_drugs (diseaseID, drugID) values (24, 13);
insert into disease_drugs (diseaseID, drugID) values (8, 9);
insert into disease_drugs (diseaseID, drugID) values (28, 30);
insert into disease_drugs (diseaseID, drugID) values (10, 8);
insert into disease_drugs (diseaseID, drugID) values (12, 7);
insert into disease_drugs (diseaseID, drugID) values (27, 13);
insert into disease_drugs (diseaseID, drugID) values (20, 9);
insert into disease_drugs (diseaseID, drugID) values (16, 6);
insert into disease_drugs (diseaseID, drugID) values (17, 18);
insert into disease_drugs (diseaseID, drugID) values (16, 17);
insert into disease_drugs (diseaseID, drugID) values (23, 13);
insert into disease_drugs (diseaseID, drugID) values (20, 8);
insert into disease_drugs (diseaseID, drugID) values (10, 19);
insert into disease_drugs (diseaseID, drugID) values (14, 15);
insert into disease_drugs (diseaseID, drugID) values (6, 23);
insert into disease_drugs (diseaseID, drugID) values (7, 25);
insert into disease_drugs (diseaseID, drugID) values (5, 15);
insert into disease_drugs (diseaseID, drugID) values (3, 6);
insert into disease_drugs (diseaseID, drugID) values (19, 12);
insert into disease_drugs (diseaseID, drugID) values (24, 25);
insert into disease_drugs (diseaseID, drugID) values (12, 25);
insert into disease_drugs (diseaseID, drugID) values (13, 8);
insert into disease_drugs (diseaseID, drugID) values (16, 4);
insert into disease_drugs (diseaseID, drugID) values (13, 8);
insert into disease_drugs (diseaseID, drugID) values (4, 11);
insert into disease_drugs (diseaseID, drugID) values (1, 24);
insert into disease_drugs (diseaseID, drugID) values (20, 11);
insert into disease_drugs (diseaseID, drugID) values (19, 19);
insert into disease_drugs (diseaseID, drugID) values (1, 27);
insert into disease_drugs (diseaseID, drugID) values (27, 21);
insert into disease_drugs (diseaseID, drugID) values (13, 16);
insert into disease_drugs (diseaseID, drugID) values (19, 22);
insert into disease_drugs (diseaseID, drugID) values (12, 22);
insert into disease_drugs (diseaseID, drugID) values (28, 6);
insert into disease_drugs (diseaseID, drugID) values (16, 23);
insert into disease_drugs (diseaseID, drugID) values (28, 29);
insert into disease_drugs (diseaseID, drugID) values (13, 13);
insert into disease_drugs (diseaseID, drugID) values (30, 30);
insert into disease_drugs (diseaseID, drugID) values (14, 19);
insert into disease_drugs (diseaseID, drugID) values (26, 13);
insert into disease_drugs (diseaseID, drugID) values (18, 5);
insert into disease_drugs (diseaseID, drugID) values (11, 25);
insert into disease_drugs (diseaseID, drugID) values (28, 15);
insert into disease_drugs (diseaseID, drugID) values (7, 19);
insert into disease_drugs (diseaseID, drugID) values (22, 13);
insert into disease_drugs (diseaseID, drugID) values (11, 19);
insert into disease_drugs (diseaseID, drugID) values (7, 26);
insert into disease_drugs (diseaseID, drugID) values (21, 10);
insert into disease_drugs (diseaseID, drugID) values (13, 23);
insert into disease_drugs (diseaseID, drugID) values (15, 5);
insert into disease_drugs (diseaseID, drugID) values (30, 16);


CREATE TABLE `side_effects` (
    `effectsID` int(64),
    `name` varchar(64) NOT NULL,
    `description` varchar(64) DEFAULT 'more research required',
    PRIMARY KEY (`effectsID`)
);

insert into side_effects (effectsID, name, description) values (1, 'Inj extn musc/fasc/tend r little finger at wrs/hnd lv, sqla', 'Other injury of extensor muscle, fascia and tendon of right little finger at wrist and hand level, sequela');
insert into side_effects (effectsID, name, description) values (2, 'Smith''s fx r radius, subs for opn fx type I/2 w delay heal', 'Smith''s fracture of right radius, subsequent encounter for open fracture type I or II with delayed healing');
insert into side_effects (effectsID, name, description) values (3, 'Oth soft tissue disorders related to use/pressure of hand', 'Other soft tissue disorders related to use, overuse and pressure of hand');
insert into side_effects (effectsID, name, description) values (4, 'Unspecified disorder of eye and adnexa', 'Unspecified disorder of eye and adnexa');
insert into side_effects (effectsID, name, description) values (5, 'Drug/chem diabetes mellitus w diabetic dermatitis', 'Drug or chemical induced diabetes mellitus with diabetic dermatitis');
insert into side_effects (effectsID, name, description) values (6, 'Displ oblique fx shaft of unsp fibula, 7thP', 'Displaced oblique fracture of shaft of unspecified fibula, subsequent encounter for closed fracture with malunion');
insert into side_effects (effectsID, name, description) values (7, 'Intermittent exophthalmos, right eye', 'Intermittent exophthalmos, right eye');
insert into side_effects (effectsID, name, description) values (8, 'Sltr-haris Type IV physl fx low end ulna, unsp arm, 7thP', 'Salter-Harris Type IV physeal fracture of lower end of ulna, unspecified arm, subsequent encounter for fracture with malunion');
insert into side_effects (effectsID, name, description) values (9, 'Abrasion of unspecified forearm, initial encounter', 'Abrasion of unspecified forearm, initial encounter');
insert into side_effects (effectsID, name, description) values (10, 'Nondisp seg fx shaft of l fibula, 7thJ', 'Nondisplaced segmental fracture of shaft of left fibula, subsequent encounter for open fracture type IIIA, IIIB, or IIIC with delayed healing');
insert into side_effects (effectsID, name, description) values (11, 'Puncture wound with foreign body, left knee', 'Puncture wound with foreign body, left knee');
insert into side_effects (effectsID, name, description) values (12, 'Car pasngr inj in clsn with statnry object nontraf, sequela', 'Car passenger injured in collision with fixed or stationary object in nontraffic accident, sequela');
insert into side_effects (effectsID, name, description) values (13, 'Undescended testicle, unilateral', 'Undescended testicle, unilateral');
insert into side_effects (effectsID, name, description) values (14, 'Corrosion of second degree of right upper arm, subs encntr', 'Corrosion of second degree of right upper arm, subsequent encounter');
insert into side_effects (effectsID, name, description) values (15, 'Other mechanical complication of umbrella device, sequela', 'Other mechanical complication of umbrella device, sequela');
insert into side_effects (effectsID, name, description) values (16, 'Asymptomatic varicose veins of bilateral lower extremities', 'Asymptomatic varicose veins of bilateral lower extremities');
insert into side_effects (effectsID, name, description) values (17, 'Other bursitis of knee, left knee', 'Other bursitis of knee, left knee');
insert into side_effects (effectsID, name, description) values (18, 'Torus fx lower end of left tibia, subs for fx w malunion', 'Torus fracture of lower end of left tibia, subsequent encounter for fracture with malunion');
insert into side_effects (effectsID, name, description) values (19, 'Nondisp transverse fx shaft of unsp ulna, 7thH', 'Nondisplaced transverse fracture of shaft of unspecified ulna, subsequent encounter for open fracture type I or II with delayed healing');
insert into side_effects (effectsID, name, description) values (20, 'Burn due to canoe or kayak on fire', 'Burn due to canoe or kayak on fire');
insert into side_effects (effectsID, name, description) values (21, 'Senile ectropion of left upper eyelid', 'Senile ectropion of left upper eyelid');
insert into side_effects (effectsID, name, description) values (22, 'Strain flexor musc/fasc/tend l idx fngr at forarm lv, sqla', 'Strain of flexor muscle, fascia and tendon of left index finger at forearm level, sequela');
insert into side_effects (effectsID, name, description) values (23, 'Ac emblsm and thombos unsp deep veins of left dist low extrm', 'Acute embolism and thrombosis of unspecified deep veins of left distal lower extremity');
insert into side_effects (effectsID, name, description) values (24, 'Nondisp fx of ant pro of l calcaneus, subs for fx w malunion', 'Nondisplaced fracture of anterior process of left calcaneus, subsequent encounter for fracture with malunion');
insert into side_effects (effectsID, name, description) values (25, 'Congenital complete absence of upper limb', 'Congenital complete absence of upper limb');
insert into side_effects (effectsID, name, description) values (26, 'Corros first degree of single l finger (nail) except thumb', 'Corrosion of first degree of single left finger (nail) except thumb');
insert into side_effects (effectsID, name, description) values (27, 'Inj muscle, fascia and tendon of long head of biceps', 'Other injury of muscle, fascia and tendon of long head of biceps');
insert into side_effects (effectsID, name, description) values (28, 'Malignant melanoma of right ear and external auricular canal', 'Malignant melanoma of right ear and external auricular canal');
insert into side_effects (effectsID, name, description) values (29, 'Short Achilles tendon (acquired), right ankle', 'Short Achilles tendon (acquired), right ankle');
insert into side_effects (effectsID, name, description) values (30, 'Poisoning by drugs affecting uric acid metab, acc, init', 'Poisoning by drugs affecting uric acid metabolism, accidental (unintentional), initial encounter');

CREATE TABLE `drug_side_effects` (
    `drugID` int(64),
    `effectsID` int(64),
    FOREIGN KEY (`drugID`) REFERENCES `drug` (`drugID`),
    FOREIGN KEY (`effectsID`) REFERENCES `side_effects` (`effectsID`)
);

insert into drug_side_effects (drugID, effectsID) values (2, 2);
insert into drug_side_effects (drugID, effectsID) values (16, 2);
insert into drug_side_effects (drugID, effectsID) values (17, 21);
insert into drug_side_effects (drugID, effectsID) values (18, 17);
insert into drug_side_effects (drugID, effectsID) values (20, 27);
insert into drug_side_effects (drugID, effectsID) values (30, 22);
insert into drug_side_effects (drugID, effectsID) values (22, 22);
insert into drug_side_effects (drugID, effectsID) values (15, 23);
insert into drug_side_effects (drugID, effectsID) values (28, 23);
insert into drug_side_effects (drugID, effectsID) values (25, 3);
insert into drug_side_effects (drugID, effectsID) values (14, 23);
insert into drug_side_effects (drugID, effectsID) values (19, 2);
insert into drug_side_effects (drugID, effectsID) values (12, 12);
insert into drug_side_effects (drugID, effectsID) values (19, 11);
insert into drug_side_effects (drugID, effectsID) values (2, 28);
insert into drug_side_effects (drugID, effectsID) values (26, 14);
insert into drug_side_effects (drugID, effectsID) values (13, 11);
insert into drug_side_effects (drugID, effectsID) values (18, 18);
insert into drug_side_effects (drugID, effectsID) values (7, 28);
insert into drug_side_effects (drugID, effectsID) values (7, 11);
insert into drug_side_effects (drugID, effectsID) values (22, 4);
insert into drug_side_effects (drugID, effectsID) values (22, 21);
insert into drug_side_effects (drugID, effectsID) values (9, 20);
insert into drug_side_effects (drugID, effectsID) values (18, 8);
insert into drug_side_effects (drugID, effectsID) values (17, 27);
insert into drug_side_effects (drugID, effectsID) values (26, 28);
insert into drug_side_effects (drugID, effectsID) values (28, 10);
insert into drug_side_effects (drugID, effectsID) values (10, 12);
insert into drug_side_effects (drugID, effectsID) values (5, 29);
insert into drug_side_effects (drugID, effectsID) values (21, 23);
insert into drug_side_effects (drugID, effectsID) values (6, 1);
insert into drug_side_effects (drugID, effectsID) values (9, 4);
insert into drug_side_effects (drugID, effectsID) values (24, 4);
insert into drug_side_effects (drugID, effectsID) values (18, 23);
insert into drug_side_effects (drugID, effectsID) values (13, 28);
insert into drug_side_effects (drugID, effectsID) values (5, 21);
insert into drug_side_effects (drugID, effectsID) values (7, 2);
insert into drug_side_effects (drugID, effectsID) values (29, 4);
insert into drug_side_effects (drugID, effectsID) values (24, 1);
insert into drug_side_effects (drugID, effectsID) values (16, 19);
insert into drug_side_effects (drugID, effectsID) values (10, 1);
insert into drug_side_effects (drugID, effectsID) values (18, 18);
insert into drug_side_effects (drugID, effectsID) values (14, 17);
insert into drug_side_effects (drugID, effectsID) values (15, 12);
insert into drug_side_effects (drugID, effectsID) values (27, 29);
insert into drug_side_effects (drugID, effectsID) values (9, 7);
insert into drug_side_effects (drugID, effectsID) values (29, 1);
insert into drug_side_effects (drugID, effectsID) values (2, 23);
insert into drug_side_effects (drugID, effectsID) values (30, 7);
insert into drug_side_effects (drugID, effectsID) values (27, 18);
insert into drug_side_effects (drugID, effectsID) values (16, 17);
insert into drug_side_effects (drugID, effectsID) values (8, 27);
insert into drug_side_effects (drugID, effectsID) values (9, 11);
insert into drug_side_effects (drugID, effectsID) values (23, 30);
insert into drug_side_effects (drugID, effectsID) values (10, 8);
insert into drug_side_effects (drugID, effectsID) values (14, 20);
insert into drug_side_effects (drugID, effectsID) values (12, 30);
insert into drug_side_effects (drugID, effectsID) values (1, 4);
insert into drug_side_effects (drugID, effectsID) values (20, 28);
insert into drug_side_effects (drugID, effectsID) values (1, 29);
insert into drug_side_effects (drugID, effectsID) values (4, 9);
insert into drug_side_effects (drugID, effectsID) values (13, 19);
insert into drug_side_effects (drugID, effectsID) values (8, 5);
insert into drug_side_effects (drugID, effectsID) values (8, 19);
insert into drug_side_effects (drugID, effectsID) values (4, 21);
insert into drug_side_effects (drugID, effectsID) values (16, 15);
insert into drug_side_effects (drugID, effectsID) values (3, 8);
insert into drug_side_effects (drugID, effectsID) values (22, 18);
insert into drug_side_effects (drugID, effectsID) values (6, 12);
insert into drug_side_effects (drugID, effectsID) values (12, 23);
insert into drug_side_effects (drugID, effectsID) values (20, 6);
insert into drug_side_effects (drugID, effectsID) values (17, 2);
insert into drug_side_effects (drugID, effectsID) values (21, 21);
insert into drug_side_effects (drugID, effectsID) values (27, 24);
insert into drug_side_effects (drugID, effectsID) values (24, 2);
insert into drug_side_effects (drugID, effectsID) values (15, 24);
insert into drug_side_effects (drugID, effectsID) values (5, 22);
insert into drug_side_effects (drugID, effectsID) values (23, 1);
insert into drug_side_effects (drugID, effectsID) values (19, 29);
insert into drug_side_effects (drugID, effectsID) values (28, 16);
insert into drug_side_effects (drugID, effectsID) values (5, 16);
insert into drug_side_effects (drugID, effectsID) values (19, 18);
insert into drug_side_effects (drugID, effectsID) values (30, 19);
insert into drug_side_effects (drugID, effectsID) values (24, 12);
insert into drug_side_effects (drugID, effectsID) values (16, 30);
insert into drug_side_effects (drugID, effectsID) values (20, 9);
insert into drug_side_effects (drugID, effectsID) values (24, 9);
insert into drug_side_effects (drugID, effectsID) values (14, 7);
insert into drug_side_effects (drugID, effectsID) values (18, 20);
insert into drug_side_effects (drugID, effectsID) values (11, 17);
insert into drug_side_effects (drugID, effectsID) values (17, 22);
insert into drug_side_effects (drugID, effectsID) values (1, 8);
insert into drug_side_effects (drugID, effectsID) values (5, 13);
insert into drug_side_effects (drugID, effectsID) values (26, 7);
insert into drug_side_effects (drugID, effectsID) values (25, 14);
insert into drug_side_effects (drugID, effectsID) values (11, 16);
insert into drug_side_effects (drugID, effectsID) values (20, 9);
insert into drug_side_effects (drugID, effectsID) values (23, 14);
insert into drug_side_effects (drugID, effectsID) values (9, 22);
insert into drug_side_effects (drugID, effectsID) values (29, 8);
insert into drug_side_effects (drugID, effectsID) values (4, 11);
insert into drug_side_effects (drugID, effectsID) values (6, 8);
insert into drug_side_effects (drugID, effectsID) values (30, 9);
insert into drug_side_effects (drugID, effectsID) values (24, 22);
insert into drug_side_effects (drugID, effectsID) values (26, 20);
insert into drug_side_effects (drugID, effectsID) values (14, 4);
insert into drug_side_effects (drugID, effectsID) values (27, 28);
insert into drug_side_effects (drugID, effectsID) values (11, 19);
insert into drug_side_effects (drugID, effectsID) values (12, 9);
insert into drug_side_effects (drugID, effectsID) values (11, 8);
insert into drug_side_effects (drugID, effectsID) values (20, 5);
insert into drug_side_effects (drugID, effectsID) values (24, 2);
insert into drug_side_effects (drugID, effectsID) values (2, 15);
insert into drug_side_effects (drugID, effectsID) values (14, 28);
insert into drug_side_effects (drugID, effectsID) values (27, 12);
insert into drug_side_effects (drugID, effectsID) values (13, 18);
insert into drug_side_effects (drugID, effectsID) values (4, 10);
insert into drug_side_effects (drugID, effectsID) values (20, 19);
insert into drug_side_effects (drugID, effectsID) values (1, 4);
insert into drug_side_effects (drugID, effectsID) values (6, 11);
insert into drug_side_effects (drugID, effectsID) values (29, 20);
insert into drug_side_effects (drugID, effectsID) values (29, 5);
insert into drug_side_effects (drugID, effectsID) values (25, 18);
insert into drug_side_effects (drugID, effectsID) values (19, 3);
insert into drug_side_effects (drugID, effectsID) values (11, 21);
insert into drug_side_effects (drugID, effectsID) values (23, 19);
insert into drug_side_effects (drugID, effectsID) values (22, 2);
insert into drug_side_effects (drugID, effectsID) values (9, 18);
insert into drug_side_effects (drugID, effectsID) values (9, 18);
insert into drug_side_effects (drugID, effectsID) values (8, 22);
insert into drug_side_effects (drugID, effectsID) values (9, 6);
insert into drug_side_effects (drugID, effectsID) values (2, 13);
insert into drug_side_effects (drugID, effectsID) values (25, 2);
insert into drug_side_effects (drugID, effectsID) values (9, 10);
insert into drug_side_effects (drugID, effectsID) values (6, 27);
insert into drug_side_effects (drugID, effectsID) values (3, 20);
insert into drug_side_effects (drugID, effectsID) values (4, 3);
insert into drug_side_effects (drugID, effectsID) values (8, 3);
insert into drug_side_effects (drugID, effectsID) values (19, 1);
insert into drug_side_effects (drugID, effectsID) values (3, 3);
insert into drug_side_effects (drugID, effectsID) values (6, 15);
insert into drug_side_effects (drugID, effectsID) values (19, 30);
insert into drug_side_effects (drugID, effectsID) values (13, 12);
insert into drug_side_effects (drugID, effectsID) values (19, 30);
insert into drug_side_effects (drugID, effectsID) values (19, 29);
insert into drug_side_effects (drugID, effectsID) values (16, 17);
insert into drug_side_effects (drugID, effectsID) values (6, 25);
insert into drug_side_effects (drugID, effectsID) values (26, 4);
insert into drug_side_effects (drugID, effectsID) values (6, 16);
insert into drug_side_effects (drugID, effectsID) values (9, 19);


CREATE TABLE `orders` (
    `orderID` int(64),
    `customerID` int(64),
    `sellerID`  int(64),
    `price_per_unit` float DEFAULT 0.0,
    `units_sold` int(64) NOT NULL,
    `total_cost` float, -- CHECK (total_cost == units_sold * price_per_unit),
    `drugID` int(64),
    PRIMARY KEY (`orderID`),
    FOREIGN KEY (`drugID`) REFERENCES `drug` (`drugID`)
);

insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (1, 1, 1, 32.98, 9224, 304207.52, 11);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (2, 2, 2, 76.19, 96467, 7349820.73, 18);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (3, 3, 3, 59.72, 29863, 1783418.36, 14);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (4, 4, 4, 47.58, 70677, 3362811.66, 10);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (5, 5, 5, 96.32, 48756, 4696177.92, 4);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (6, 6, 6, 45.87, 32393, 1485866.91, 6);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (7, 7, 7, 80.68, 82347, 6643755.96, 29);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (8, 8, 8, 92.02, 95478, 8785885.56, 10);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (9, 9, 9, 18.33, 69827, 1279928.91, 9);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (10, 10, 10, 39.73, 29446, 1169889.58, 27);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (11, 11, 11, 91.63, 93867, 8601033.21, 17);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (12, 12, 12, 82.96, 42715, 3543636.4, 20);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (13, 13, 13, 52.17, 4633, 241703.61, 13);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (14, 14, 14, 50.0, 89295, 4464750.0, 16);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (15, 15, 15, 26.07, 49096, 1279932.72, 18);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (16, 16, 16, 38.07, 74084, 2820377.88, 11);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (17, 17, 17, 89.91, 85767, 7711310.97, 23);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (18, 18, 18, 67.37, 66704, 4493848.48, 19);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (19, 19, 19, 54.0, 46201, 2494854.0, 14);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (20, 20, 20, 74.09, 73689, 5459618.01, 4);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (21, 21, 21, 55.65, 56621, 3150958.65, 17);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (22, 22, 22, 34.59, 3104, 107367.36, 19);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (23, 23, 23, 98.88, 19208, 1899287.04, 18);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (24, 24, 24, 22.09, 80649, 1781536.41, 4);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (25, 25, 25, 78.4, 86329, 6768193.6, 9);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (26, 26, 26, 99.8, 96191, 9599861.8, 12);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (27, 27, 27, 89.35, 64067, 5724386.45, 20);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (28, 28, 28, 2.14, 44634, 95516.76, 15);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (29, 29, 29, 40.32, 71351, 2876872.32, 23);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (30, 30, 30, 57.68, 59534, 3433921.12, 18);

CREATE TABLE `factory` (
    `factoryID` int,
    `name` varchar(64) NOT NULL,
    `email` varchar(64),
    `phone` int(10),
    `location` varchar(64) NOT NULL,
    PRIMARY KEY (`factoryID`)
);

insert into factory (factoryID, name, email, phone, location) values (1, 'Enoxaparin Sodium', 'csyme0@vimeo.com', '322-162-5629', '99 American Crossing');
insert into factory (factoryID, name, email, phone, location) values (2, 'Lorazepam', 'kbrownlea1@tamu.edu', '531-730-7048', '72 Nelson Way');
insert into factory (factoryID, name, email, phone, location) values (3, 'Fluconazole', 'klukins2@facebook.com', '763-324-8914', '9 Union Way');
insert into factory (factoryID, name, email, phone, location) values (4, 'Simvastatin', 'csaylor3@about.com', '975-217-3125', '43 Westend Junction');
insert into factory (factoryID, name, email, phone, location) values (5, 'Rifampin', 'rphoebe4@narod.ru', '830-847-0700', '16 Harper Street');
insert into factory (factoryID, name, email, phone, location) values (6, 'No7 Lifting and Firming Foundation Sunscreen SPF 15 Vanilla', 'clishmund5@multiply.com', '344-426-5401', '724 Ridgeview Way');
insert into factory (factoryID, name, email, phone, location) values (7, 'FAST RELIEF ARTROSAMIN', 'hriccione6@youku.com', '726-378-7887', '9588 Northwestern Park');
insert into factory (factoryID, name, email, phone, location) values (8, 'Phentermine Hydrochloride', 'psobczak7@rambler.ru', '523-181-2226', '56276 Blackbird Court');
insert into factory (factoryID, name, email, phone, location) values (9, 'Isosorbide Mononitrate', 'eormshaw8@trellian.com', '602-323-5477', '5468 Butterfield Plaza');
insert into factory (factoryID, name, email, phone, location) values (10, 'Hydralazine Hydrochloride', 'ahonig9@delicious.com', '964-559-7686', '2373 Daystar Drive');
insert into factory (factoryID, name, email, phone, location) values (11, 'Corine', 'McAughtrie', 'cmcaughtriea@europa.eu', '35 Ridgeview Crossing');
insert into factory (factoryID, name, email, phone, location) values (12, 'Delmore', 'Swynfen', 'dswynfenb@wordpress.com', '91 Tony Place');
insert into factory (factoryID, name, email, phone, location) values (13, 'Farlay', 'Edgeson', 'fedgesonc@godaddy.com', '1557 Johnson Terrace');
insert into factory (factoryID, name, email, phone, location) values (14, 'Tracie', 'Arbuckel', 'tarbuckeld@e-recht24.de', '15 Monica Circle');
insert into factory (factoryID, name, email, phone, location) values (15, 'Flin', 'Mathews', 'fmathewse@rediff.com', '5 Blue Bill Park Point');
insert into factory (factoryID, name, email, phone, location) values (16, 'Napoleon', 'Francomb', 'nfrancombf@technorati.com', '51857 Mcguire Lane');
insert into factory (factoryID, name, email, phone, location) values (17, 'Jacky', 'Rudham', 'jrudhamg@yale.edu', '88593 Lotheville Lane');
insert into factory (factoryID, name, email, phone, location) values (18, 'Merrilee', 'Cona', 'mconah@cbslocal.com', '9 Scoville Alley');
insert into factory (factoryID, name, email, phone, location) values (19, 'Reba', 'Needs', 'rneedsi@baidu.com', '356 Stoughton Hill');
insert into factory (factoryID, name, email, phone, location) values (20, 'Jone', 'Ayree', 'jayreej@e-recht24.de', '26 Lunder Circle');
insert into factory (factoryID, name, email, phone, location) values (21, 'Flory', 'Berthelet', 'fbertheletk@google.it', '607 Florence Junction');
insert into factory (factoryID, name, email, phone, location) values (22, 'Aida', 'Barrott', 'abarrottl@about.me', '1257 Memorial Point');
insert into factory (factoryID, name, email, phone, location) values (23, 'Nickolas', 'Oxtoby', 'noxtobym@bbb.org', '060 Sundown Way');
insert into factory (factoryID, name, email, phone, location) values (24, 'Phoebe', 'Baynes', 'pbaynesn@slashdot.org', '4 Sheridan Pass');
insert into factory (factoryID, name, email, phone, location) values (25, 'Emera', 'Crabtree', 'ecrabtreeo@last.fm', '90 Oak Valley Way');
insert into factory (factoryID, name, email, phone, location) values (26, 'Chickie', 'Croad', 'ccroadp@wired.com', '4754 Anzinger Drive');
insert into factory (factoryID, name, email, phone, location) values (27, 'Simmonds', 'Dammarell', 'sdammarellq@si.edu', '4 Clove Lane');
insert into factory (factoryID, name, email, phone, location) values (28, 'Sal', 'Skelton', 'sskeltonr@surveymonkey.com', '081 Caliangt Road');
insert into factory (factoryID, name, email, phone, location) values (29, 'Sophey', 'Benedyktowicz', 'sbenedyktowiczs@paypal.com', '80808 Fairfield Plaza');
insert into factory (factoryID, name, email, phone, location) values (30, 'Billie', 'Agerskow', 'bagerskowt@prweb.com', '73 5th Center');


CREATE TABLE `factory_drug` (
    `factoryID` int(64),
    `drugID` int(64),
    `quantity_produced` int NOT NULL,
    FOREIGN KEY (`factoryID`) REFERENCES `factory` (`factoryID`),
    FOREIGN KEY (`drugID`) REFERENCES `drug` (`drugID`)
);

insert into factory_drug (factoryID, drugID, quantity_produced) values (3, 16, 804);
insert into factory_drug (factoryID, drugID, quantity_produced) values (15, 2, 781);
insert into factory_drug (factoryID, drugID, quantity_produced) values (10, 28, 636);
insert into factory_drug (factoryID, drugID, quantity_produced) values (30, 11, 878);
insert into factory_drug (factoryID, drugID, quantity_produced) values (19, 28, 402);
insert into factory_drug (factoryID, drugID, quantity_produced) values (10, 27, 152);
insert into factory_drug (factoryID, drugID, quantity_produced) values (2, 29, 298);
insert into factory_drug (factoryID, drugID, quantity_produced) values (16, 25, 55);
insert into factory_drug (factoryID, drugID, quantity_produced) values (24, 23, 105);
insert into factory_drug (factoryID, drugID, quantity_produced) values (6, 2, 662);
insert into factory_drug (factoryID, drugID, quantity_produced) values (22, 6, 673);
insert into factory_drug (factoryID, drugID, quantity_produced) values (5, 2, 813);
insert into factory_drug (factoryID, drugID, quantity_produced) values (8, 6, 31);
insert into factory_drug (factoryID, drugID, quantity_produced) values (26, 4, 869);
insert into factory_drug (factoryID, drugID, quantity_produced) values (1, 26, 995);
insert into factory_drug (factoryID, drugID, quantity_produced) values (13, 26, 65);
insert into factory_drug (factoryID, drugID, quantity_produced) values (5, 1, 879);
insert into factory_drug (factoryID, drugID, quantity_produced) values (9, 2, 421);
insert into factory_drug (factoryID, drugID, quantity_produced) values (19, 17, 934);
insert into factory_drug (factoryID, drugID, quantity_produced) values (11, 12, 402);
insert into factory_drug (factoryID, drugID, quantity_produced) values (4, 2, 358);
insert into factory_drug (factoryID, drugID, quantity_produced) values (15, 3, 850);
insert into factory_drug (factoryID, drugID, quantity_produced) values (22, 7, 564);
insert into factory_drug (factoryID, drugID, quantity_produced) values (25, 12, 670);
insert into factory_drug (factoryID, drugID, quantity_produced) values (21, 10, 40);
insert into factory_drug (factoryID, drugID, quantity_produced) values (24, 16, 459);
insert into factory_drug (factoryID, drugID, quantity_produced) values (30, 26, 680);
insert into factory_drug (factoryID, drugID, quantity_produced) values (16, 1, 692);
insert into factory_drug (factoryID, drugID, quantity_produced) values (4, 29, 77);
insert into factory_drug (factoryID, drugID, quantity_produced) values (19, 9, 797);
insert into factory_drug (factoryID, drugID, quantity_produced) values (14, 30, 319);
insert into factory_drug (factoryID, drugID, quantity_produced) values (9, 9, 470);
insert into factory_drug (factoryID, drugID, quantity_produced) values (3, 28, 155);
insert into factory_drug (factoryID, drugID, quantity_produced) values (6, 22, 432);
insert into factory_drug (factoryID, drugID, quantity_produced) values (5, 7, 826);
insert into factory_drug (factoryID, drugID, quantity_produced) values (8, 15, 453);
insert into factory_drug (factoryID, drugID, quantity_produced) values (16, 1, 590);
insert into factory_drug (factoryID, drugID, quantity_produced) values (20, 17, 582);
insert into factory_drug (factoryID, drugID, quantity_produced) values (29, 14, 758);
insert into factory_drug (factoryID, drugID, quantity_produced) values (9, 9, 512);
insert into factory_drug (factoryID, drugID, quantity_produced) values (8, 28, 727);
insert into factory_drug (factoryID, drugID, quantity_produced) values (6, 28, 307);
insert into factory_drug (factoryID, drugID, quantity_produced) values (26, 27, 726);
insert into factory_drug (factoryID, drugID, quantity_produced) values (4, 19, 802);
insert into factory_drug (factoryID, drugID, quantity_produced) values (13, 26, 101);
insert into factory_drug (factoryID, drugID, quantity_produced) values (12, 25, 258);
insert into factory_drug (factoryID, drugID, quantity_produced) values (9, 17, 639);
insert into factory_drug (factoryID, drugID, quantity_produced) values (8, 1, 47);
insert into factory_drug (factoryID, drugID, quantity_produced) values (27, 21, 606);
insert into factory_drug (factoryID, drugID, quantity_produced) values (8, 10, 389);
insert into factory_drug (factoryID, drugID, quantity_produced) values (9, 22, 618);
insert into factory_drug (factoryID, drugID, quantity_produced) values (5, 17, 295);
insert into factory_drug (factoryID, drugID, quantity_produced) values (16, 27, 416);
insert into factory_drug (factoryID, drugID, quantity_produced) values (24, 28, 924);
insert into factory_drug (factoryID, drugID, quantity_produced) values (10, 19, 374);
insert into factory_drug (factoryID, drugID, quantity_produced) values (22, 11, 502);
insert into factory_drug (factoryID, drugID, quantity_produced) values (19, 4, 834);
insert into factory_drug (factoryID, drugID, quantity_produced) values (14, 22, 596);
insert into factory_drug (factoryID, drugID, quantity_produced) values (21, 25, 697);
insert into factory_drug (factoryID, drugID, quantity_produced) values (19, 1, 748);
insert into factory_drug (factoryID, drugID, quantity_produced) values (25, 6, 450);
insert into factory_drug (factoryID, drugID, quantity_produced) values (15, 23, 121);
insert into factory_drug (factoryID, drugID, quantity_produced) values (4, 12, 839);
insert into factory_drug (factoryID, drugID, quantity_produced) values (13, 15, 73);
insert into factory_drug (factoryID, drugID, quantity_produced) values (11, 6, 769);
insert into factory_drug (factoryID, drugID, quantity_produced) values (3, 27, 816);
insert into factory_drug (factoryID, drugID, quantity_produced) values (27, 11, 414);
insert into factory_drug (factoryID, drugID, quantity_produced) values (28, 18, 54);
insert into factory_drug (factoryID, drugID, quantity_produced) values (9, 5, 379);
insert into factory_drug (factoryID, drugID, quantity_produced) values (30, 9, 123);
insert into factory_drug (factoryID, drugID, quantity_produced) values (30, 23, 141);
insert into factory_drug (factoryID, drugID, quantity_produced) values (25, 3, 537);
insert into factory_drug (factoryID, drugID, quantity_produced) values (10, 20, 700);
insert into factory_drug (factoryID, drugID, quantity_produced) values (4, 6, 234);
insert into factory_drug (factoryID, drugID, quantity_produced) values (30, 21, 418);
insert into factory_drug (factoryID, drugID, quantity_produced) values (19, 13, 632);
insert into factory_drug (factoryID, drugID, quantity_produced) values (20, 5, 574);
insert into factory_drug (factoryID, drugID, quantity_produced) values (17, 24, 679);
insert into factory_drug (factoryID, drugID, quantity_produced) values (17, 8, 929);
insert into factory_drug (factoryID, drugID, quantity_produced) values (19, 8, 640);
insert into factory_drug (factoryID, drugID, quantity_produced) values (30, 27, 929);
insert into factory_drug (factoryID, drugID, quantity_produced) values (19, 29, 228);
insert into factory_drug (factoryID, drugID, quantity_produced) values (22, 28, 970);
insert into factory_drug (factoryID, drugID, quantity_produced) values (19, 10, 23);
insert into factory_drug (factoryID, drugID, quantity_produced) values (9, 8, 321);
insert into factory_drug (factoryID, drugID, quantity_produced) values (14, 13, 882);
insert into factory_drug (factoryID, drugID, quantity_produced) values (1, 29, 295);
insert into factory_drug (factoryID, drugID, quantity_produced) values (15, 21, 189);
insert into factory_drug (factoryID, drugID, quantity_produced) values (3, 11, 413);
insert into factory_drug (factoryID, drugID, quantity_produced) values (13, 7, 477);
insert into factory_drug (factoryID, drugID, quantity_produced) values (3, 13, 592);
insert into factory_drug (factoryID, drugID, quantity_produced) values (25, 28, 24);
insert into factory_drug (factoryID, drugID, quantity_produced) values (29, 30, 218);
insert into factory_drug (factoryID, drugID, quantity_produced) values (7, 27, 92);
insert into factory_drug (factoryID, drugID, quantity_produced) values (6, 28, 370);
insert into factory_drug (factoryID, drugID, quantity_produced) values (19, 27, 505);
insert into factory_drug (factoryID, drugID, quantity_produced) values (10, 26, 885);
insert into factory_drug (factoryID, drugID, quantity_produced) values (13, 16, 892);
insert into factory_drug (factoryID, drugID, quantity_produced) values (10, 9, 60);
insert into factory_drug (factoryID, drugID, quantity_produced) values (15, 13, 931);
insert into factory_drug (factoryID, drugID, quantity_produced) values (13, 7, 220);
insert into factory_drug (factoryID, drugID, quantity_produced) values (21, 20, 786);
insert into factory_drug (factoryID, drugID, quantity_produced) values (8, 20, 254);
insert into factory_drug (factoryID, drugID, quantity_produced) values (27, 5, 381);
insert into factory_drug (factoryID, drugID, quantity_produced) values (10, 7, 164);
insert into factory_drug (factoryID, drugID, quantity_produced) values (16, 18, 704);
insert into factory_drug (factoryID, drugID, quantity_produced) values (19, 26, 267);
insert into factory_drug (factoryID, drugID, quantity_produced) values (25, 14, 831);
insert into factory_drug (factoryID, drugID, quantity_produced) values (11, 5, 852);
insert into factory_drug (factoryID, drugID, quantity_produced) values (25, 30, 479);
insert into factory_drug (factoryID, drugID, quantity_produced) values (13, 5, 179);
insert into factory_drug (factoryID, drugID, quantity_produced) values (10, 11, 436);
insert into factory_drug (factoryID, drugID, quantity_produced) values (19, 23, 946);
insert into factory_drug (factoryID, drugID, quantity_produced) values (30, 5, 95);
insert into factory_drug (factoryID, drugID, quantity_produced) values (14, 21, 217);
insert into factory_drug (factoryID, drugID, quantity_produced) values (7, 24, 78);
insert into factory_drug (factoryID, drugID, quantity_produced) values (12, 18, 464);
insert into factory_drug (factoryID, drugID, quantity_produced) values (17, 17, 121);
insert into factory_drug (factoryID, drugID, quantity_produced) values (12, 22, 590);
insert into factory_drug (factoryID, drugID, quantity_produced) values (10, 11, 887);
insert into factory_drug (factoryID, drugID, quantity_produced) values (11, 18, 135);
insert into factory_drug (factoryID, drugID, quantity_produced) values (23, 4, 753);
insert into factory_drug (factoryID, drugID, quantity_produced) values (17, 3, 755);
insert into factory_drug (factoryID, drugID, quantity_produced) values (25, 20, 694);
insert into factory_drug (factoryID, drugID, quantity_produced) values (4, 24, 624);
insert into factory_drug (factoryID, drugID, quantity_produced) values (23, 21, 732);
insert into factory_drug (factoryID, drugID, quantity_produced) values (29, 29, 816);
insert into factory_drug (factoryID, drugID, quantity_produced) values (4, 12, 628);
insert into factory_drug (factoryID, drugID, quantity_produced) values (18, 5, 641);
insert into factory_drug (factoryID, drugID, quantity_produced) values (18, 15, 412);
insert into factory_drug (factoryID, drugID, quantity_produced) values (15, 22, 195);
insert into factory_drug (factoryID, drugID, quantity_produced) values (4, 9, 589);
insert into factory_drug (factoryID, drugID, quantity_produced) values (29, 28, 855);
insert into factory_drug (factoryID, drugID, quantity_produced) values (24, 24, 472);
insert into factory_drug (factoryID, drugID, quantity_produced) values (3, 12, 696);
insert into factory_drug (factoryID, drugID, quantity_produced) values (22, 19, 678);
insert into factory_drug (factoryID, drugID, quantity_produced) values (16, 7, 719);
insert into factory_drug (factoryID, drugID, quantity_produced) values (5, 23, 293);
insert into factory_drug (factoryID, drugID, quantity_produced) values (26, 15, 830);
insert into factory_drug (factoryID, drugID, quantity_produced) values (1, 24, 813);
insert into factory_drug (factoryID, drugID, quantity_produced) values (19, 25, 109);
insert into factory_drug (factoryID, drugID, quantity_produced) values (13, 19, 745);
insert into factory_drug (factoryID, drugID, quantity_produced) values (8, 15, 822);
insert into factory_drug (factoryID, drugID, quantity_produced) values (29, 18, 800);
insert into factory_drug (factoryID, drugID, quantity_produced) values (21, 10, 811);
insert into factory_drug (factoryID, drugID, quantity_produced) values (26, 21, 902);
insert into factory_drug (factoryID, drugID, quantity_produced) values (10, 20, 943);
insert into factory_drug (factoryID, drugID, quantity_produced) values (1, 11, 124);
insert into factory_drug (factoryID, drugID, quantity_produced) values (7, 10, 415);
insert into factory_drug (factoryID, drugID, quantity_produced) values (30, 23, 539);


CREATE TABLE `medicine_hub` (
    `hub_ID` int(64),
    `name` varchar(64),
    `location` varchar(64) NOT NULL,
    PRIMARY KEY (`hub_ID`)
);

insert into medicine_hub (hub_ID, name, location) values (1, 'Lubowitz Inc', 'Langgen');
insert into medicine_hub (hub_ID, name, location) values (2, 'Turner LLC', 'Wantian');
insert into medicine_hub (hub_ID, name, location) values (3, 'Senger, Lakin and Conroy', 'Dongshangguan');
insert into medicine_hub (hub_ID, name, location) values (4, 'Wehner LLC', 'Omuo-Ekiti');
insert into medicine_hub (hub_ID, name, location) values (5, 'Feest-Weimann', 'Zoumachang');
insert into medicine_hub (hub_ID, name, location) values (6, 'Strosin, Witting and Abshire', 'Ar Ruways');
insert into medicine_hub (hub_ID, name, location) values (7, 'Beer, Mraz and Olson', 'Riangbao');
insert into medicine_hub (hub_ID, name, location) values (8, 'Towne-Thompson', 'Rochester');
insert into medicine_hub (hub_ID, name, location) values (9, 'Marquardt Group', 'Huntington');
insert into medicine_hub (hub_ID, name, location) values (10, 'Legros and Sons', 'Outeiro Seco');
insert into medicine_hub (hub_ID, name, location) values (11, 'Sauer-Leffler', 'Jablonec nad Jizerou');
insert into medicine_hub (hub_ID, name, location) values (12, 'Stehr LLC', 'Tefé');
insert into medicine_hub (hub_ID, name, location) values (13, 'Hilpert-White', 'Kerema');
insert into medicine_hub (hub_ID, name, location) values (14, 'Gottlieb, Wiza and Runolfsdottir', 'Pagak');
insert into medicine_hub (hub_ID, name, location) values (15, 'Waters, Heller and Johnston', 'Kamenický Šenov');
insert into medicine_hub (hub_ID, name, location) values (16, 'Kuhic-Mosciski', 'Lyon');
insert into medicine_hub (hub_ID, name, location) values (17, 'Pouros and Sons', 'Hirakata');
insert into medicine_hub (hub_ID, name, location) values (18, 'Gleason-Bernhard', 'Sindangan');
insert into medicine_hub (hub_ID, name, location) values (19, 'Marquardt, Cruickshank and Lueilwitz', 'Pita Kotte');
insert into medicine_hub (hub_ID, name, location) values (20, 'Auer-Hansen', 'Keratéa');
insert into medicine_hub (hub_ID, name, location) values (21, 'Lindgren Group', 'Yudai');
insert into medicine_hub (hub_ID, name, location) values (22, 'Weissnat-Haley', 'Kukichūō');
insert into medicine_hub (hub_ID, name, location) values (23, 'Auer, Borer and Douglas', 'Leran Kulon');
insert into medicine_hub (hub_ID, name, location) values (24, 'Batz, Cronin and Berge', 'Longsheng');
insert into medicine_hub (hub_ID, name, location) values (25, 'Nader, Schuster and Mayer', 'Raoshi');
insert into medicine_hub (hub_ID, name, location) values (26, 'Emard-Adams', 'Uničov');
insert into medicine_hub (hub_ID, name, location) values (27, 'Bode-Herzog', 'Cubará');
insert into medicine_hub (hub_ID, name, location) values (28, 'Harris, Glover and Wunsch', 'Las Matas de Farfán');
insert into medicine_hub (hub_ID, name, location) values (29, 'Robel, Fisher and D''Amore', 'Urasqui');
insert into medicine_hub (hub_ID, name, location) values (30, 'Schmitt-Huel', 'Sinarwangi');

CREATE TABLE `places_to_buy_drugs` (
    `drugID` int,
    `employeeID` int,
    FOREIGN KEY (`drugID`) REFERENCES `drug` (`drugID`),
    FOREIGN KEY (`employeeID`) REFERENCES `medicine_hub` (`hub_ID`)
);

insert into places_to_buy_drugs (drugID, employeeID) values (7, 10);
insert into places_to_buy_drugs (drugID, employeeID) values (6, 5);
insert into places_to_buy_drugs (drugID, employeeID) values (30, 30);
insert into places_to_buy_drugs (drugID, employeeID) values (28, 17);
insert into places_to_buy_drugs (drugID, employeeID) values (1, 15);
insert into places_to_buy_drugs (drugID, employeeID) values (20, 24);
insert into places_to_buy_drugs (drugID, employeeID) values (15, 30);
insert into places_to_buy_drugs (drugID, employeeID) values (4, 15);
insert into places_to_buy_drugs (drugID, employeeID) values (11, 26);
insert into places_to_buy_drugs (drugID, employeeID) values (19, 7);
insert into places_to_buy_drugs (drugID, employeeID) values (21, 18);
insert into places_to_buy_drugs (drugID, employeeID) values (18, 3);
insert into places_to_buy_drugs (drugID, employeeID) values (15, 29);
insert into places_to_buy_drugs (drugID, employeeID) values (24, 25);
insert into places_to_buy_drugs (drugID, employeeID) values (15, 8);
insert into places_to_buy_drugs (drugID, employeeID) values (4, 1);
insert into places_to_buy_drugs (drugID, employeeID) values (5, 9);
insert into places_to_buy_drugs (drugID, employeeID) values (18, 23);
insert into places_to_buy_drugs (drugID, employeeID) values (1, 27);
insert into places_to_buy_drugs (drugID, employeeID) values (5, 14);
insert into places_to_buy_drugs (drugID, employeeID) values (13, 20);
insert into places_to_buy_drugs (drugID, employeeID) values (30, 25);
insert into places_to_buy_drugs (drugID, employeeID) values (7, 19);
insert into places_to_buy_drugs (drugID, employeeID) values (28, 6);
insert into places_to_buy_drugs (drugID, employeeID) values (5, 23);
insert into places_to_buy_drugs (drugID, employeeID) values (25, 19);
insert into places_to_buy_drugs (drugID, employeeID) values (21, 16);
insert into places_to_buy_drugs (drugID, employeeID) values (28, 3);
insert into places_to_buy_drugs (drugID, employeeID) values (11, 18);
insert into places_to_buy_drugs (drugID, employeeID) values (29, 3);
insert into places_to_buy_drugs (drugID, employeeID) values (23, 20);
insert into places_to_buy_drugs (drugID, employeeID) values (8, 30);
insert into places_to_buy_drugs (drugID, employeeID) values (20, 2);
insert into places_to_buy_drugs (drugID, employeeID) values (8, 23);
insert into places_to_buy_drugs (drugID, employeeID) values (25, 22);
insert into places_to_buy_drugs (drugID, employeeID) values (6, 11);
insert into places_to_buy_drugs (drugID, employeeID) values (26, 11);
insert into places_to_buy_drugs (drugID, employeeID) values (21, 11);
insert into places_to_buy_drugs (drugID, employeeID) values (28, 29);
insert into places_to_buy_drugs (drugID, employeeID) values (3, 1);
insert into places_to_buy_drugs (drugID, employeeID) values (7, 7);
insert into places_to_buy_drugs (drugID, employeeID) values (5, 11);
insert into places_to_buy_drugs (drugID, employeeID) values (5, 25);
insert into places_to_buy_drugs (drugID, employeeID) values (4, 22);
insert into places_to_buy_drugs (drugID, employeeID) values (1, 12);
insert into places_to_buy_drugs (drugID, employeeID) values (8, 30);
insert into places_to_buy_drugs (drugID, employeeID) values (27, 13);
insert into places_to_buy_drugs (drugID, employeeID) values (29, 11);
insert into places_to_buy_drugs (drugID, employeeID) values (3, 15);
insert into places_to_buy_drugs (drugID, employeeID) values (19, 14);
insert into places_to_buy_drugs (drugID, employeeID) values (1, 24);
insert into places_to_buy_drugs (drugID, employeeID) values (18, 24);
insert into places_to_buy_drugs (drugID, employeeID) values (27, 14);
insert into places_to_buy_drugs (drugID, employeeID) values (7, 2);
insert into places_to_buy_drugs (drugID, employeeID) values (15, 7);
insert into places_to_buy_drugs (drugID, employeeID) values (18, 10);
insert into places_to_buy_drugs (drugID, employeeID) values (8, 1);
insert into places_to_buy_drugs (drugID, employeeID) values (6, 24);
insert into places_to_buy_drugs (drugID, employeeID) values (24, 6);
insert into places_to_buy_drugs (drugID, employeeID) values (18, 10);
insert into places_to_buy_drugs (drugID, employeeID) values (28, 16);
insert into places_to_buy_drugs (drugID, employeeID) values (13, 7);
insert into places_to_buy_drugs (drugID, employeeID) values (27, 20);
insert into places_to_buy_drugs (drugID, employeeID) values (18, 24);
insert into places_to_buy_drugs (drugID, employeeID) values (9, 12);
insert into places_to_buy_drugs (drugID, employeeID) values (19, 16);
insert into places_to_buy_drugs (drugID, employeeID) values (7, 9);
insert into places_to_buy_drugs (drugID, employeeID) values (29, 13);
insert into places_to_buy_drugs (drugID, employeeID) values (10, 7);
insert into places_to_buy_drugs (drugID, employeeID) values (16, 13);
insert into places_to_buy_drugs (drugID, employeeID) values (9, 7);
insert into places_to_buy_drugs (drugID, employeeID) values (22, 16);
insert into places_to_buy_drugs (drugID, employeeID) values (26, 4);
insert into places_to_buy_drugs (drugID, employeeID) values (17, 21);
insert into places_to_buy_drugs (drugID, employeeID) values (9, 4);
insert into places_to_buy_drugs (drugID, employeeID) values (15, 11);
insert into places_to_buy_drugs (drugID, employeeID) values (22, 18);
insert into places_to_buy_drugs (drugID, employeeID) values (11, 24);
insert into places_to_buy_drugs (drugID, employeeID) values (2, 16);
insert into places_to_buy_drugs (drugID, employeeID) values (10, 17);
insert into places_to_buy_drugs (drugID, employeeID) values (21, 28);
insert into places_to_buy_drugs (drugID, employeeID) values (19, 14);
insert into places_to_buy_drugs (drugID, employeeID) values (22, 3);
insert into places_to_buy_drugs (drugID, employeeID) values (11, 22);
insert into places_to_buy_drugs (drugID, employeeID) values (6, 21);
insert into places_to_buy_drugs (drugID, employeeID) values (23, 6);
insert into places_to_buy_drugs (drugID, employeeID) values (1, 19);
insert into places_to_buy_drugs (drugID, employeeID) values (2, 25);
insert into places_to_buy_drugs (drugID, employeeID) values (9, 27);
insert into places_to_buy_drugs (drugID, employeeID) values (27, 18);
insert into places_to_buy_drugs (drugID, employeeID) values (6, 2);
insert into places_to_buy_drugs (drugID, employeeID) values (26, 1);
insert into places_to_buy_drugs (drugID, employeeID) values (20, 10);
insert into places_to_buy_drugs (drugID, employeeID) values (1, 6);
insert into places_to_buy_drugs (drugID, employeeID) values (15, 17);
insert into places_to_buy_drugs (drugID, employeeID) values (5, 3);
insert into places_to_buy_drugs (drugID, employeeID) values (25, 15);
insert into places_to_buy_drugs (drugID, employeeID) values (25, 2);
insert into places_to_buy_drugs (drugID, employeeID) values (17, 17);
insert into places_to_buy_drugs (drugID, employeeID) values (10, 27);
insert into places_to_buy_drugs (drugID, employeeID) values (8, 22);
insert into places_to_buy_drugs (drugID, employeeID) values (23, 6);
insert into places_to_buy_drugs (drugID, employeeID) values (20, 5);
insert into places_to_buy_drugs (drugID, employeeID) values (2, 8);
insert into places_to_buy_drugs (drugID, employeeID) values (14, 29);
insert into places_to_buy_drugs (drugID, employeeID) values (23, 8);
insert into places_to_buy_drugs (drugID, employeeID) values (26, 4);
insert into places_to_buy_drugs (drugID, employeeID) values (28, 16);
insert into places_to_buy_drugs (drugID, employeeID) values (30, 1);
insert into places_to_buy_drugs (drugID, employeeID) values (25, 22);
insert into places_to_buy_drugs (drugID, employeeID) values (9, 16);
insert into places_to_buy_drugs (drugID, employeeID) values (28, 3);
insert into places_to_buy_drugs (drugID, employeeID) values (26, 12);
insert into places_to_buy_drugs (drugID, employeeID) values (14, 6);
insert into places_to_buy_drugs (drugID, employeeID) values (5, 28);
insert into places_to_buy_drugs (drugID, employeeID) values (19, 10);
insert into places_to_buy_drugs (drugID, employeeID) values (18, 19);
insert into places_to_buy_drugs (drugID, employeeID) values (20, 4);
insert into places_to_buy_drugs (drugID, employeeID) values (2, 11);
insert into places_to_buy_drugs (drugID, employeeID) values (13, 4);
insert into places_to_buy_drugs (drugID, employeeID) values (5, 26);
insert into places_to_buy_drugs (drugID, employeeID) values (22, 18);
insert into places_to_buy_drugs (drugID, employeeID) values (21, 11);
insert into places_to_buy_drugs (drugID, employeeID) values (12, 16);
insert into places_to_buy_drugs (drugID, employeeID) values (3, 29);
insert into places_to_buy_drugs (drugID, employeeID) values (23, 21);
insert into places_to_buy_drugs (drugID, employeeID) values (12, 15);
insert into places_to_buy_drugs (drugID, employeeID) values (8, 6);
insert into places_to_buy_drugs (drugID, employeeID) values (6, 23);
insert into places_to_buy_drugs (drugID, employeeID) values (21, 28);
insert into places_to_buy_drugs (drugID, employeeID) values (28, 6);
insert into places_to_buy_drugs (drugID, employeeID) values (24, 7);
insert into places_to_buy_drugs (drugID, employeeID) values (20, 26);
insert into places_to_buy_drugs (drugID, employeeID) values (21, 21);
insert into places_to_buy_drugs (drugID, employeeID) values (5, 27);
insert into places_to_buy_drugs (drugID, employeeID) values (3, 6);
insert into places_to_buy_drugs (drugID, employeeID) values (6, 20);
insert into places_to_buy_drugs (drugID, employeeID) values (27, 15);
insert into places_to_buy_drugs (drugID, employeeID) values (27, 6);
insert into places_to_buy_drugs (drugID, employeeID) values (23, 30);
insert into places_to_buy_drugs (drugID, employeeID) values (14, 20);
insert into places_to_buy_drugs (drugID, employeeID) values (25, 29);
insert into places_to_buy_drugs (drugID, employeeID) values (6, 1);
insert into places_to_buy_drugs (drugID, employeeID) values (6, 26);
insert into places_to_buy_drugs (drugID, employeeID) values (12, 7);
insert into places_to_buy_drugs (drugID, employeeID) values (26, 10);
insert into places_to_buy_drugs (drugID, employeeID) values (22, 12);
insert into places_to_buy_drugs (drugID, employeeID) values (2, 24);
insert into places_to_buy_drugs (drugID, employeeID) values (14, 30);
insert into places_to_buy_drugs (drugID, employeeID) values (19, 18);



CREATE TABLE `ingredients` (
    `ingredient_name` varchar(64) NOT NULL,
    PRIMARY KEY (`ingredient_name`)
);

INSERT INTO ingredients (ingredient_name) VALUES ('Senna pendula (Humb. & Bonpl. ex Willd.) Irwin & Barneby var. glabrata (Vogel) Irwin & Barneby');
INSERT INTO ingredients (ingredient_name) VALUES ('Silene nutans L.');
INSERT INTO ingredients (ingredient_name) VALUES ('Juglans neotropica Diels');
INSERT INTO ingredients (ingredient_name) VALUES ('Monolepis Schrad.');
INSERT INTO ingredients (ingredient_name) VALUES ('Senna polyphylla (Jacq.) Irwin & Barneby');
INSERT INTO ingredients (ingredient_name) VALUES ('Lysimachia quadrifolia L.');
INSERT INTO ingredients (ingredient_name) VALUES ('Acarospora smaragdula (Wahlenb.) A. Massal.');
INSERT INTO ingredients (ingredient_name) VALUES ('Pedicularis parryi A. Gray ssp. mogollonica (Greene) G.D. Carr');
INSERT INTO ingredients (ingredient_name) VALUES ('Chaptalia Vent.');
INSERT INTO ingredients (ingredient_name) VALUES ('Sideroxylon cubense (Griseb.) T.D. Penn.');
INSERT INTO ingredients (ingredient_name) VALUES ('Agrostis howellii Scribn.');
INSERT INTO ingredients (ingredient_name) VALUES ('Sasa Makino & Shib.');
INSERT INTO ingredients (ingredient_name) VALUES ('Microsorum Link');
INSERT INTO ingredients (ingredient_name) VALUES ('Helianthemum Mill.');
INSERT INTO ingredients (ingredient_name) VALUES ('Rosa gymnocarpa Nutt.');
INSERT INTO ingredients (ingredient_name) VALUES ('Evolvulus sericeus Sw.');
INSERT INTO ingredients (ingredient_name) VALUES ('Valeriana edulis Nutt. ex Torr. & A. Gray');
INSERT INTO ingredients (ingredient_name) VALUES ('Argemone munita Durand & Hilg. ssp. rotundata (Rydb.) G.B. Ownbey');
INSERT INTO ingredients (ingredient_name) VALUES ('Distichium capillaceum (Hedw.) Bruch & Schimp. var. capillaceum');
INSERT INTO ingredients (ingredient_name) VALUES ('Navarretia leucocephala Benth. ssp. plieantha (H. Mason) Day');
INSERT INTO ingredients (ingredient_name) VALUES ('Adiantum trapeziforme L.');
INSERT INTO ingredients (ingredient_name) VALUES ('Ranunculus canus Benth.');
INSERT INTO ingredients (ingredient_name) VALUES ('Astragalus iselyi S.L. Welsh');
INSERT INTO ingredients (ingredient_name) VALUES ('Jamesia tetrapetala N.H. Holmgren & P.K. Holmgren');
INSERT INTO ingredients (ingredient_name) VALUES ('Cordia laevigata Lam.');
INSERT INTO ingredients (ingredient_name) VALUES ('Immersaria carbonoidea (J.W. Thomson) Esnault & Roux');
INSERT INTO ingredients (ingredient_name) VALUES ('Mentzelia dispersa S. Watson var. latifolia (Rydb.) J.F. Macbr.');
INSERT INTO ingredients (ingredient_name) VALUES ('Calycadenia micrantha R.L. Carr & G.D. Carr');
INSERT INTO ingredients (ingredient_name) VALUES ('Polystichum tsus-simense (Hook.) J. Sm.');
INSERT INTO ingredients (ingredient_name) VALUES ('Allium gooddingii Ownbey');

CREATE TABLE `ingredients_drugs` (
    `ingredient_name` varchar(64),
    `drugID` int,
    FOREIGN KEY (`ingredient_name`) REFERENCES `ingredients` (`ingredient_name`),
    FOREIGN KEY (`drugID`) REFERENCES `drug` (`drugID`)
);

insert into ingredients_drugs (ingredient_name, drugID) values ('Valeriana edulis Nutt. ex Torr. & A. Gray', 27);
insert into ingredients_drugs (ingredient_name, drugID) values ('Sideroxylon cubense (Griseb.) T.D. Penn.', 16);
insert into ingredients_drugs (ingredient_name, drugID) values ('Astragalus iselyi S.L. Welsh', 24);
insert into ingredients_drugs (ingredient_name, drugID) values ('Pedicularis parryi A. Gray ssp. mogollonica (Greene) G.D. Carr', 30);
insert into ingredients_drugs (ingredient_name, drugID) values ('Helianthemum Mill.', 15);
insert into ingredients_drugs (ingredient_name, drugID) values ('Navarretia leucocephala Benth. ssp. plieantha (H. Mason) Day', 13);
insert into ingredients_drugs (ingredient_name, drugID) values ('Lysimachia quadrifolia L.', 28);
insert into ingredients_drugs (ingredient_name, drugID) values ('Monolepis Schrad.', 7);
insert into ingredients_drugs (ingredient_name, drugID) values ('Adiantum trapeziforme L.', 19);
insert into ingredients_drugs (ingredient_name, drugID) values ('Acarospora smaragdula (Wahlenb.) A. Massal.', 6);
insert into ingredients_drugs (ingredient_name, drugID) values ('Argemone munita Durand & Hilg. ssp. rotundata (Rydb.) G.B. Ownbey', 5);
insert into ingredients_drugs (ingredient_name, drugID) values ('Chaptalia Vent.', 1);
insert into ingredients_drugs (ingredient_name, drugID) values ('Microsorum Link', 21);
insert into ingredients_drugs (ingredient_name, drugID) values ('Juglans neotropica Diels', 21);
insert into ingredients_drugs (ingredient_name, drugID) values ('Polystichum tsus-simense (Hook.) J. Sm.', 14);
insert into ingredients_drugs (ingredient_name, drugID) values ('Jamesia tetrapetala N.H. Holmgren & P.K. Holmgren', 26);
insert into ingredients_drugs (ingredient_name, drugID) values ('Rosa gymnocarpa Nutt.', 26);
insert into ingredients_drugs (ingredient_name, drugID) values ('Calycadenia micrantha R.L. Carr & G.D. Carr', 30);
insert into ingredients_drugs (ingredient_name, drugID) values ('Immersaria carbonoidea (J.W. Thomson) Esnault & Roux', 8);
insert into ingredients_drugs (ingredient_name, drugID) values ('Senna polyphylla (Jacq.) Irwin & Barneby', 7);
insert into ingredients_drugs (ingredient_name, drugID) values ('Sasa Makino & Shib.', 9);
insert into ingredients_drugs (ingredient_name, drugID) values ('Agrostis howellii Scribn.', 28);
insert into ingredients_drugs (ingredient_name, drugID) values ('Distichium capillaceum (Hedw.) Bruch & Schimp. var. capillaceum', 12);
insert into ingredients_drugs (ingredient_name, drugID) values ('Allium gooddingii Ownbey', 9);
insert into ingredients_drugs (ingredient_name, drugID) values ('Cordia laevigata Lam.', 18);
insert into ingredients_drugs (ingredient_name, drugID) values ('Evolvulus sericeus Sw.', 18);
insert into ingredients_drugs (ingredient_name, drugID) values ('Silene nutans L.', 29);
insert into ingredients_drugs (ingredient_name, drugID) values ('Senna pendula (Humb. & Bonpl. ex Willd.) Irwin & Barneby var. glabrata (Vogel) Irwin & Barneby', 27);
insert into ingredients_drugs (ingredient_name, drugID) values ('Mentzelia dispersa S. Watson var. latifolia (Rydb.) J.F. Macbr.', 10);
insert into ingredients_drugs (ingredient_name, drugID) values ('Ranunculus canus Benth.', 17);
insert into ingredients_drugs (ingredient_name, drugID) values ('Ranunculus canus Benth.', 2);
insert into ingredients_drugs (ingredient_name, drugID) values ('Chaptalia Vent.', 23);
insert into ingredients_drugs (ingredient_name, drugID) values ('Senna polyphylla (Jacq.) Irwin & Barneby', 18);
insert into ingredients_drugs (ingredient_name, drugID) values ('Sideroxylon cubense (Griseb.) T.D. Penn.', 11);
insert into ingredients_drugs (ingredient_name, drugID) values ('Evolvulus sericeus Sw.', 11);
insert into ingredients_drugs (ingredient_name, drugID) values ('Allium gooddingii Ownbey', 28);
insert into ingredients_drugs (ingredient_name, drugID) values ('Cordia laevigata Lam.', 30);
insert into ingredients_drugs (ingredient_name, drugID) values ('Microsorum Link', 30);
insert into ingredients_drugs (ingredient_name, drugID) values ('Acarospora smaragdula (Wahlenb.) A. Massal.', 13);
insert into ingredients_drugs (ingredient_name, drugID) values ('Navarretia leucocephala Benth. ssp. plieantha (H. Mason) Day', 21);
insert into ingredients_drugs (ingredient_name, drugID) values ('Jamesia tetrapetala N.H. Holmgren & P.K. Holmgren', 5);
insert into ingredients_drugs (ingredient_name, drugID) values ('Lysimachia quadrifolia L.', 27);
insert into ingredients_drugs (ingredient_name, drugID) values ('Calycadenia micrantha R.L. Carr & G.D. Carr', 6);
insert into ingredients_drugs (ingredient_name, drugID) values ('Immersaria carbonoidea (J.W. Thomson) Esnault & Roux', 13);
insert into ingredients_drugs (ingredient_name, drugID) values ('Polystichum tsus-simense (Hook.) J. Sm.', 16);
insert into ingredients_drugs (ingredient_name, drugID) values ('Agrostis howellii Scribn.', 5);
insert into ingredients_drugs (ingredient_name, drugID) values ('Argemone munita Durand & Hilg. ssp. rotundata (Rydb.) G.B. Ownbey', 28);
insert into ingredients_drugs (ingredient_name, drugID) values ('Valeriana edulis Nutt. ex Torr. & A. Gray', 17);
insert into ingredients_drugs (ingredient_name, drugID) values ('Monolepis Schrad.', 15);
insert into ingredients_drugs (ingredient_name, drugID) values ('Adiantum trapeziforme L.', 13);
insert into ingredients_drugs (ingredient_name, drugID) values ('Rosa gymnocarpa Nutt.', 13);
insert into ingredients_drugs (ingredient_name, drugID) values ('Juglans neotropica Diels', 8);
insert into ingredients_drugs (ingredient_name, drugID) values ('Distichium capillaceum (Hedw.) Bruch & Schimp. var. capillaceum', 26);
insert into ingredients_drugs (ingredient_name, drugID) values ('Senna pendula (Humb. & Bonpl. ex Willd.) Irwin & Barneby var. glabrata (Vogel) Irwin & Barneby', 1);
insert into ingredients_drugs (ingredient_name, drugID) values ('Mentzelia dispersa S. Watson var. latifolia (Rydb.) J.F. Macbr.', 2);
insert into ingredients_drugs (ingredient_name, drugID) values ('Sasa Makino & Shib.', 9);
insert into ingredients_drugs (ingredient_name, drugID) values ('Pedicularis parryi A. Gray ssp. mogollonica (Greene) G.D. Carr', 16);
insert into ingredients_drugs (ingredient_name, drugID) values ('Silene nutans L.', 10);
insert into ingredients_drugs (ingredient_name, drugID) values ('Astragalus iselyi S.L. Welsh', 26);
insert into ingredients_drugs (ingredient_name, drugID) values ('Helianthemum Mill.', 21);
insert into ingredients_drugs (ingredient_name, drugID) values ('Valeriana edulis Nutt. ex Torr. & A. Gray', 18);
insert into ingredients_drugs (ingredient_name, drugID) values ('Helianthemum Mill.', 25);
insert into ingredients_drugs (ingredient_name, drugID) values ('Lysimachia quadrifolia L.', 10);
insert into ingredients_drugs (ingredient_name, drugID) values ('Calycadenia micrantha R.L. Carr & G.D. Carr', 8);
insert into ingredients_drugs (ingredient_name, drugID) values ('Senna pendula (Humb. & Bonpl. ex Willd.) Irwin & Barneby var. glabrata (Vogel) Irwin & Barneby', 16);
insert into ingredients_drugs (ingredient_name, drugID) values ('Senna polyphylla (Jacq.) Irwin & Barneby', 2);
insert into ingredients_drugs (ingredient_name, drugID) values ('Agrostis howellii Scribn.', 11);
insert into ingredients_drugs (ingredient_name, drugID) values ('Ranunculus canus Benth.', 22);
insert into ingredients_drugs (ingredient_name, drugID) values ('Microsorum Link', 29);
insert into ingredients_drugs (ingredient_name, drugID) values ('Argemone munita Durand & Hilg. ssp. rotundata (Rydb.) G.B. Ownbey', 18);
insert into ingredients_drugs (ingredient_name, drugID) values ('Navarretia leucocephala Benth. ssp. plieantha (H. Mason) Day', 14);
insert into ingredients_drugs (ingredient_name, drugID) values ('Cordia laevigata Lam.', 10);
insert into ingredients_drugs (ingredient_name, drugID) values ('Mentzelia dispersa S. Watson var. latifolia (Rydb.) J.F. Macbr.', 16);
insert into ingredients_drugs (ingredient_name, drugID) values ('Allium gooddingii Ownbey', 6);
insert into ingredients_drugs (ingredient_name, drugID) values ('Sideroxylon cubense (Griseb.) T.D. Penn.', 24);
insert into ingredients_drugs (ingredient_name, drugID) values ('Sasa Makino & Shib.', 11);
insert into ingredients_drugs (ingredient_name, drugID) values ('Evolvulus sericeus Sw.', 2);
insert into ingredients_drugs (ingredient_name, drugID) values ('Immersaria carbonoidea (J.W. Thomson) Esnault & Roux', 15);
insert into ingredients_drugs (ingredient_name, drugID) values ('Silene nutans L.', 12);
insert into ingredients_drugs (ingredient_name, drugID) values ('Polystichum tsus-simense (Hook.) J. Sm.', 19);
insert into ingredients_drugs (ingredient_name, drugID) values ('Rosa gymnocarpa Nutt.', 24);
insert into ingredients_drugs (ingredient_name, drugID) values ('Acarospora smaragdula (Wahlenb.) A. Massal.', 7);
insert into ingredients_drugs (ingredient_name, drugID) values ('Adiantum trapeziforme L.', 12);
insert into ingredients_drugs (ingredient_name, drugID) values ('Pedicularis parryi A. Gray ssp. mogollonica (Greene) G.D. Carr', 24);
insert into ingredients_drugs (ingredient_name, drugID) values ('Juglans neotropica Diels', 15);
insert into ingredients_drugs (ingredient_name, drugID) values ('Astragalus iselyi S.L. Welsh', 2);
insert into ingredients_drugs (ingredient_name, drugID) values ('Monolepis Schrad.', 23);
insert into ingredients_drugs (ingredient_name, drugID) values ('Distichium capillaceum (Hedw.) Bruch & Schimp. var. capillaceum', 10);
insert into ingredients_drugs (ingredient_name, drugID) values ('Chaptalia Vent.', 4);
insert into ingredients_drugs (ingredient_name, drugID) values ('Jamesia tetrapetala N.H. Holmgren & P.K. Holmgren', 25);
insert into ingredients_drugs (ingredient_name, drugID) values ('Rosa gymnocarpa Nutt.', 19);
insert into ingredients_drugs (ingredient_name, drugID) values ('Immersaria carbonoidea (J.W. Thomson) Esnault & Roux', 15);
insert into ingredients_drugs (ingredient_name, drugID) values ('Navarretia leucocephala Benth. ssp. plieantha (H. Mason) Day', 28);
insert into ingredients_drugs (ingredient_name, drugID) values ('Jamesia tetrapetala N.H. Holmgren & P.K. Holmgren', 18);
insert into ingredients_drugs (ingredient_name, drugID) values ('Distichium capillaceum (Hedw.) Bruch & Schimp. var. capillaceum', 10);
insert into ingredients_drugs (ingredient_name, drugID) values ('Astragalus iselyi S.L. Welsh', 2);
insert into ingredients_drugs (ingredient_name, drugID) values ('Cordia laevigata Lam.', 25);
insert into ingredients_drugs (ingredient_name, drugID) values ('Senna polyphylla (Jacq.) Irwin & Barneby', 3);
insert into ingredients_drugs (ingredient_name, drugID) values ('Valeriana edulis Nutt. ex Torr. & A. Gray', 29);
insert into ingredients_drugs (ingredient_name, drugID) values ('Microsorum Link', 2);

CREATE TABLE `investor` (
    `investorID` int,
    `company_name` varchar(64),
    `balance` float NOT NULL,
    `interest` float NOT NULL CHECK (interest >= 0),
    PRIMARY KEY (`investorID`)
);

insert into investor (investorID, company_name, balance, interest) values (1, 'Target Corporation', 2820867.34, 0.24);
insert into investor (investorID, company_name, balance, interest) values (2, 'Physicians Total Care, Inc.', 2332803.24, 0.28);
insert into investor (investorID, company_name, balance, interest) values (3, 'Amneal Pharmaceuticals of New York, LLC', 560450.75, 0.29);
insert into investor (investorID, company_name, balance, interest) values (4, 'Target Corporation', 3712788.46, 0.05);
insert into investor (investorID, company_name, balance, interest) values (5, 'Space Brands Limited', 3375536.22, 0.16);
insert into investor (investorID, company_name, balance, interest) values (6, 'Mylan Pharmaceuticals Inc.', 2370759.68, 0.18);
insert into investor (investorID, company_name, balance, interest) values (7, 'FAZ Marketing', 495126.19, 0.05);
insert into investor (investorID, company_name, balance, interest) values (8, 'Hospira, Inc.', 641584.48, 0.14);
insert into investor (investorID, company_name, balance, interest) values (9, 'ARMY AND AIR FORCE EXCHANGE SERVICE', 3924302.20, 0.4);
insert into investor (investorID, company_name, balance, interest) values (10, 'Rebel Distributors Corp', 2254094.83, 0.45);
insert into investor (investorID, company_name, balance, interest) values (11, 'Jubilant HollisterStier LLC', 4418698.26, 0.35);
insert into investor (investorID, company_name, balance, interest) values (12, 'Island Supply Welding Co Inc', 806626.04, 0.49);
insert into investor (investorID, company_name, balance, interest) values (13, 'Allermed Laboratories, Inc.', 4243109.59, 0.11);
insert into investor (investorID, company_name, balance, interest) values (14, 'REMEDYREPACK INC.', 2795467.59, 0.46);
insert into investor (investorID, company_name, balance, interest) values (15, 'New Horizon Rx Group, LLC', 1194024.99, 0.1);
insert into investor (investorID, company_name, balance, interest) values (16, 'Ventura Corporation LTD', 1961455.41, 0.34);
insert into investor (investorID, company_name, balance, interest) values (17, 'Abbott Products, Inc.', 4210208.04, 0.45);
insert into investor (investorID, company_name, balance, interest) values (18, 'Similasan Corporation', 4786910.47, 0.22);
insert into investor (investorID, company_name, balance, interest) values (19, 'Laboratoire Dr. Renaud', 3717308.04, 0.03);
insert into investor (investorID, company_name, balance, interest) values (20, 'Ventura International LTD', 123163.61, 0.4);
insert into investor (investorID, company_name, balance, interest) values (21, 'Western Family', 306741.36, 0.23);
insert into investor (investorID, company_name, balance, interest) values (22, 'Alembic Pharmaceuticals Limited', 685707.70, 0.49);
insert into investor (investorID, company_name, balance, interest) values (23, 'Hi-Tech Pharmacal Co., Inc.', 1868540.69, 0.3);
insert into investor (investorID, company_name, balance, interest) values (24, 'Church & Dwight Co., Inc.', 2317316.34, 0.14);
insert into investor (investorID, company_name, balance, interest) values (25, 'Rebel Distributors Corp.', 2525095.43, 0.41);
insert into investor (investorID, company_name, balance, interest) values (26, 'Family Dollar', 4784783.41, 0.49);
insert into investor (investorID, company_name, balance, interest) values (27, 'WOCKHARDT USA LLC', 3524492.42, 0.22);
insert into investor (investorID, company_name, balance, interest) values (28, 'Upsher-Smith Laboratories, Inc.', 290033.34, 0.38);
insert into investor (investorID, company_name, balance, interest) values (29, 'Eagle Distributors,Inc.', 4851542.61, 0.08);
insert into investor (investorID, company_name, balance, interest) values (30, 'Physicians Total Care, Inc.', 1558546.66, 0.2);


CREATE TABLE `pharma_field` (
    `name` varchar(64),
    `description` varchar(64),
    `medicine_type` varchar(64),
    PRIMARY KEY (`name`)
);

INSERT INTO pharma_field (name, description, medicine_type) VALUES ('Trnsapcl repl pulm valve', 'Excessive interocclusal distance of fully erupted teeth', 'DentiCare Pro-Gel');
INSERT INTO pharma_field (name, description, medicine_type) VALUES ('Interphalangeal fusion', 'Encounter for prophylactic removal of ovary', 'Equaline nighttime');
INSERT INTO pharma_field (name, description, medicine_type) VALUES ('Bilat endosc divis tube', '"Strain of other muscles, fascia and tendons at forearm level"', 'Midazolam Hydrochloride');
INSERT INTO pharma_field (name, description, medicine_type) VALUES ('Endosc dilation ampulla', '"Displaced subtrochanteric fracture of unsp femur, init"', 'Dandruff');
INSERT INTO pharma_field (name, description, medicine_type) VALUES ('Percutaneous chordotomy', 'Other manifestations of thiamine deficiency', 'STAVZOR');
INSERT INTO pharma_field (name, description, medicine_type) VALUES ('Dye hysterosalpingogram', '"Poisn by centr-acting/adren-neurn-block agnt, asslt, sequela"', 'HYDROCODONE BITARTRATE AND ACETAMINOPHEN');
INSERT INTO pharma_field (name, description, medicine_type) VALUES ('Aortocor bypas-2 cor art', 'Conviction in civil & criminal proceedings w/o imprisonment', 'Triamterene and Hydrochlorothiazide');
INSERT INTO pharma_field (name, description, medicine_type) VALUES ('Vag repair invers uterus', '"Twin preg, unsp num plcnta & amnio sacs, second trimester"', 'PLANTSCRIPTION ANTI AGING OIL FREE BROAD SPECTRUM SPF 25');
INSERT INTO pharma_field (name, description, medicine_type) VALUES ('Bladder neck dilation', '"Fall in (into) bucket of water causing oth injury, subs"', 'Ultra-TechneKow');
INSERT INTO pharma_field (name, description, medicine_type) VALUES ('Bone graft to face bone', 'Milt op involving dest arcrft due to acc deton onboard munit', 'Marqibo');
INSERT INTO pharma_field (name, description, medicine_type) VALUES ('Cell blk/pap-lower GI', '"Nondisp subtrochnt fx r femr, 7thR"', 'Metformin Hydrochloride');
INSERT INTO pharma_field (name, description, medicine_type) VALUES ('Inj therap subst periton', '"Bucket-handle tear of medial meniscus, current injury"', 'Naproxen Sodium');
INSERT INTO pharma_field (name, description, medicine_type) VALUES ('Cyclodialysis', '"Labor and delivery complicated by prolapse of cord, fetus 4"', 'Prednisolone');
INSERT INTO pharma_field (name, description, medicine_type) VALUES ('Toxicology-blood', '"Oth fx low end r ulna, subs for opn fx type I/2 w routn heal"', 'Isuprel');
INSERT INTO pharma_field (name, description, medicine_type) VALUES ('Close appendiceal fistul', 'Personal history of retained foreign body fully removed', 'Health Smart Lavender Baby Petroleum');
INSERT INTO pharma_field (name, description, medicine_type) VALUES ('Gb-to-hepat duct anast', 'Smiths fx r radius, subs for opn fx type I/2 w delay heal', 'cold relief');
INSERT INTO pharma_field (name, description, medicine_type) VALUES ('Local destr ova les NEC', '"Mtrcy driver injured in nonclsn trnsp accident nontraf, subs"', 'ESIKA HD COLOR HIGH DEFINITION COLOR SPF 20');
INSERT INTO pharma_field (name, description, medicine_type) VALUES ('Endo pulm arwy flow msmt', '"Milt op involving oth dest arcrft, civilian, init"', 'Simvastatin');
INSERT INTO pharma_field (name, description, medicine_type) VALUES ('Impl fallop tube prosth', '"Path fx in oth disease, l femur, subs for fx w delay heal"', 'Paprika');
INSERT INTO pharma_field (name, description, medicine_type) VALUES ('Coag factor transfusion', '"Nondisp spiral fx shaft of l femur, init for opn fx type I/2"', 'Doxycycline');
INSERT INTO pharma_field (name, description, medicine_type) VALUES ('Insert spinal canal cath', 'Malignant neoplasm of unspecified epididymis', 'Degree');
INSERT INTO pharma_field (name, description, medicine_type) VALUES ('Close diaphragm fistula', '"Physeal arrest, other site"', 'Indomethacin');
INSERT INTO pharma_field (name, description, medicine_type) VALUES ('Remove head/neck sutures', '"Assault by steam or hot vapors, initial encounter"', 'Levothyroxine Sodium');
INSERT INTO pharma_field (name, description, medicine_type) VALUES ('Clos transureth bladd bx', '"Corrosion of first degree of back of left hand, sequela"', 'Prochlorperazine Maleate');
INSERT INTO pharma_field (name, description, medicine_type) VALUES ('Tendon graft', '"Unsp injury of muscles and tendons at ank/ft level, r foot"', 'California Mugwort');
INSERT INTO pharma_field (name, description, medicine_type) VALUES ('Radius & ulna sequestrec', '"Nontraumatic ischemic infarction of muscle, other site"', 'Losartan Potassium and Hydrochlorothiazide');
INSERT INTO pharma_field (name, description, medicine_type) VALUES ('Other repair of ankle', '"Oth fracture of right great toe, init for clos fx"', 'Focalgin B');
INSERT INTO pharma_field (name, description, medicine_type) VALUES ('Multisource radiosurgery', '"Crush betw inflatbl crft and oth wtrcrft/obj d/t clsn, subs"', 'Metoprolol Tartrate and Hydrochlorothiazide');
INSERT INTO pharma_field (name, description, medicine_type) VALUES ('Insert othr spin device', 'Deformity of orbit due to trauma or surgery', 'Promethazine Hydrochloride');
INSERT INTO pharma_field (name, description, medicine_type) VALUES ('Vaginal mold insertion', 'NIHSS score 14', 'Mattifying Broad Spectrum SPF 15');




CREATE TABLE `pharma_engineer` (
    `employeeID` int(64),
    `first_name` varchar(64) NOT NULL,
    `last_name` varchar(64) NOT NULL,
    `title` varchar(64),
    `location` varchar(64) NOT NULL,
    `pharma_name` varchar(64) NOT NULL,
    `investorID` int(64),
    PRIMARY KEY (`employeeID`),
    FOREIGN KEY (`pharma_name`) REFERENCES `pharma_field` (`name`),
    FOREIGN KEY (`investorID`) REFERENCES `investor` (`investorID`)
);

insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (1, 'Yorgos', 'Aubin', 'Community Outreach Specialist', 'Sakai', 'Remove head/neck sutures', 19);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (2, 'Yorgos', 'Rosebotham', 'Pharmacist', 'Gumaus', 'Local destr ova les NEC', 2);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (3, 'Pren', 'Howsam', 'Developer III', 'Eirunepé', 'Toxicology-blood', 21);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (4, 'Harlene', 'Mansel', 'Web Developer II', 'Bongandanga', 'Tendon graft', 29);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (5, 'Esma', 'Peyro', 'Assistant Professor', 'Imām Şāḩib', 'Bone graft to face bone', 9);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (6, 'Feliks', 'Guare', 'Help Desk Technician', 'Guyancourt', 'Close diaphragm fistula', 28);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (7, 'Burg', 'Averall', 'Staff Accountant II', 'Jieshi', 'Radius & ulna sequestrec', 17);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (8, 'Mikel', 'Briscoe', 'Dental Hygienist', 'Bauan', 'Aortocor bypas-2 cor art', 8);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (9, 'Phil', 'Ierland', 'Developer II', 'Takikawa', 'Multisource radiosurgery', 7);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (10, 'Kathye', 'Hailston', 'Assistant Professor', 'Sayansk', 'Trnsapcl repl pulm valve', 29);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (11, 'Jacinta', 'Schroder', 'Software Consultant', 'Mat-i', 'Clos transureth bladd bx', 19);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (12, 'Parry', 'Francillo', 'Design Engineer', 'Guozhuang', 'Vag repair invers uterus', 29);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (13, 'Kristal', 'Szymaniak', 'Project Manager', 'Longwei', 'Cell blk/pap-lower GI', 20);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (14, 'Niles', 'Emanuelli', 'Budget/Accounting Analyst IV', 'San Francisco de Yare', 'Vaginal mold insertion', 12);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (15, 'Willyt', 'Goldthorpe', 'Developer II', 'Bukedea', 'Other repair of ankle', 12);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (16, 'Terri', 'Zorzenoni', 'Structural Engineer', 'Pushkino', 'Endosc dilation ampulla', 18);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (17, 'Zorana', 'Witcherley', 'Cost Accountant', 'Artsvaberd', 'Endo pulm arwy flow msmt', 24);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (18, 'Drusi', 'Girone', 'Physical Therapy Assistant', 'Carreira', 'Coag factor transfusion', 30);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (19, 'Joshia', 'Helliwell', 'Account Coordinator', 'Núi Sập', 'Interphalangeal fusion', 7);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (20, 'Homerus', 'Varnam', 'Media Manager I', 'Eydhafushi', 'Insert spinal canal cath', 17);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (21, 'Juliane', 'McPeice', 'Accounting Assistant I', 'Ivoti', 'Cyclodialysis', 16);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (22, 'Roberto', 'Fritzer', 'Budget/Accounting Analyst II', 'Cergy-Pontoise', 'Bladder neck dilation', 15);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (23, 'Ailbert', 'Harden', 'Financial Advisor', 'Kojagete', 'Dye hysterosalpingogram', 10);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (24, 'Quintus', 'Ruoff', 'Chief Design Engineer', 'Kasungu', 'Percutaneous chordotomy', 17);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (25, 'Jeralee', 'Guerrazzi', 'Systems Administrator IV', 'Fier', 'Insert othr spin device', 5);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (26, 'Herminia', 'Dionisetto', 'Software Consultant', 'Yashan', 'Close appendiceal fistul', 26);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (27, 'Finley', 'Raatz', 'VP Marketing', 'Damu', 'Gb-to-hepat duct anast', 16);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (28, 'Raquel', 'Bapty', 'Automation Specialist I', 'Konibodom', 'Inj therap subst periton', 25);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (29, 'Ivor', 'Dene', 'Software Consultant', 'Pamoyanan', 'Bilat endosc divis tube', 25);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (30, 'Jocelin', 'Cristofori', 'Structural Analysis Engineer', 'Ðà Lạt', 'Impl fallop tube prosth', 24);

CREATE TABLE `pharma_sells_to_factory` (
    `factoryID` int(64),
    `pharmaID` int(64),
    `price_of_sold_goods` float,
    FOREIGN KEY (`factoryID`) REFERENCES `factory` (`factoryID`),
    FOREIGN KEY (`pharmaID`) REFERENCES `pharma_engineer` (`employeeID`)
);

insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (10, 22, 89.76);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (22, 3, 84.97);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (12, 29, 89.07);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (21, 24, 21.97);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (13, 21, 58.55);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (18, 5, 70.81);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (26, 12, 10.81);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (1, 14, 69.53);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (13, 2, 80.6);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (20, 25, 86.3);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (1, 27, 52.19);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (9, 4, 23.79);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (2, 7, 39.01);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (22, 29, 54.74);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (27, 21, 85.31);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (25, 24, 91.63);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (25, 29, 34.65);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (5, 15, 9.42);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (25, 26, 41.4);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (7, 6, 70.77);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (6, 2, 79.25);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (27, 2, 10.51);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (2, 23, 74.84);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (24, 14, 94.05);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (3, 2, 38.45);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (3, 3, 28.97);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (28, 8, 53.57);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (24, 6, 88.1);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (8, 1, 68.84);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (12, 7, 17.58);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (24, 20, 51.01);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (9, 30, 98.78);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (2, 8, 57.0);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (21, 25, 97.57);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (21, 14, 44.55);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (14, 21, 50.11);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (23, 8, 59.0);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (16, 8, 31.83);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (12, 15, 38.61);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (5, 23, 49.03);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (2, 12, 59.96);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (5, 1, 18.95);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (25, 23, 68.94);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (13, 10, 81.19);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (20, 24, 50.49);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (24, 17, 84.45);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (23, 28, 73.63);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (8, 14, 37.28);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (17, 14, 31.2);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (13, 15, 94.08);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (30, 17, 35.59);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (22, 6, 96.94);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (23, 27, 3.79);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (9, 10, 90.47);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (3, 7, 93.1);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (22, 14, 53.94);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (20, 3, 2.92);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (4, 6, 93.93);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (16, 25, 80.04);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (7, 18, 3.83);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (10, 11, 4.86);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (30, 25, 42.14);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (2, 7, 93.47);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (1, 24, 85.74);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (27, 20, 80.12);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (16, 14, 20.48);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (18, 30, 62.11);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (20, 14, 55.65);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (12, 11, 69.39);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (18, 3, 88.5);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (25, 1, 82.66);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (29, 20, 46.0);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (29, 22, 80.85);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (4, 9, 68.15);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (15, 12, 7.69);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (18, 25, 77.74);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (7, 17, 36.94);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (18, 16, 21.88);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (23, 10, 18.65);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (16, 11, 81.0);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (22, 15, 47.03);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (17, 24, 61.68);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (5, 9, 58.25);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (29, 12, 15.44);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (29, 28, 46.48);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (15, 14, 10.33);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (30, 26, 27.51);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (16, 3, 56.29);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (23, 4, 46.33);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (9, 17, 91.51);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (24, 24, 7.68);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (13, 3, 50.22);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (26, 3, 36.94);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (10, 19, 78.09);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (17, 15, 41.64);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (6, 12, 49.09);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (25, 28, 83.47);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (15, 13, 40.31);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (19, 24, 12.87);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (18, 19, 59.83);