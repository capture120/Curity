from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db

doctors = Blueprint('doctors', __name__)

# Get all the products from the database
@doctors.route('/patients', methods=['GET'])
def get_patients():
    # get a cursor object from the database
    cursor = db.get_db().cursor()

    sql_query = 'SELECT firstName, lastName, disease.name FROM patients NATURAL JOIN disease WHERE (patients.doctorID=1 AND disease.diseaseID=1)'

    # create an empty dictionary object to use in 
    # putting column headers together with data
    json_data = []

    execute_sql(cursor, json_data, sql_query)

    return jsonify(json_data)

    # Get all the products from the database

@doctors.route('/patient/possibility', methods=['GET'])
def get_patient_possibility():
    # create an empty dictionary object to use in 
    # putting column headers together with data
    json_data = []

    # get a cursor object from the database
    cursor = db.get_db().cursor()

    sql_command_disease_name = 'SELECT disease.name AS possibility_name FROM disease WHERE diseaseID=1'
    sql_command_get_symptoms = 'SELECT symptoms.name FROM (SELECT symptomID FROM disease_symptoms WHERE \
        diseaseID=1) as disOne JOIN symptoms on symptoms.symptomID = disOne.symptomID'
    sql_command_get_drugs = 'SELECT drug.name AS drug_name FROM (SELECT drugID FROM disease_drugs WHERE \
    diseaseID=1) as disOne JOIN drug on drug.drugID = disOne.drugID'
    sql_command_get_severity = 'SELECT AVG(symptoms.severity) AS average_severity FROM (SELECT symptomID FROM disease_symptoms WHERE \
        diseaseID=1) as disOne JOIN symptoms on symptoms.symptomID = disOne.symptomID'

    execute_sql(cursor, json_data, sql_command_disease_name)
    execute_sql(cursor, json_data, sql_command_get_symptoms)
    execute_sql(cursor, json_data, sql_command_get_drugs)
    execute_sql(cursor, json_data, sql_command_get_severity)

    jsonified_data = jsonify(json_data)
    return jsonified_data

@doctors.route('/patient/symptoms', methods=['GET'])
def get_patient_symptoms():
    cursor = db.get_db().cursor()
    sql_command_get_symptoms = 'SELECT symptoms.name FROM (SELECT symptomID FROM disease_symptoms WHERE \
    diseaseID=1) as disOne JOIN symptoms on symptoms.symptomID = disOne.symptomID'
    cursor.execute(sql_command_get_symptoms)
    theData = cursor.fetchall()
    return theData

# adds a selected symptom
@doctors.route('/add_symptoms', methods=['POST'])
def add_symptom():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()
    symptom_name = request.form('symptom_name')
    description = request.form('description')
    severity = request.form('severity')
    query = f'INSERT INTO symptoms(name, description, severity) VALUES (\"{symptom_name}\", \"{description}\", \"{severity}\")'
    cursor.execute(query)
    db.get_db().commit()
    return "SUCCESS!"

# Given a cursor and sql_command, execute that sql command and store it into a given json_data array
def execute_sql(cursor, json_data, sql_command):
    # use cursor to query the database for a list of products
    cursor.execute(sql_command)

    theData = cursor.fetchall()

    # grab the column headers from the returned data
    column_headers = [x[0] for x in cursor.description]

    # for each of the rows, zip the data elements together with
    # the column headers. 
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))