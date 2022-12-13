# Curity

Curity is a Database-driven software product that offers medical usages for patients, doctors,
and pharmaceutical engineers. 

Pharmaceutical engineers can upload their drugs on a shared database for diseases. Patients will be able to  
input their symptoms and learn about what diseases are afflicting them and what doctors/medicine
is available to assist them. Doctors can use Curity to view all of their patients' medical info
and afflictions. 

## Videos
https://youtu.be/0pdzq--5Pps

## Pharma Engineers

The Pharma Engineers persona was designed so that pharma engineers can connect with each other. They can also do researchon exiting drugs for certain diseases and then add more drugs with hopefully better side effects. The routes we have included are the home page for pharma engineers which will display their name and information on the drug they are currently researching. We also included 2 POST request routes one that allows them to search for specific drugs and one to add the drug they have created into the database. In our Appsmith we decided to showcase the route that allows engineers to add drugs to the database as the other 2 routes were covered either by doctors or patients. 


## Doctors

Using Curity Doctors can view and manage all of their existing patients. Upon logging in, doctors will see a 
homescreen listing their patients and relevant information associated with the patient. To support this functionality we have a route that selects all of the doctor's patients' first names, last names, and 
currently afflicted disease. Furthermore, from the homescreen a doctor is able to click on a patient
to see additional information. To support this, we have a route that shows for a given patient all of their 
symptoms in addition to the disease they are afflicted with. Finally, a doctor who witnesses symptoms in their
patients can add new symptoms to our database in which other doctors can utilize and access. To support this
functionality, a route exists in which a doctor user POSTs the necessary information via a form and the route inserts that information into our symptoms table in the database via a DML command. 

## Patients

The Patients persona was designed to represent a customer or medical patient that is suffering from a symptom of an unknown disease and would like to gain more insight into the possibilities of their unknown illness. The routes that are available for a patient include getting data about possible disease names given a symptom, getting further data about a singular disease such as doctor information, related symptoms to that disease, and medication names, prices, and availabilities. This information is received from our database (curity_bootstrap.sql) using GET statements and the inital symptom must be provided by the user. Further implementation of abstracting to cover every possible disease, symptom, and patient is done through the use of dynamic urls. 




