import csv

for id_kota in range(1,39):
    with open(f'id_kota_{id_kota}.csv','r') as csvinput:
        with open('merged.csv', 'a') as csvoutput:
            writer = csv.writer(csvoutput, lineterminator='\n')
            reader = csv.reader(csvinput)

            all = []
            row = next(reader)
            row.append('id_kota')
            all.append(row)

            for row in reader:
                row.append(id_kota)
                all.append(row)

            writer.writerows(all)
    