CREATE DATABASE curity;
CREATE USER 'patient'@'%' IDENTIFIED BY 'patient123';
GRANT ALTER PRIVILEGES ON curity.patient, curity.patient_disease_history TO 'patient'@'%';
GRANT SELECT PRIVILEGES ON curity.symptoms, curity.disease TO 'patient'@'%';
FLUSH PRIVILEGES;

CREATE USER 'doctor'@'%' IDENTIFIED BY 'doctor123';
GRANT ALL PRIVILEGES ON curity.* TO 'doctor'@'%';
FLUSH PRIVILEGES;

CREATE USER 'pharma_engineer'@'%' IDENTIFIED BY 'pharma_engineer123';
GRANT ALTER PRIVILEGES ON curity.drug, curity.ingredients, curity.factory, curity.pharma_engineer, curity.pharma_sells_to_factory, curity.investor TO 'pharma_engineer'@'%';
GRANT SELECT PRIVILEGES ON curity.orders TO 'pharma_engineer'@'%';
FLUSH PRIVILEGES;

USE curity;

CREATE TABLE 'patients' (
    'first_name' varchar(64) NOT NULL,
    'last_name'  varchar(64) NOT NULL,
    'patientID' int,
    'doctorID' int,
    PRIMARY KEY ('patientID'),
    FOREIGN KEY ('doctorID') REFERENCES 'doctor' ('doctorID')
);

insert into patients (first_name, last_name, patientID, doctorID) values ('Tawsha', 'Laurenceau', 23, 21);
insert into patients (first_name, last_name, patientID, doctorID) values ('Christopher', 'Gethins', 12, 29);
insert into patients (first_name, last_name, patientID, doctorID) values ('Putnam', 'Pledger', 25, 67);
insert into patients (first_name, last_name, patientID, doctorID) values ('Allistir', 'Chesher', 34, 47);
insert into patients (first_name, last_name, patientID, doctorID) values ('Kaia', 'Laird', 28, 18);
insert into patients (first_name, last_name, patientID, doctorID) values ('Aigneis', 'Cheves', 21, 78);
insert into patients (first_name, last_name, patientID, doctorID) values ('Rogerio', 'Hazart', 70, 53);
insert into patients (first_name, last_name, patientID, doctorID) values ('Rosie', 'Hollow', 60, 29);
insert into patients (first_name, last_name, patientID, doctorID) values ('Annemarie', 'Brunicke', 20, 62);
insert into patients (first_name, last_name, patientID, doctorID) values ('Alon', 'Yvon', 32, 57);

CREATE TABLE 'doctor' (
    'doctorID' int(64),
    'first_name' varchar(64) NOT NULL,
    'last_name' varchar(64) NOT NULL,
    'specialization' varchar(64),
    'phone' int(10),
    'email' varchar(64),
    'branchID' int(64),
    PRIMARY KEY ('doctorID'),
    FOREIGN KEY ('branchID') REFERENCES 'branch' ('branchID')
);

insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (47, 'Maud', 'Simonini', 'health', '542-691-7189', 'msimonini0@blog.com', 79);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (88, 'Vanny', 'Thorn', 'health', '546-952-2767', 'vthorn1@omniture.com', 69);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (5, 'Aryn', 'Muddimer', 'health', '622-381-3886', 'amuddimer2@booking.com', 72);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (12, 'Arch', 'Klimaszewski', 'health', '543-462-6962', 'aklimaszewski3@geocities.com', 35);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (60, 'Skip', 'Levane', 'health', '473-517-9950', 'slevane4@prlog.org', 80);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (10, 'Ellsworth', 'Coppeard', 'health', '205-985-1025', 'ecoppeard5@dmoz.org', 49);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (13, 'Emmie', 'Leggon', 'health', '248-508-4262', 'eleggon6@ibm.com', 69);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (11, 'Saleem', 'Jamison', 'health', '437-910-9137', 'sjamison7@state.tx.us', 51);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (7, 'Corbie', 'Rentilll', 'health', '942-487-3120', 'crentilll8@wp.com', 28);
insert into doctor (doctorID, first_name, last_name, specialization, phone, email, branchID) values (62, 'Huey', 'Andrejevic', 'health', '174-604-5516', 'handrejevic9@shareasale.com', 88);

CREATE TABLE 'doctors_in_fields' (
    'doctorID' int(64),
    'fieldID' int(64),
    FOREIGN KEY ('fieldID') REFERENCES 'field' ('fieldID'),
    FOREIGN KEY ('doctorID') REFERENCES 'doctor' ('doctorID')
);

insert into doctors_in_fields (doctorID, fieldID) values (93, 73);
insert into doctors_in_fields (doctorID, fieldID) values (100, 71);
insert into doctors_in_fields (doctorID, fieldID) values (91, 50);
insert into doctors_in_fields (doctorID, fieldID) values (25, 8);
insert into doctors_in_fields (doctorID, fieldID) values (63, 61);
insert into doctors_in_fields (doctorID, fieldID) values (100, 45);
insert into doctors_in_fields (doctorID, fieldID) values (33, 31);
insert into doctors_in_fields (doctorID, fieldID) values (85, 29);
insert into doctors_in_fields (doctorID, fieldID) values (95, 62);
insert into doctors_in_fields (doctorID, fieldID) values (10, 87);

CREATE TABLE 'field' (
    'fieldID' int(64),
    'name' varchar(64) NOT NULL,
    'specialty' varchar(64),
    PRIMARY KEY ('fieldID')
);

insert into field (fieldID, name, specialty) values (99, 'optical', 'laser eye care');
insert into field (fieldID, name, specialty) values (26, 'surgical', 'ER surgery');
insert into field (fieldID, name, specialty) values (93, 'oral', 'dental hygiene');
insert into field (fieldID, name, specialty) values (19, 'oral', 'Invisalign');
insert into field (fieldID, name, specialty) values (62, 'surgical', 'ER surgery');
insert into field (fieldID, name, specialty) values (67, 'pediatrics', 'general checkup');
insert into field (fieldID, name, specialty) values (68, 'pediatrics', null);
insert into field (fieldID, name, specialty) values (45, 'general', 'vaccination');
insert into field (fieldID, name, specialty) values (10, 'general', 'blood testing');
insert into field (fieldID, name, specialty) values (96, 'general', null);

CREATE TABLE 'branch' (
    'branchID' int(64),
    'branch_phone' int(10),
    'hospitalID' int(64),
    PRIMARY KEY ('branchID')
    FOREIGN KEY ('hospitalID') REFERENCES 'hospital' ('hospitalID')
);

insert into branch (branchID, branch_phone, hospitalID) values (62, '216-942-1494', 73);
insert into branch (branchID, branch_phone, hospitalID) values (3, '141-542-1389', 40);
insert into branch (branchID, branch_phone, hospitalID) values (51, '884-717-3724', 38);
insert into branch (branchID, branch_phone, hospitalID) values (60, '520-765-8111', 46);
insert into branch (branchID, branch_phone, hospitalID) values (14, '775-728-5148', 3);
insert into branch (branchID, branch_phone, hospitalID) values (34, '553-720-2393', 92);
insert into branch (branchID, branch_phone, hospitalID) values (15, '362-475-4588', 20);
insert into branch (branchID, branch_phone, hospitalID) values (16, '559-641-5649', 63);
insert into branch (branchID, branch_phone, hospitalID) values (37, '322-345-1655', 73);
insert into branch (branchID, branch_phone, hospitalID) values (89, '194-291-5073', 62);

CREATE TABLE 'hospital' (
    'hospitalID' int(64),
    'street' varchar(64) NOT NULL,
    'city' varchar(64) NOT NULL,
    'state' varchar(64),
    PRIMARY KEY ('hospitalID')
);

insert into hospital (hospitalID, street, city, state) values (2, 'Oak Valley', 'Wilkes Barre', 'Pennsylvania');
insert into hospital (hospitalID, street, city, state) values (32, 'Randy', 'Fort Myers', 'Florida');
insert into hospital (hospitalID, street, city, state) values (49, 'Claremont', 'Chicago', 'Illinois');
insert into hospital (hospitalID, street, city, state) values (97, 'Huxley', 'Indianapolis', 'Indiana');
insert into hospital (hospitalID, street, city, state) values (82, 'Stephen', 'Columbus', 'Ohio');
insert into hospital (hospitalID, street, city, state) values (33, 'Sycamore', 'Valdosta', 'Georgia');
insert into hospital (hospitalID, street, city, state) values (52, 'Sachtjen', 'Gainesville', 'Georgia');
insert into hospital (hospitalID, street, city, state) values (65, 'Service', 'Hialeah', 'Florida');
insert into hospital (hospitalID, street, city, state) values (71, 'Westridge', 'Tacoma', 'Washington');
insert into hospital (hospitalID, street, city, state) values (37, 'Walton', 'Richmond', 'Virginia');

CREATE TABLE 'patient_disease_history' (
    'patientID' int(64),
    'diseaseID' int(64),
    'is_still_afflicted' boolean NOT NULL,
    FOREIGN KEY ('patientID') REFERENCES 'patients' ('patientID'),
    FOREIGN KEY ('diseaseID') REFERENCES 'disease' ('diseaseID')
);

insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (16, 90, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (6, 16, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (40, 64, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (4, 33, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (10, 69, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (62, 16, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (42, 77, true);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (18, 62, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (3, 77, false);
insert into patient_disease_history (patientID, diseaseID, is_still_afflicted) values (7, 82, true);

CREATE TABLE 'disease' (
    'diseaseID' int(64),
    'name' varchar(64) NOT NULL,
    'description' varchar(64) DEFAULT 'more research required',
    'precaution' varchar(64) DEFAULT 'more research required',
    PRIMARY KEY ('diseaseID')
);

insert into disease (diseaseID, name, description, precaution) values (78, 'Fungal infection', 'An infectious disease caused by protozoan parasites from the Plasmodium family that can be transmitt', 'Removal of Autol Sub from Vas Deferens, Open Approach');
insert into disease (diseaseID, name, description, precaution) values (68, 'Chronic cholestasis', 'An allergy is an immune system response to a foreign substance thats not typically harmful to your', 'Bypass L Atrium to L Pulm Art with Zooplastic, Open Approach');
insert into disease (diseaseID, name, description, precaution) values (44, 'Drug Reaction', 'Hypothyroidism, also called underactive thyroid or low thyroid, is a disorder of the endocrine syste', 'Plain Radiography of Thor-abd Aorta using H Osm Contrast');
insert into disease (diseaseID, name, description, precaution) values (94, 'Peptic ulcer diseae', 'Psoriasis is a common skin disorder that forms thick, red, bumpy patches covered with silvery scales', 'MRI of R Ankle using Oth Contrast');
insert into disease (diseaseID, name, description, precaution) values (91, 'AIDS', 'Gastroesophageal reflux disease, or GERD, is a digestive disorder that affects the lower esophageal', 'Fluoroscopy of Cervico-Cerebral Arch using H Osm Contrast');
insert into disease (diseaseID, name, description, precaution) values (63, 'Diabetes', 'Chronic cholestatic diseases, whether occurring in infancy, childhood or adulthood, are characterize', 'Drainage of Lum Jt with Drain Dev, Perc Endo Approach');
insert into disease (diseaseID, name, description, precaution) values (100, 'Gastroenteritis', 'Hepatitis A is a highly contagious liver infection caused by the hepatitis A virus. The virus is one', 'Measure of Arterial Pressure, Peripheral, Extern Approach');
insert into disease (diseaseID, name, description, precaution) values (98, 'Bronchial Asthma', 'Osteoarthritis is the most common form of arthritis, affecting millions of people worldwide. It occu', 'Reposition Upper Tooth with Ext Fix, All, Open Approach');
insert into disease (diseaseID, name, description, precaution) values (93, 'Hypertension', 'Benign paroxysmal positional vertigo (BPPV) is one of the most common causes of vertigo — the sudden', 'Drainage of Right Vocal Cord with Drainage Device, Endo');
insert into disease (diseaseID, name, description, precaution) values (82, 'Migraine', 'Hypoglycemia is a condition in which your blood sugar (glucose) level is lower than normal.', 'Revision of Other Device in Periton Cav, Extern Approach');


CREATE TABLE 'disease_symptoms' (
    'diseaseID' int(64),
    'symptomID' int(64),
    FOREIGN KEY ('symptomID') REFERENCES 'symptoms' ('symptomID'),
    FOREIGN KEY ('diseaseID') REFERENCES 'disease' ('diseaseID')
);

insert into disease_symptoms (diseaseID, symptomID) values (35, 62);
insert into disease_symptoms (diseaseID, symptomID) values (47, 87);
insert into disease_symptoms (diseaseID, symptomID) values (24, 31);
insert into disease_symptoms (diseaseID, symptomID) values (26, 90);
insert into disease_symptoms (diseaseID, symptomID) values (47, 89);
insert into disease_symptoms (diseaseID, symptomID) values (3, 81);
insert into disease_symptoms (diseaseID, symptomID) values (55, 39);
insert into disease_symptoms (diseaseID, symptomID) values (90, 83);
insert into disease_symptoms (diseaseID, symptomID) values (100, 16);
insert into disease_symptoms (diseaseID, symptomID) values (39, 77);

CREATE TABLE 'symptoms' (
    'symptomID' int(64),
    'name' varchar(64) NOT NULL,
    'description' varchar(64) DEFAULT 'more research required',
    'severity' int(10),
    PRIMARY KEY ('symptomID')
);

insert into symptoms (symptomID, name, description, severity) values (74, 'Common Cold', 'The common cold is a viral infection of your nose and throat (upper respiratory tract).', 2.4);
insert into symptoms (symptomID, name, description, severity) values (57, 'Chicken pox', 'Chickenpox is a highly contagious disease caused by the varicella-zoster virus (VZV).', 6.1);
insert into symptoms (symptomID, name, description, severity) values (29, 'Urinary tract infection', 'Urinary tract infection: An infection of the kidney, ureter, bladder, or urethra.', 3.0);
insert into symptoms (symptomID, name, description, severity) values (100, 'Typhoid', 'An acute illness characterized by fever caused by infection with the bacterium Salmonella typhi.', 7.5);
insert into symptoms (symptomID, name, description, severity) values (14, 'Hepatitis B', 'Hepatitis B is an infection of your liver.', 4.0);
insert into symptoms (symptomID, name, description, severity) values (34, 'Heart attack', 'The death of heart muscle due to the loss of blood supply.', 4.3);
insert into symptoms (symptomID, name, description, severity) values (72, 'Pneumonia', 'Pneumonia is an infection in one or both lungs.', 3.6);
insert into symptoms (symptomID, name, description, severity) values (30, 'Arthritis', 'Arthritis is the swelling and tenderness of one or more of your joints.', 8.3);
insert into symptoms (symptomID, name, description, severity) values (1, 'Malaria', 'An infectious disease caused by protozoan parasites from the Plasmodium family that can be transmitt', 3.3);
insert into symptoms (symptomID, name, description, severity) values (100, 'Allergy', 'An allergy is an immune system response to a foreign substance thats not typically harmful to your', 9.6);

CREATE TABLE 'disease_drugs' (
    'drugID' int(64),
    'diseaseID' int(64),
    FOREIGN KEY ('drugID') REFERENCES 'drug' ('drugID'),
    FOREIGN KEY ('diseaseID') REFERENCES 'disease' ('diseaseID')
);

insert into disease_drugs (diseaseID, drugID) values (35, 13);
insert into disease_drugs (diseaseID, drugID) values (82, 56);
insert into disease_drugs (diseaseID, drugID) values (50, 58);
insert into disease_drugs (diseaseID, drugID) values (42, 19);
insert into disease_drugs (diseaseID, drugID) values (21, 7);
insert into disease_drugs (diseaseID, drugID) values (40, 1);
insert into disease_drugs (diseaseID, drugID) values (1, 93);
insert into disease_drugs (diseaseID, drugID) values (66, 16);
insert into disease_drugs (diseaseID, drugID) values (36, 85);
insert into disease_drugs (diseaseID, drugID) values (7, 95);

CREATE TABLE 'drug' (
    'drugID' int(64),
    'name' varchar(64) NOT NULL,
    'quantity' int(10) NOT NULL,
    'price' float(10),
    PRIMARY KEY ('drugID')
);

insert into drug (drugID, name, quantity, price) values (2, 'Sertraline Hydrochloride', 696, 68.8);
insert into drug (drugID, name, quantity, price) values (62, 'Avobenzone, Octinoxate, Octisalate, and Oxybenzone', 186, 43.7);
insert into drug (drugID, name, quantity, price) values (57, 'POTASSIUM CHLORIDE', 18, 29.28);
insert into drug (drugID, name, quantity, price) values (88, 'Avobenzone, Octisalate, Octocrylene, and Oxybenzone', 438, 38.29);
insert into drug (drugID, name, quantity, price) values (21, 'Antipyrine and Benzocaine', 961, 70.26);
insert into drug (drugID, name, quantity, price) values (45, 'ALUMINUM CHLOROHYDRATE', 562, 16.32);
insert into drug (drugID, name, quantity, price) values (11, 'Phentermine Hydrochloride', 958, 60.67);
insert into drug (drugID, name, quantity, price) values (93, 'MENTHOL, CAMPHOR, AND METHYLSALICYLATE', 158, 15.16);
insert into drug (drugID, name, quantity, price) values (58, 'ACETAMINOPHEN, CAFFEINE, and PYRILAMINE MALEATE', 841, 4.45);
insert into drug (drugID, name, quantity, price) values (76, 'pioglitazone', 123, 6.03);

CREATE TABLE 'drug_side_effects' (
    'drugID' int(64),
    'effectsID' int(64),
    FOREIGN KEY ('drugID') REFERENCES 'drug' ('drugID'),
    FOREIGN KEY ('effectsID') REFERENCES 'side_effects' ('effectsID')
);

insert into drug_side_effects (drugID, effectsID) values (83, 64);
insert into drug_side_effects (drugID, effectsID) values (36, 13);
insert into drug_side_effects (drugID, effectsID) values (78, 6);
insert into drug_side_effects (drugID, effectsID) values (31, 55);
insert into drug_side_effects (drugID, effectsID) values (68, 79);
insert into drug_side_effects (drugID, effectsID) values (26, 77);
insert into drug_side_effects (drugID, effectsID) values (96, 60);
insert into drug_side_effects (drugID, effectsID) values (57, 85);
insert into drug_side_effects (drugID, effectsID) values (7, 93);
insert into drug_side_effects (drugID, effectsID) values (13, 58);

CREATE TABLE 'side_effects' (
    'effectsID' int(64),
    'name' varchar(64) NOT NULL,
    'description' varchar(64) DEFAULT 'more research required',
    PRIMARY KEY ('effectsID')
);

insert into drug_side_effects (effectsID, name, description) values (1, 'Felderm', 'Atyp squam cell not excl hi grd intrepith lesn cyto smr anus');
insert into drug_side_effects (effectsID, name, description) values (19, 'Alemturanon', 'Abscess of bursa, elbow');
insert into drug_side_effects (effectsID, name, description) values (79, 'Ganimycin', 'Unspecified fracture of unspecified metacarpal bone, sequela');
insert into drug_side_effects (effectsID, name, description) values (100, 'Unirone', 'Sltr-haris Type III physl fx upr end r tibia, 7thP');
insert into drug_side_effects (effectsID, name, description) values (60, 'Tamoban', 'Oth disrd of amniotic fluid and membrns, second tri, oth');
insert into drug_side_effects (effectsID, name, description) values (33, 'Abiposide', 'Sprain of other part of right wrist and hand, subs encntr');
insert into drug_side_effects (effectsID, name, description) values (31, 'Theraprex Adderudin', 'Fall (on)(from) incline, sequela');
insert into drug_side_effects (effectsID, name, description) values (79, 'Palostadil Amphetamethate', 'Poisoning by unsp antipsychot/neurolept, assault, init');
insert into drug_side_effects (effectsID, name, description) values (18, 'Afatiderm Choriotrol', 'Fx unsp phalanx of r rng fngr, subs for fx w malunion');
insert into drug_side_effects (effectsID, name, description) values (94, 'Dactinesin Amciran', 'Pressure ulcer of head, unstageable');

CREATE TABLE 'orders' (
    'orderID' int(64),
    'customerID' int(64),
    'sellerID' int(64),
    'price_per_unit' float(64) DEFAULT 0,
    'units_sold' int(64) NOT NULL,
    'total_cost' float(64) CHECK (total_cost == units_sold * price_per_unit),
    'drugID' int(64),
    PRIMARY KEY ('orderID'),
    FOREIGN KEY ('drugID') REFERENCES 'drug' ('drugID')
);

insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (100, 26, 46, 77.6, 998, 165.01, 38);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (73, 56, 51, 942.43, 1000, 991.33, 5);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (94, 60, 26, 238.5, 978, 776.63, 18);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (74, 22, 7, 94.16, 419, 585.19, 57);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (63, 41, 74, 191.27, 267, 209.43, 75);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (29, 77, 32, 78.13, 866, 854.35, 81);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (91, 21, 13, 840.1, 356, 915.15, 80);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (56, 34, 100, 22.88, 950, 843.24, 19);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (52, 28, 86, 990.13, 572, 622.62, 31);
insert into orders (orderID, customerID, sellerID, price_per_unit, units_sold, total_cost, drugID) values (61, 8, 70, 514.94, 32, 41.35, 12);

CREATE TABLE 'factory_drug' (
    'factoryID' int(64),
    'drugID' int(64),
    'quantity_produced' int NOT NULL,
    FOREIGN KEY ('factoryID') REFERENCES 'factory' ('factoryID'),
    FOREIGN KEY ('drugID') REFERENCES 'drug' ('drugID')
);

insert into factory_drug (factoryID, drugID, quantity_produced) values (65, 91, 479);
insert into factory_drug (factoryID, drugID, quantity_produced) values (72, 40, 779);
insert into factory_drug (factoryID, drugID, quantity_produced) values (15, 33, 318);
insert into factory_drug (factoryID, drugID, quantity_produced) values (12, 2, 768);
insert into factory_drug (factoryID, drugID, quantity_produced) values (62, 1, 975);
insert into factory_drug (factoryID, drugID, quantity_produced) values (87, 43, 880);
insert into factory_drug (factoryID, drugID, quantity_produced) values (11, 33, 925);
insert into factory_drug (factoryID, drugID, quantity_produced) values (5, 20, 448);
insert into factory_drug (factoryID, drugID, quantity_produced) values (6, 16, 994);
insert into factory_drug (factoryID, drugID, quantity_produced) values (73, 100, 780);

CREATE TABLE 'places_to_buy_drugs' (
    'drugID' int,
    'employeeID' int,
    FOREIGN KEY ('drugID') REFERENCES 'drug' ('drugID'),
    FOREIGN KEY ('employeeID') REFERENCES 'medicine_hub' ('employeeID')
);

insert into places_to_buy_drugs (drugID, employeeID) values (71, 60);
insert into places_to_buy_drugs (drugID, employeeID) values (48, 8);
insert into places_to_buy_drugs (drugID, employeeID) values (80, 13);
insert into places_to_buy_drugs (drugID, employeeID) values (100, 67);
insert into places_to_buy_drugs (drugID, employeeID) values (70, 29);
insert into places_to_buy_drugs (drugID, employeeID) values (5, 84);
insert into places_to_buy_drugs (drugID, employeeID) values (99, 56);
insert into places_to_buy_drugs (drugID, employeeID) values (91, 95);
insert into places_to_buy_drugs (drugID, employeeID) values (97, 20);
insert into places_to_buy_drugs (drugID, employeeID) values (17, 81);

CREATE TABLE 'medicine_hub' (
    'employeeID' int(64),
    'first_name' varchar(64) NOT NULL,
    'last_name' varchar(64) NOT NULL,
    'title' varchar(64),
    'location' varchar(64) NOT NULL,
    PRIMARY KEY ('employeeID')
);

insert into medicine_hub (employeeID, first_name, last_name, title, location) values (10, 'Marion', 'Goodwins', 'CVS', '8126 Vahlen Point');
insert into medicine_hub (employeeID, first_name, last_name, title, location) values (88, 'Effie', 'Laurens', 'Walgreens', '20 Longview Point');
insert into medicine_hub (employeeID, first_name, last_name, title, location) values (17, 'Callida', 'Phoenix', 'The Modern Chemist', '76 Laurel Center');
insert into medicine_hub (employeeID, first_name, last_name, title, location) values (28, 'Bryana', 'Pedrol', 'Duane Reade', '57401 Namekagon Park');
insert into medicine_hub (employeeID, first_name, last_name, title, location) values (31, 'Barbara-anne', 'Allchin', 'Costco', '066 Kinsman Trail');
insert into medicine_hub (employeeID, first_name, last_name, title, location) values (77, 'Amery', 'Hallwell', 'Rexall', '22 Rutledge Crossing');
insert into medicine_hub (employeeID, first_name, last_name, title, location) values (100, 'Bryna', 'Rosa', 'Walmart', '8 Grayhawk Point');
insert into medicine_hub (employeeID, first_name, last_name, title, location) values (63, 'Etta', 'Ciotto', 'Brunet', '357 Vidon Parkway');
insert into medicine_hub (employeeID, first_name, last_name, title, location) values (64, 'Barnie', 'Maypowder', 'Proxim', '7541 Boyd Avenue');
insert into medicine_hub (employeeID, first_name, last_name, title, location) values (77, 'Carter', 'McAuliffe', 'Uniprix', '6 Springs Place');

CREATE TABLE 'ingredients_drugs' (
    'ingredient_name' varchar(64),
    'drugID' int,
    FOREIGN KEY ('ingredient_name') REFERENCES 'ingredients' ('name'),
    FOREIGN KEY ('drugID') REFERENCES 'drug' ('drugID')
);

insert into ingredients_drugs (ingredient_name, drugID) values ('Abacavir', 56);
insert into ingredients_drugs (ingredient_name, drugID) values ('Nabilone', 68);
insert into ingredients_drugs (ingredient_name, drugID) values ('Ozenoxacin', 45);
insert into ingredients_drugs (ingredient_name, drugID) values ('Cephradine', 65);
insert into ingredients_drugs (ingredient_name, drugID) values ('Diflunisal', 70);
insert into ingredients_drugs (ingredient_name, drugID) values ('Quazepam', 3);
insert into ingredients_drugs (ingredient_name, drugID) values ('Ruxolitinib', 70);
insert into ingredients_drugs (ingredient_name, drugID) values ('Nystatin', 7);
insert into ingredients_drugs (ingredient_name, drugID) values ('Aztreonam', 4);
insert into ingredients_drugs (ingredient_name, drugID) values ('Codeine', 97);

CREATE TABLE 'ingredients' (
    'name' varchar(64) NOT NULL,
    PRIMARY KEY ('name')
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

CREATE TABLE 'factory' (
    'factoryID' int,
    'name' varchar(64) NOT NULL,
    'email' varchar(64),
    'phone' int(10),
    'location' varchar(64) NOT NULL,
    PRIMARY KEY ('factoryID')
);

insert into factory (factoryID, name, email, phone, location) values (53, 'Enoxaparin Sodium', 'csyme0@vimeo.com', '322-162-5629', '99 American Crossing');
insert into factory (factoryID, name, email, phone, location) values (70, 'Lorazepam', 'kbrownlea1@tamu.edu', '531-730-7048', '72 Nelson Way');
insert into factory (factoryID, name, email, phone, location) values (61, 'Fluconazole', 'klukins2@facebook.com', '763-324-8914', '9 Union Way');
insert into factory (factoryID, name, email, phone, location) values (47, 'Simvastatin', 'csaylor3@about.com', '975-217-3125', '43 Westend Junction');
insert into factory (factoryID, name, email, phone, location) values (79, 'Rifampin', 'rphoebe4@narod.ru', '830-847-0700', '16 Harper Street');
insert into factory (factoryID, name, email, phone, location) values (8, 'No7 Lifting and Firming Foundation Sunscreen SPF 15 Vanilla', 'clishmund5@multiply.com', '344-426-5401', '724 Ridgeview Way');
insert into factory (factoryID, name, email, phone, location) values (67, 'FAST RELIEF ARTROSAMIN', 'hriccione6@youku.com', '726-378-7887', '9588 Northwestern Park');
insert into factory (factoryID, name, email, phone, location) values (89, 'Phentermine Hydrochloride', 'psobczak7@rambler.ru', '523-181-2226', '56276 Blackbird Court');
insert into factory (factoryID, name, email, phone, location) values (26, 'Isosorbide Mononitrate', 'eormshaw8@trellian.com', '602-323-5477', '5468 Butterfield Plaza');
insert into factory (factoryID, name, email, phone, location) values (62, 'Hydralazine Hydrochloride', 'ahonig9@delicious.com', '964-559-7686', '2373 Daystar Drive');

CREATE TABLE 'pharma_sells_to_factory' (
    'factoryID' int(64),
    'pharmaID' int(64),
    'price_of_sold_goods' float(64),
    FOREIGN KEY ('factoryID') REFERENCES 'factory' ('factoryID'),
    FOREIGN KEY ('pharmaID') REFERENCES 'pharma_engineer' ('employeeID')
);

insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (57, 99, 238.83);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (23, 34, 299.75);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (89, 18, 148.77);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (90, 85, 92.89);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (32, 9, 551.18);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (74, 56, 634.77);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (98, 64, 103.48);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (44, 72, 777.51);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (64, 3, 976.36);
insert into pharma_sells_to_factory (factoryID, pharmaID, price_of_sold_goods) values (60, 19, 361.73);

CREATE TABLE 'pharma_engineer' (
    'employeeID' int(64),
    'first_name' varchar(64) NOT NULL,
    'last_name' varchar(64) NOT NULL,
    'title' varchar(64),
    'location' varchar(64) NOT NULL,
    'pharma_name' varchar(64) NOT NULL,
    'investorID' int(64),
    PRIMARY KEY ('employeeID'),
    FOREIGN KEY ('pharma_name') REFERENCES 'pharma_field' ('name'),
    FOREIGN KEY ('investorID') REFERENCES 'investor' ('investorID')
);

insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (11, 'Franklyn', 'Thebeaud', null, '3 Brown Drive', 'Oxycodone Hydrochloride', 79);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (87, 'Nert', 'Dake', null, '154 Maywood Hill', 'Western Family', 77);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (94, 'Stanwood', 'Achromov', null, '04923 Elmside Alley', 'Mary Kay Acne Treatment', 50);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (71, 'Kara', 'Pedro', null, '6 Messerschmidt Park', 'Bangs Scrapes', 91);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (27, 'Nerissa', 'Boyland', null, '36 Eagan Park', 'babies r us childrens pain relief', 65);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (43, 'Elisabet', 'Greenwood', null, '538 Golf Course Avenue', 'XtraCare Foaming Facial Cleanser', 86);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (52, 'Adair', 'Keepe', null, '7 Rockefeller Parkway', 'LISINOPRIL', 26);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (23, 'Myrwyn', 'Carlill', null, '8 Pawling Way', 'Delsym', 71);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (32, 'Ezequiel', 'Willimott', null, '61 Jana Plaza', 'ELYMUS REPENS POLLEN', 23);
insert into pharma_engineer (employeeID, first_name, last_name, title, location, pharma_name, investorID) values (57, 'Skylar', 'Mangenot', null, '795 Muir Crossing', 'Ketoconazole', 24);

-- Via the Docker Compose file, a special user called webapp will 
-- be created in MySQL. We are going to grant that user 
-- all privilages to the new database we just created. 
-- TODO: If you changed the name of the database above, you need 
-- to change it here too.
grant all privileges on cool_db.* to 'webapp'@'%'; -- IDENTIFIED BY 'abc123';
flush privileges;

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

CREATE TABLE 'investor' (
    'investorID' int,
    'company_name' varchar(64),
    'balance' float(64) NOT NULL,
    'interest' float(64) NOT NULL CHECK (interest >= 0),
    PRIMARY KEY ('investorID')
);

insert into investor (investorID, company_name, balance, interest) values (58, 'Jantoven', '$7630.89', 1.475);
insert into investor (investorID, company_name, balance, interest) values (56, 'Complete Allergy Relief', '$9788.95', 1.884);
insert into investor (investorID, company_name, balance, interest) values (70, 'Ammonia Inhalants', '$7557.20', 3.614);
insert into investor (investorID, company_name, balance, interest) values (93, 'Nitroglycerin', '$9799.81', 1.269);
insert into investor (investorID, company_name, balance, interest) values (74, 'Ramipril', '$4720.60', 2.982);
insert into investor (investorID, company_name, balance, interest) values (64, 'Clonidine Hydrochloride', '$5838.01', 2.741);
insert into investor (investorID, company_name, balance, interest) values (18, 'LE TECHNIQ', '$5034.70', 0.286);
insert into investor (investorID, company_name, balance, interest) values (62, 'Hesol Rim Jean-Aeck', '$4190.39', 0.562);
insert into investor (investorID, company_name, balance, interest) values (72, 'Castellani Paint', '$9223.13', 1.692);
insert into investor (investorID, company_name, balance, interest) values (53, 'Desitin Multi-Purpose', '$5084.24', 1.474);