import json
companies = ["BAC", "C", "IBM", "AAPL", "GE", "T", "MCD", "NKE", "TWTR", "TSLA"]

# generate a json data set with variable Company, Date, and Close
with open("output.json") as json_file:
    data = json.load(json_file)
    for company in companies:
        for dailyStock in data[company]:
            date = dailyStock.get("Date")
            close = dailyStock.get("Close")
            print(company, date, close)


