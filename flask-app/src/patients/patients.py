from flask import Blueprint, request, jsonify, make_response
import json
from src import db


patients = Blueprint('patients', __name__)

@patients.route('/test', methods=['GET'])
def test():
    return ('<h1>Hello from your patients app!!</h1>')

# Get all the patients from the database
@patients.route('/patients_list', methods=['GET'])
def get_patients():
    # get a cursor object from the database
    cursor = db.get_db().cursor()

    # use cursor to query the database for a list of products
    cursor.execute('SELECT first_name, last_name FROM patients')

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