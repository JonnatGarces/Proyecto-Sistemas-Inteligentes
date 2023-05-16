# -*- coding: utf-8 -*-
"""
Created on Tue Apr 25 13:24:11 2023

@author: a
"""

import pyodbc


server =  'localhost'
database = 'prueba'
username = 'sa'
password = 'mypassword' 


try:
   conexion = pyodbc.connect('DRIVER={ODBC Driver 18 for SQL Server};SERVER='+server+';DATABASE='+database+';ENCRYPT=yes;UID='+username+';PWD='+ password)
except Exception as conexion:
    print("oc",conexion)
    
 
   
    




