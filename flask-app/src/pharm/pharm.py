from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db

pharm = Blueprint('pharm', __name__)

@pharm.route("/home")
def home_page():
    # create an empty dictionary object to use in
    # putting column headers together with data
    json_data = []

    # get a cursor object from the database
    cursor = db.get_db().cursor()

    sql_command_get_disease = 'SELECT disease.name FROM disease WHERE diseaseID=7'
    sql_command_get_symptoms = 'SELECT symptoms.name FROM (SELECT symptomID FROM disease_symptoms WHERE \
        diseaseID=7) as disSeven JOIN symptoms on symptoms.symptomID = disSeven.symptomID'
    sql_command_get_drugs = 'SELECT drug.name AS drug_name FROM (SELECT drugID FROM disease_drugs WHERE \
        diseaseID=7) as disSeven JOIN drug on drug.drugID = disSeven.drugID'

    sql_command_get_severity = 'SELECT AVG(symptoms.severity) AS average_severity FROM (SELECT symptomID FROM disease_symptoms WHERE \
        diseaseID=7) as disOne JOIN symptoms on symptoms.symptomID = disOne.symptomID'
    sql_command_get_ingredients = 'SELECT ingredients_drugs.ingredient_name FROM \
        ingredients_drugs JOIN disease_drugs on disease_drugs.drugID = ingredients_drugs.drugID WHERE diseaseID=7'


    execute_sql(cursor, json_data, sql_command_get_symptoms)
    execute_sql(cursor, json_data, sql_command_get_drugs)
    execute_sql(cursor, json_data, sql_command_get_severity)
    execute_sql(cursor, json_data, sql_command_get_ingredients)
    execute_sql(cursor, json_data, sql_command_get_disease)
    # execute_sql(cursor, json_data, sql_command_get_drugs)

    # sys.stderr.write(str(type(json_data)))
    jsonified_data = jsonify(json_data)
    # sys.stderr.write(str(type(jsonified_data)) + "\n")
    return jsonified_data


@pharm.route("/search", methods = ['POST'])
def search():
    current_app.logger.info(request.form)
    # create an empty dictionary object to use in
    # putting column headers together with data
    json_data = []

    # get a cursor object from the database
    cursor = db.get_db().cursor()
    sql_command_get_name = 'SELECT pharma_engineer.first_name, pharma_engineer.last_name FROM pharma_engineer WHERE investorID=4'
    execute_sql(cursor, json_data, sql_command_get_name)
    disease = request.form['disease']
    query = f'SELECT drug.name FROM drug JOIN disease_drugs on drug.drugID = disease_drugs.drugID JOIN disease on disease.diseaseID = disease_drugs.diseaseID'
    cursor.execute(query)
    db.get_db().commit()
    return "Success"

    # execute_sql(cursor, json_data, sql_command_get_drugs)

    # sys.stderr.write(str(type(json_data)))
    jsonified_data = jsonify(json_data)
    # sys.stderr.write(str(type(jsonified_data)) + "\n")
    return jsonified_data

@pharm.route("/add_drug", methods = ['POST'])
def addDrug():
    current_app.logger.info(request.form)
    # create an empty dictionary object to use in
    # putting column headers together with data
    json_data = []
    # get a cursor object from the database
    cursor = db.get_db().cursor()
    sql_command_get_name = 'SELECT pharma_engineer.first_name, pharma_engineer.last_name FROM pharma_engineer WHERE investorID=9'
    execute_sql(cursor, json_data, sql_command_get_name)
    drug = request.form['drug']
    quantity = request.form['quantity']
    price = request.form['price']
    query = f'INSERT INTO drug(name, quantity, price) VALUES (\"{drug}\", \"{quantity}\", \"{price}\")'
    cursor.execute(query)
    db.get_db().commit()
    return "Success"

    # execute_sql(cursor, json_data, sql_command_get_drugs)

    # sys.stderr.write(str(type(json_data)))
    jsonified_data = jsonify(json_data)
    # sys.stderr.write(str(type(jsonified_data)) + "\n")
    return jsonified_data

@pharm.route("/<pharmaid>")
def pharma_name(pharmaid):
    # create an empty dictionary object to use in
    # putting column headers together with data
    json_data = []

    # get a cursor object from the database. 
    cursor = db.get_db().cursor()

    sql_command_get_engineer = f'SELECT pharma_engineer.first_name, pharma_engineer.last_name FROM pharma_engineer WHERE investorID=\"{pharmaid}\"'
    execute_sql(cursor, json_data, sql_command_get_engineer)


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