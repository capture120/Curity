from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db
import random
import sys

patients = Blueprint('patients', __name__)

@patients.route('/disease/<disease_name>', methods=['GET'])
def get_symptoms(disease_name):

    id = 1

    json_data = []

    cursor = db.get_db().cursor()

    get_symptoms_sql = f'SELECT symptoms.name, symptoms.severity FROM (SELECT symptomID FROM disease_symptoms WHERE name = {disease_name}) \
    as symp JOIN symptoms on symptoms.symptomID = symp.symptomID'

    # get_severity_sql = ('SELECT symptoms.severity FROM (SELECT symptomID FROM disease_symptoms WHERE diseaseID=1) \
    # as symp JOIN symptoms on symptoms.symptomID = symp.symptomID')

    # column_headers = [x[0] for x in cursor.description]

    execute_sql(cursor, json_data, get_symptoms_sql)
    # execute_sql(cursor, json_data, get_severity_sql)
    
    # sys.stderr.write(str(type(json_data)))
    jsonified_data = jsonify(json_data)
    # sys.stderr.write(str(type(jsonified_data)) + "\n")
    return jsonified_data

@patients.route('/medicines/<disease_name>', methods=['GET'])
def get_medicines(disease_name):

    json_data = []
    cursor = db.get_db().cursor()

    get_medicine_sql = f'SELECT dr.name, dr.price, dr.quantity FROM (SELECT diseaseID FROM disease WHERE name = {disease_name}) \
    as d JOIN disease_drugs as dd on dd.diseaseID = d.diseaseID JOIN drug as dr on\
    dr.drugID = dd.drugID'

    execute_sql(cursor, json_data, get_medicine_sql)

    jsonified_data = jsonify(json_data)
    # sys.stderr.write(str(type(jsonified_data)) + "\n")
    return jsonified_data

@patients.route('/doctors/<disease_name>', methods=['GET'])
def get_doctors(disease_name):

    json_data = []
    cursor = db.get_db().cursor()

    get_doctor_sql = f'SELECT doctor.first_name, doctor.last_name, doctor.email FROM doctor \
    JOIN patients on doctor.doctorID = patients.doctorID JOIN patient_disease_history on\
    patients.patientID = patient_disease_history.patientID JOIN disease on patient_disease_history.diseaseID \
    = disease.diseaseID WHERE disease.name = {disease_name}'
    
    
    # (SELECT diseaseID FROM disease WHERE name = {disease_name}) \
    # as d JOIN patient_disease_history as pdh on pdh.diseaseID = d.diseaseID JOIN \
    # patients p on p.patientID = pdh.patientID JOIN doctor do on do.doctorID = p.patientID'

    execute_sql(cursor, json_data, get_doctor_sql)

    jsonified_data = jsonify(json_data)
    # sys.stderr.write(str(type(jsonified_data)) + "\n")
    return jsonified_data


@patients.route('/symptoms', methods=['POST'])
def post_symptoms():
    current_app.logger.info(request.form)
    symptom_name = request.form('symptom_name')

@patients.route('/<symptom_name>')
def disease_list(symptom_name):
    json_data = []
    cursor = db.get_db().cursor()

    sys.stderr.write(symptom_name + "\n")

    get_disease_sql = f'SELECT disease.name FROM disease JOIN disease_symptoms on disease.diseaseID = disease_symptoms.diseaseID JOIN symptoms on symptoms.symptomID = disease_symptoms.symptomID WHERE symptoms.name = \"{symptom_name}\"'
    execute_sql(cursor, json_data, get_disease_sql)
    jsonified_data = jsonify(json_data)
    # sys.stderr.write(str(type(jsonified_data)) + "\n")
    return jsonified_data

@patients.route("/user/<patientid>")
def patient_name(patientid):
    # create an empty dictionary object to use in
    # putting column headers together with data
    json_data = []

    # get a cursor object from the database. 
    cursor = db.get_db().cursor()

    # sys.stderr.write(str(patientid) + "\n")

    # patientid = int patientID
    sql_command_get_patient = f'SELECT patients.firstName, patients.lastName FROM patients WHERE patients.patientID = {patientid}'
    
    # sys.stderr.write(str(type(json_data)) + "\n")

    #sql_command_get_patient = ('SELECT * FROM patients')
    execute_sql(cursor, json_data, sql_command_get_patient)

    # sys.stderr.write(str(type(json_data)))
    jsonified_data = jsonify(json_data)
    # sys.stderr.write(str(type(jsonified_data)) + "\n")
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


