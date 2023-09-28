import csv
import subprocess

# Instala mysql-connector-python usando pip
subprocess.run(["pip", "install", "mysql-connector-python"])

import mysql.connector



# Nombre del archivo CSV y base de datos SQLite
csv_file = 'PBDI_data_1_housing.csv'

# Configuración de la conexión a la base de datos
db_config = {
    "host": "localhost",
    "user": "root",
    "password": "pbd1",
    "database": "pbd1"
}

# Conectar a la base de datos SQLite
conn = mysql.connector.connect(**db_config)
cursor = conn.cursor()

# Leer el archivo CSV y cargar datos en la tabla
with open(csv_file, 'r') as file:
    csv_reader = csv.reader(file)
    next(csv_reader)  # Saltar la primera fila si contiene encabezados

    for row in csv_reader:
        cursor.execute('''
            INSERT INTO casas (
                longitude,
                latitude,
                housing_median_age,
                total_rooms,
                total_bedrooms,
                population,
                households,
                median_income,
                median_house_value,
                ocean_proximity
            ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        ''', tuple(row))

# Confirmar los cambios y cerrar la conexión a la base de datos
conn.commit()
conn.close()

print("Datos cargados en la base de datos con éxito.")
