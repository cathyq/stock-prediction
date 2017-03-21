from alchemyapi import AlchemyAPI
import json
alchemyapi = AlchemyAPI()

companies = ['bac', 'c', 'ibm', 'aapl', 'tsla', 'twtr', 'ge', 'mcd', 'nke', 't']

companyScores = {}
companyType = {}
for company in companies:
	companyScores[company] = []
	companyType[company] = []
	with open("../DATA/headlines.{0}.txt".format(company)) as inputFile:
		lines = inputFile.readlines()
		for line in lines:
			print line
			response = alchemyapi.sentiment("text", line)
			print response
			if 'docSentiment' not in response:
				continue
			if 'score' in response['docSentiment']:
				companyScores[company].append(float(response['docSentiment']['score']))
			else:
				companyScores[company].append(0)
			companyType[company].append(response['docSentiment']['type'])

with open("companyScores.json", "w") as outputFile:
	json.dump(companyScores, outputFile)
with open("companyType.json", "w") as outputFile:
	json.dump(companyType, outputFile)
