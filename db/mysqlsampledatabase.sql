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


CREATE TABLE `patients` (
    `firstName` varchar(50),
    `lastName` varchar(50),
    `patientID` int(11),
    `doctorID` int(11),
    PRIMARY KEY (`patientID`),
    FOREIGN KEY (`doctorID`) REFERENCES `doctor` (`doctorID`)

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- CREATE TABLE `payments` (
--   `customerNumber` int(11) NOT NULL,
--   `checkNumber` varchar(50) NOT NULL,
--   `paymentDate` date NOT NULL,
--   `amount` decimal(10,2) NOT NULL,
--   PRIMARY KEY (`customerNumber`,`checkNumber`),
--   CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `doctors_in_fields` (
    `doctorID` int(64),
    `fieldID` int(64),
    FOREIGN KEY (`fieldID`) REFERENCES `field` (`fieldID`),
    FOREIGN KEY (`doctorID`) REFERENCES `doctor` (`doctorID`)
);

insert into doctors_in_fields (doctorID, fieldID) values (1, 1);
insert into doctors_in_fields (doctorID, fieldID) values (2, 2);
insert into doctors_in_fields (doctorID, fieldID) values (3, 3);
insert into doctors_in_fields (doctorID, fieldID) values (4, 4);
insert into doctors_in_fields (doctorID, fieldID) values (5, 5);
insert into doctors_in_fields (doctorID, fieldID) values (6, 6);
insert into doctors_in_fields (doctorID, fieldID) values (7, 7);
insert into doctors_in_fields (doctorID, fieldID) values (8, 8);
insert into doctors_in_fields (doctorID, fieldID) values (9, 9);
insert into doctors_in_fields (doctorID, fieldID) values (10, 10);

CREATE TABLE `disease` (
    `diseaseID` int(64),
    `name` varchar(64) NOT NULL,
    `description` varchar(64) DEFAULT 'more research required',
    `precaution` varchar(64) DEFAULT 'more research required',
    PRIMARY KEY (`diseaseID`)
);

insert into disease (diseaseID, name, description, precaution) values (1, 'Fungal infection', 'An infectious disease caused by protozoan parasites from the Plasmodium family that can be transmitt', 'Removal of Autol Sub from Vas Deferens, Open Approach');
insert into disease (diseaseID, name, description, precaution) values (2, 'Chronic cholestasis', 'An allergy is an immune system response to a foreign substance thats not typically harmful to your', 'Bypass L Atrium to L Pulm Art with Zooplastic, Open Approach');
insert into disease (diseaseID, name, description, precaution) values (3, 'Drug Reaction', 'Hypothyroidism, also called underactive thyroid or low thyroid, is a disorder of the endocrine syste', 'Plain Radiography of Thor-abd Aorta using H Osm Contrast');
insert into disease (diseaseID, name, description, precaution) values (4, 'Peptic ulcer diseae', 'Psoriasis is a common skin disorder that forms thick, red, bumpy patches covered with silvery scales', 'MRI of R Ankle using Oth Contrast');
insert into disease (diseaseID, name, description, precaution) values (5, 'AIDS', 'Gastroesophageal reflux disease, or GERD, is a digestive disorder that affects the lower esophageal', 'Fluoroscopy of Cervico-Cerebral Arch using H Osm Contrast');
insert into disease (diseaseID, name, description, precaution) values (6, 'Diabetes', 'Chronic cholestatic diseases, whether occurring in infancy, childhood or adulthood, are characterize', 'Drainage of Lum Jt with Drain Dev, Perc Endo Approach');
insert into disease (diseaseID, name, description, precaution) values (7, 'Gastroenteritis', 'Hepatitis A is a highly contagious liver infection caused by the hepatitis A virus. The virus is one', 'Measure of Arterial Pressure, Peripheral, Extern Approach');
insert into disease (diseaseID, name, description, precaution) values (8, 'Bronchial Asthma', 'Osteoarthritis is the most common form of arthritis, affecting millions of people worldwide. It occu', 'Reposition Upper Tooth with Ext Fix, All, Open Approach');
insert into disease (diseaseID, name, description, precaution) values (9, 'Hypertension', 'Benign paroxysmal positional vertigo (BPPV) is one of the most common causes of vertigo — the sudden', 'Drainage of Right Vocal Cord with Drainage Device, Endo');
insert into disease (diseaseID, name, description, precaution) values (10, 'Migraine', 'Hypoglycemia is a condition in which your blood sugar (glucose) level is lower than normal.', 'Revision of Other Device in Periton Cav, Extern Approach');


CREATE TABLE `patient_disease_history` (
    `patientID` int(64),
    `diseaseID` int(64),
    `is_still_afflicted` boolean NOT NULL,
    FOREIGN KEY (`patientID`) REFERENCES `patients` (`patientID`),
    FOREIGN KEY (`diseaseID`) REFERENCES `disease` (`diseaseID`)
);

insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (1, 1, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (2, 2, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (3, 3, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (4, 4, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (5, 5, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (6, 6, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (7, 7, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (8, 8, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (9, 9, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (10, 10, true);

CREATE TABLE `symptoms` (
    `symptomID` int(64),
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

CREATE TABLE `disease_symptoms` (
    `diseaseID` int(64),
    `symptomID` int(64),
    FOREIGN KEY (`symptomID`) REFERENCES `symptoms` (`symptomID`),
    FOREIGN KEY (`diseaseID`) REFERENCES `disease` (`diseaseID`)
);

insert into disease_symptoms (diseaseID, symptomID) values (1, 1);
insert into disease_symptoms (diseaseID, symptomID) values (2, 2);
insert into disease_symptoms (diseaseID, symptomID) values (3, 3);
insert into disease_symptoms (diseaseID, symptomID) values (4, 4);
insert into disease_symptoms (diseaseID, symptomID) values (5, 5);
insert into disease_symptoms (diseaseID, symptomID) values (6, 6);
insert into disease_symptoms (diseaseID, symptomID) values (7, 7);
insert into disease_symptoms (diseaseID, symptomID) values (8, 8);
insert into disease_symptoms (diseaseID, symptomID) values (9, 9);
insert into disease_symptoms (diseaseID, symptomID) values (10, 10);

CREATE TABLE `drug` (
    `drugID` int(64),
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

CREATE TABLE `disease_drugs` (
    `drugID` int(64),
    `diseaseID` int(64),
    FOREIGN KEY (`drugID`) REFERENCES `drug` (`drugID`),
    FOREIGN KEY (`diseaseID`) REFERENCES `disease` (`diseaseID`)
);

insert into disease_drugs (diseaseID, drugID) values (1, 1);
insert into disease_drugs (diseaseID, drugID) values (2, 2);
insert into disease_drugs (diseaseID, drugID) values (3, 3);
insert into disease_drugs (diseaseID, drugID) values (4, 4);
insert into disease_drugs (diseaseID, drugID) values (5, 5);
insert into disease_drugs (diseaseID, drugID) values (6, 6);
insert into disease_drugs (diseaseID, drugID) values (7, 7);
insert into disease_drugs (diseaseID, drugID) values (8, 8);
insert into disease_drugs (diseaseID, drugID) values (9, 9);
insert into disease_drugs (diseaseID, drugID) values (10, 10);

CREATE TABLE `side_effects` (
    `effectsID` int(64),
    `name` varchar(64) NOT NULL,
    `description` varchar(64) DEFAULT 'more research required',
    PRIMARY KEY (`effectsID`)
);

insert into side_effects (effectsID, name, description) values (1, 'Felderm', 'Atyp squam cell not excl hi grd intrepith lesn cyto smr anus');
insert into side_effects (effectsID, name, description) values (2, 'Alemturanon', 'Abscess of bursa, elbow');
insert into side_effects (effectsID, name, description) values (3, 'Ganimycin', 'Unspecified fracture of unspecified metacarpal bone, sequela');
insert into side_effects (effectsID, name, description) values (4, 'Unirone', 'Sltr-haris Type III physl fx upr end r tibia, 7thP');
insert into side_effects (effectsID, name, description) values (5, 'Tamoban', 'Oth disrd of amniotic fluid and membrns, second tri, oth');
insert into side_effects (effectsID, name, description) values (6, 'Abiposide', 'Sprain of other part of right wrist and hand, subs encntr');
insert into side_effects (effectsID, name, description) values (7, 'Theraprex Adderudin', 'Fall (on)(from) incline, sequela');
insert into side_effects (effectsID, name, description) values (8, 'Palostadil Amphetamethate', 'Poisoning by unsp antipsychot/neurolept, assault, init');
insert into side_effects (effectsID, name, description) values (9, 'Afatiderm Choriotrol', 'Fx unsp phalanx of r rng fngr, subs for fx w malunion');
insert into side_effects (effectsID, name, description) values (10, 'Dactinesin Amciran', 'Pressure ulcer of head, unstageable');

CREATE TABLE `drug_side_effects` (
    `drugID` int(64),
    `effectsID` int(64),
    FOREIGN KEY (`drugID`) REFERENCES `drug` (`drugID`),
    FOREIGN KEY (`effectsID`) REFERENCES `side_effects` (`effectsID`)
);

insert into drug_side_effects (drugID, effectsID) values (1, 1);
insert into drug_side_effects (drugID, effectsID) values (2, 2);
insert into drug_side_effects (drugID, effectsID) values (3, 3);
insert into drug_side_effects (drugID, effectsID) values (4, 4);
insert into drug_side_effects (drugID, effectsID) values (5, 5);
insert into drug_side_effects (drugID, effectsID) values (6, 6);
insert into drug_side_effects (drugID, effectsID) values (7, 7);
insert into drug_side_effects (drugID, effectsID) values (8, 8);
insert into drug_side_effects (drugID, effectsID) values (9, 9);
insert into drug_side_effects (drugID, effectsID) values (10, 10);

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

insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (1, 1, 1, 77.6, 998, 165.01, 1);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (2, 2, 2, 942.43, 1000, 991.33, 2);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (3, 3, 3, 238.5, 978, 776.63, 3);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (4, 4, 4, 94.16, 419, 585.19, 4);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (5, 5, 5, 191.27, 267, 209.43, 5);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (6, 6, 6, 78.13, 866, 854.35, 6);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (7, 7, 7, 840.1, 356, 915.15, 7);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (8, 8, 8, 22.88, 950, 843.24, 8);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (9, 9, 9, 990.13, 572, 622.62, 9);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (10, 10, 10, 514.94, 32, 41.35, 10);

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

CREATE TABLE `factory_drug` (
    `factoryID` int(64),
    `drugID` int(64),
    `quantity_produced` int NOT NULL,
    FOREIGN KEY (`factoryID`) REFERENCES `factory` (`factoryID`),
    FOREIGN KEY (`drugID`) REFERENCES `drug` (`drugID`)
);

insert into factory_drug (factoryID, drugID, quantity_produced) values (1, 1, 479);
insert into factory_drug (factoryID, drugID, quantity_produced) values (2, 2, 779);
insert into factory_drug (factoryID, drugID, quantity_produced) values (3, 3, 318);
insert into factory_drug (factoryID, drugID, quantity_produced) values (4, 4, 768);
insert into factory_drug (factoryID, drugID, quantity_produced) values (5, 5, 975);
insert into factory_drug (factoryID, drugID, quantity_produced) values (6, 6, 880);
insert into factory_drug (factoryID, drugID, quantity_produced) values (7, 7, 925);
insert into factory_drug (factoryID, drugID, quantity_produced) values (8, 8, 448);
insert into factory_drug (factoryID, drugID, quantity_produced) values (9, 9, 994);
insert into factory_drug (factoryID, drugID, quantity_produced) values (10, 10, 780);

CREATE TABLE `medicine_hub` (
    `employeeID` int(64),
    `first_name` varchar(64) NOT NULL,
    `last_name` varchar(64) NOT NULL,
    `title` varchar(64),
    `location` varchar(64) NOT NULL,
    PRIMARY KEY (`employeeID`)
);

insert into medicine_hub (employeeID, first_name, last_name, title, location) values (1, 'Marion', 'Goodwins', 'CVS', '8126 Vahlen Point');
insert into medicine_hub (employeeID, first_name, last_name, title, location) values (2, 'Effie', 'Laurens', 'Walgreens', '20 Longview Point');
insert into medicine_hub (employeeID, first_name, last_name, title, location) values (3, 'Callida', 'Phoenix', 'The Modern Chemist', '76 Laurel Center');
insert into medicine_hub (employeeID, first_name, last_name, title, location) values (4, 'Bryana', 'Pedrol', 'Duane Reade', '57401 Namekagon Park');
insert into medicine_hub (employeeID, first_name, last_name, title, location) values (5, 'Barbara-anne', 'Allchin', 'Costco', '066 Kinsman Trail');
insert into medicine_hub (employeeID, first_name, last_name, title, location) values (6, 'Amery', 'Hallwell', 'Rexall', '22 Rutledge Crossing');
insert into medicine_hub (employeeID, first_name, last_name, title, location) values (7, 'Bryna', 'Rosa', 'Walmart', '8 Grayhawk Point');
insert into medicine_hub (employeeID, first_name, last_name, title, location) values (8, 'Etta', 'Ciotto', 'Brunet', '357 Vidon Parkway');
insert into medicine_hub (employeeID, first_name, last_name, title, location) values (9, 'Barnie', 'Maypowder', 'Proxim', '7541 Boyd Avenue');
insert into medicine_hub (employeeID, first_name, last_name, title, location) values (10, 'Carter', 'McAuliffe', 'Uniprix', '6 Springs Place');

CREATE TABLE `places_to_buy_drugs` (
    `drugID` int,
    `employeeID` int,
    FOREIGN KEY (`drugID`) REFERENCES `drug` (`drugID`),
    FOREIGN KEY (`employeeID`) REFERENCES `medicine_hub` (`employeeID`)
);

insert into places_to_buy_drugs (drugID, employeeID) values (1, 1);
insert into places_to_buy_drugs (drugID, employeeID) values (2, 2);
insert into places_to_buy_drugs (drugID, employeeID) values (3, 3);
insert into places_to_buy_drugs (drugID, employeeID) values (4, 4);
insert into places_to_buy_drugs (drugID, employeeID) values (5, 5);
insert into places_to_buy_drugs (drugID, employeeID) values (6, 6);
insert into places_to_buy_drugs (drugID, employeeID) values (7, 7);
insert into places_to_buy_drugs (drugID, employeeID) values (8, 8);
insert into places_to_buy_drugs (drugID, employeeID) values (9, 9);
insert into places_to_buy_drugs (drugID, employeeID) values (10, 10);

CREATE TABLE `ingredients` (
    `ingredient_name` varchar(64) NOT NULL,
    PRIMARY KEY (`ingredient_name`)
);

insert into ingredients (ingredient_name) values ('Abacavir');
insert into ingredients (ingredient_name) values ('Nabilone');
insert into ingredients (ingredient_name) values ('Ozenoxacin');
insert into ingredients (ingredient_name) values ('Cephradine');
insert into ingredients (ingredient_name) values ('Diflunisal');
insert into ingredients (ingredient_name) values ('Quazepam');
insert into ingredients (ingredient_name) values ('Ruxolitinib');
insert into ingredients (ingredient_name) values ('Nystatin');
insert into ingredients (ingredient_name) values ('Aztreonam');
insert into ingredients (ingredient_name) values ('Codeine');

CREATE TABLE `ingredients_drugs` (
    `ingredient_name` varchar(64),
    `drugID` int,
    FOREIGN KEY (`ingredient_name`) REFERENCES `ingredients` (`ingredient_name`),
    FOREIGN KEY (`drugID`) REFERENCES `drug` (`drugID`)
);

insert into ingredients_drugs (ingredient_name, drugID) values ('Abacavir', 1);
insert into ingredients_drugs (ingredient_name, drugID) values ('Nabilone', 2);
insert into ingredients_drugs (ingredient_name, drugID) values ('Ozenoxacin', 3);
insert into ingredients_drugs (ingredient_name, drugID) values ('Cephradine', 4);
insert into ingredients_drugs (ingredient_name, drugID) values ('Diflunisal', 5);
insert into ingredients_drugs (ingredient_name, drugID) values ('Quazepam', 6);
insert into ingredients_drugs (ingredient_name, drugID) values ('Ruxolitinib', 7);
insert into ingredients_drugs (ingredient_name, drugID) values ('Nystatin', 8);
insert into ingredients_drugs (ingredient_name, drugID) values ('Aztreonam', 9);
insert into ingredients_drugs (ingredient_name, drugID) values ('Codeine', 10);

CREATE TABLE `investor` (
    `investorID` int,
    `company_name` varchar(64),
    `balance` float NOT NULL,
    `interest` float NOT NULL CHECK (interest >= 0),
    PRIMARY KEY (`investorID`)
);

insert into investor (investorID, company_name, balance, interest) values (1, 'Jantoven', '$7630.89', 1.475);
insert into investor (investorID, company_name, balance, interest) values (2, 'Complete Allergy Relief', '$9788.95', 1.884);
insert into investor (investorID, company_name, balance, interest) values (3, 'Ammonia Inhalants', '$7557.20', 3.614);
insert into investor (investorID, company_name, balance, interest) values (4, 'Nitroglycerin', '$9799.81', 1.269);
insert into investor (investorID, company_name, balance, interest) values (5, 'Ramipril', '$4720.60', 2.982);
insert into investor (investorID, company_name, balance, interest) values (6, 'Clonidine Hydrochloride', '$5838.01', 2.741);
insert into investor (investorID, company_name, balance, interest) values (7, 'LE TECHNIQ', '$5034.70', 0.286);
insert into investor (investorID, company_name, balance, interest) values (8, 'Hesol Rim Jean-Aeck', '$4190.39', 0.562);
insert into investor (investorID, company_name, balance, interest) values (9, 'Castellani Paint', '$9223.13', 1.692);
insert into investor (investorID, company_name, balance, interest) values (10, 'Desitin Multi-Purpose', '$5084.24', 1.474);

CREATE TABLE `pharma_field` (
    `name` varchar(64),
    `description` varchar(64),
    `medicine_type` varchar(64),
    PRIMARY KEY (`name`)
);

insert into pharma_field (name, description, medicine_type) values ('SOLU-MEDROL', 'Drainage of Left Pleural Cavity, Percutaneous Approach', 'Liquid');
insert into pharma_field (name, description, medicine_type) values ('Relpax', 'Articulation/Phonology Treatment using Computer', 'Tablet');
insert into pharma_field (name, description, medicine_type) values ('Stahist AD', 'Removal of Drainage Device from Cranial Nerve, Open Approach', 'Capsules');
insert into pharma_field (name, description, medicine_type) values ('Hydralazine Hydrochloride', 'Repair Right Femoral Vein, Percutaneous Endoscopic Approach', 'Drops');
insert into pharma_field (name, description, medicine_type) values ('Forteo', 'Excision of L Thorax Bursa/Lig, Open Approach, Diagn', 'Topical medicines');
insert into pharma_field (name, description, medicine_type) values ('DROSERA ROTUNDIFOLIA', 'Beam Radiation of Inguinal Lymphatics using Heavy Particles', 'Inhalers');
insert into pharma_field (name, description, medicine_type) values ('HYDROCODONE BITARTRATE AND ACETAMINOPHEN', 'Occlusion of Left Parotid Duct, Perc Endo Approach', 'Injections');
insert into pharma_field (name, description, medicine_type) values ('Triton AB-741', 'MRI of R Elbow using Oth Contrast, Unenh, Enhance', 'Capsules');
insert into pharma_field (name, description, medicine_type) values ('Homeopathic Weight Loss Formula', 'Planar Nucl Med Imag of Bi Testicle using Technetium 99m', 'Drops');
insert into pharma_field (name, description, medicine_type) values ('COREG', 'Extirpation of Matter from L Radial Art, Perc Endo Approach', 'Capsules');

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

insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (1, 'Franklyn', 'Thebeaud', null, '3 Brown Drive', 'SOLU-MEDROL', 1);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (2, 'Nert', 'Dake', null, '154 Maywood Hill', 'Relpax', 2);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (3, 'Stanwood', 'Achromov', null, '04923 Elmside Alley', 'Stahist AD', 3);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (4, 'Kara', 'Pedro', null, '6 Messerschmidt Park', 'Hydralazine Hydrochloride', 4);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (5, 'Nerissa', 'Boyland', null, '36 Eagan Park', 'Forteo', 5);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (6, 'Elisabet', 'Greenwood', null, '538 Golf Course Avenue', 'DROSERA ROTUNDIFOLIA', 6);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (7, 'Adair', 'Keepe', null, '7 Rockefeller Parkway', 'HYDROCODONE BITARTRATE AND ACETAMINOPHEN', 7);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (8, 'Myrwyn', 'Carlill', null, '8 Pawling Way', 'Triton AB-741', 8);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (9, 'Ezequiel', 'Willimott', null, '61 Jana Plaza', 'Homeopathic Weight Loss Formula', 9);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (10, 'Skylar', 'Mangenot', null, '795 Muir Crossing', 'COREG', 10);

CREATE TABLE `pharma_sells_to_factory` (
    `factoryID` int(64),
    `pharmaID` int(64),
    `price_of_sold_goods` float,
    FOREIGN KEY (`factoryID`) REFERENCES `factory` (`factoryID`),
    FOREIGN KEY (`pharmaID`) REFERENCES `pharma_engineer` (`employeeID`)
);

insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (1, 1, 238.83);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (2, 2, 299.75);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (3, 3, 148.77);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (4, 4, 92.89);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (5, 5, 551.18);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (6, 6, 634.77);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (7, 7, 103.48);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (8, 8, 777.51);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (9, 9, 976.36);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (10, 10, 361.73);