import mysql.connector as connection
import time
import pandas as pd
import psutil
from bounded_pool_executor import BoundedProcessPoolExecutor
import warnings
import list_kota

warnings.filterwarnings("ignore")


def loadDB(id_kota):
    t = time.time()
    try:
        mydb = connection.connect(host="localhost",
                                  database='CBT_JATIM_EAS',
                                  user="root",
                                  password="", use_pure=True)

        query = 'select id_siswa, nama, nrp, jawaban, jawaban_benar, id_mapel from soal_jawaban where id_kota=%d;' % id_kota
        ujian_siswa = pd.read_sql(query, mydb)

        mydb.close()  # close the connection
    except Exception as e:
        mydb.close()
        print(str(e))

    elapsed = time.time() - t
    print("Time Load DB  = {:.3f}".format(elapsed))
    ujian_siswa.loc[ujian_siswa['jawaban'] == ujian_siswa['jawaban_benar'], ['score']] = 1
    ujian_siswa = ujian_siswa.fillna(0)
    result = ujian_siswa.groupby(['id_siswa', 'nama', 'nrp', 'id_mapel'])['score'].agg('sum')
    result.to_csv("csv/id_kota_%d.csv" % id_kota)

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

    tAll = time.time()
    n_jobs = psutil.cpu_count()
    print("Ready to worker")
    cnt = 0
    with BoundedProcessPoolExecutor(max_workers=n_jobs) as worker:
        for id_kota in range(1,39):
            print('#%d Worker initialization %s' % (cnt, id_kota))
            cnt += 1
            print("Load DB %d, please wait ..." % id_kota)
            worker.submit(loadDB, id_kota)
    elapsed = time.time() - tAll
    print("Time selesai  = {:.3f}".format(elapsed))
    parseCSV()