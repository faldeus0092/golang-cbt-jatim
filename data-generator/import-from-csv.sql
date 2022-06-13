LOAD DATA LOCAL INFILE 'csv/kota.csv'
into table CBT_JATIM_EAS.Kota
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'csv/siswa.csv'
into table CBT_JATIM_EAS.Siswa
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'csv/mata_pelajaran.csv'
into table CBT_JATIM_EAS.Mata_Pelajaran
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'csv/soal.csv'
into table CBT_JATIM_EAS.Soal
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'csv/jawaban.csv'
into table CBT_JATIM_EAS.Jawaban
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;