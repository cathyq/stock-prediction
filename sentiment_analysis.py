import json
import numpy
from collections import Counter

companies = ['bac', 'c', 'ibm', 'aapl', 'tsla', 'twtr', 'ge', 'mcd', 'nke', 't']

with open("DATA/companyScores.json") as inputFile:
	data = json.load(inputFile)
	for company in companies:
		print company, "average: ", numpy.mean(data[company])

with open("DATA/companyType.json") as inputFile:
	data = json.load(inputFile)
	for company in companies:
		print company, "sentiment counts: ", Counter(data[company])