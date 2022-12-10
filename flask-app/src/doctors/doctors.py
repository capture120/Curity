from flask import Blueprint, request, jsonify, make_response
import json
from src import db
import sys


doctors = Blueprint('doctors', __name__)

# Get all the products from the database
@doctors.route('/patients', methods=['GET'])
def get_patients():
    # get a cursor object from the database
    cursor = db.get_db().cursor()

    # use cursor to query the database for a list of products
    cursor.execute('select firstName from patients')

    # grab the column headers from the returned data
    column_headers = [x[0] for x in cursor.description]

    # create an empty dictionary object to use in 
    # putting column headers together with data
    json_data = []

    # fetch all the data from the cursor
    theData = cursor.fetchall()

    # for each of the rows, zip the data elements together with
    # the column headers. 
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)

    # Get all the products from the database

@doctors.route('/patient/possibility', methods=['GET'])
def get_patient_possibility():
    # get a cursor object from the database
    cursor = db.get_db().cursor()

    # use cursor to query the database for a list of products
    cursor.execute('SELECT symptoms.name FROM (SELECT symptomID FROM disease_symptoms WHERE \
        diseaseID=1) as disOne JOIN symptoms on symptoms.symptomID = disOne.symptomID')

    # grab the column headers from the returned data
    column_headers = [x[0] for x in cursor.description]

    # fetch all the data from the cursor
    theData = cursor.fetchall()

    cursor.execute('SELECT drug.price FROM (disease JOIN drug ON drug.drugID = disease.diseaseID) \
        WHERE diseaseID=1')

    theData = theData + (cursor.fetchall())

    # grab the column headers from the returned data
    # column_headers.extend()
    column_headers.append("price")

    # for x in cursor.description:
    #     sys.stderr.write("1\n")
    #     sys.stderr.write(str(x) + "\n")

    # create an empty dictionary object to use in 
    # putting column headers together with data
    json_data = []

    # for each of the rows, zip the data elements together with
    # the column headers. 
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))
    # sys.stderr.write(str(type(json_data)))
    jsonified_data = jsonify(json_data)
    # sys.stderr.write(str(type(jsonified_data)) + "\n")
    return jsonified_data