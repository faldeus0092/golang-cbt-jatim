import mysql.connector as connection
import time
import pandas as pd
import psutil
from bounded_pool_executor import BoundedProcessPoolExecutor
import warnings
import list_kota

def parseCSV():
    mydb = connection.connect(
        host="localhost",
        user="root",
        password="",
        database="processed_cbt_jatim_eas"
    )

    mycursor = mydb.cursor()
    # CVS Column Names
    col_names = ['id_siswa','nama','nrp', 'id_mapel', 'score']

    # Loop through the Rows
    for id_kota in range(1,39):
        # Use Pandas to parse the CSV file
        csvData = pd.read_csv(f"csv/id_kota_{id_kota}.csv",names=col_names, header=None, skiprows=1)
        # id to string
        tablename = list_kota.id_to_string(str(id_kota))
        print(id_kota)
        for i,row in csvData.iterrows():
            sql = f"INSERT INTO {tablename} (id_siswa, nama, nrp, id_mapel, score) VALUES (%s, %s, %s, %s, %s)"
            value = (row['id_siswa'],row['nama'],row['nrp'],row['id_mapel'],row['score'])
            mycursor.execute(sql, value)
            mydb.commit()
            print(i,row['id_siswa'],row['nama'],row['nrp'],row['id_mapel'],row['score'])


if __name__ == '__main__':
    parseCSV()