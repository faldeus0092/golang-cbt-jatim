# Proses Nilai

Note: JALANKAN DATA GENERATOR TERLEBIH DAHULU

1. generate schema DB baru dengan data yang sudah diproses
`mysql < processed_cbt_jatim_schema.sql`

2. proses menjadi csv
`python3 bounded.py`

3. merge csv untuk kebutuhan download
`python3 mergecsv.py` 

