from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db
import random

patients = Blueprint('patients', __name__)

@patients.route('/disease', methods=['GET'])
def get_symptoms():

    id = 1

    json_data = []

    cursor = db.get_db().cursor()

    get_symptoms_sql = ('SELECT symptoms.name FROM (SELECT symptomID FROM disease_symptoms WHERE diseaseID=1) \
    as symp JOIN symptoms on symptoms.symptomID = symp.symptomID')

    get_severity_sql = ('SELECT symptoms.severity FROM (SELECT symptomID FROM disease_symptoms WHERE diseaseID=1) \
    as symp JOIN symptoms on symptoms.symptomID = symp.symptomID')

    get_doctor_sql = ('SELECT do.first_name, do.last_name FROM (SELECT diseaseID FROM disease WHERE diseaseID=1) \
    as d JOIN patient_disease_history as pdh on pdh.diseaseID = d.diseaseID JOIN \
    patients p on p.patientID = pdh.patientID JOIN doctor do on do.doctorID = p.patientID')

    get_medicine_sql = ('SELECT dr.name, dr.price, dr.quantity FROM (SELECT diseaseID FROM disease WHERE diseaseID=1) \
    as d JOIN disease_drugs as dd on dd.diseaseID = d.diseaseID JOIN drug as dr on\
    dr.drugID = dd.drugID')

    # column_headers = [x[0] for x in cursor.description]

    execute_sql(cursor, json_data, get_symptoms_sql)
    execute_sql(cursor, json_data, get_severity_sql)
    execute_sql(cursor, json_data, get_doctor_sql)
    execute_sql(cursor, json_data, get_medicine_sql)

    # sys.stderr.write(str(type(json_data)))
    jsonified_data = jsonify(json_data)
    # sys.stderr.write(str(type(jsonified_data)) + "\n")
    return jsonified_data

@patients.route('/symptoms', methods=['POST', "GET"])
def post_symptoms():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()
    symptom_name = request.form('symptom_name')
    
    json_data = []
    cursor = db.get_db().cursor()

    get_disease_sql = ('SELECT d.name FROM (SELECT symptoms.symptomID FROM symptoms WHERE symptoms.name = symptom_name) \
    as symp JOIN disease_symptoms as ds on ds.symptomID = symp.symptomID JOIN disease d on d.diseaseID = ds.diseaseID')

    column_headers = [x[0] for x in cursor.description]

    execute_sql(cursor, json_data, get_disease_sql)
    jsonified_data = jsonify(json_data)
    return jsonified_data
    
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


