import json
import csv
companies = ["BAC", "C", "IBM", "AAPL", "GE", "T", "MCD", "NKE", "TWTR", "TSLA"]
headers = ["Volume", "Symbol", "Adj_Close", "High", "Low", "Date", "Close", "Open"]

# get the headers
csv_file = open('output.csv', 'w')
writer = csv.writer(csv_file)
writer.writerow(headers)

# generate a data set with company name, date, and close price
with open("output.json") as json_file:
    data = json.load(json_file)

    for company in companies:
        for line in data[company]:
            writer.writerow([line[x] for x in headers])
csv_file.close()