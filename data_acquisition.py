import mysql.connector
from mysql.connector import Error
from mysql.connector import errorcode
import json
import serial
import datetime
# python -m pip install pyserial

try:
    ser = serial.Serial('COM5', 9600)  # vezi pe ce COM e pus
except Error as e:
    print(e)


try:
    connection = mysql.connector.connect(host='localhost',
                                         database='DataAcquisition',
                                         user='root',
                                         password='root')

    while True:
        data = ser.readline().decode()
        print(data)
        measurement = json.loads(data)
        print(measurement["temperature"])
        print(measurement["humidity"])

        mySql_insert_query = f"""INSERT INTO Measurements (Temperature, Humidity) 
                           VALUES 
                           ({measurement["temperature"]}, {measurement["humidity"]}) """
        print(mySql_insert_query)
        cursor = connection.cursor()
        cursor.execute(mySql_insert_query)
        connection.commit()
        print(cursor.rowcount, "Record inserted successfully into Acquisition table")
        cursor.close()
except mysql.connector.Error as error:
    print("Failed to insert record into Laptop table {}".format(error))
finally:
    if (connection.is_connected()):
        connection.close()
        print("MySQL connection is closed")
