import json
with open("output.json") as json_file:
    json_data = json.load(json_file)
    for item in json_data:
    	close = item.get("Close")
    	print(close)


