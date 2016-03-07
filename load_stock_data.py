import yahoo_finance
import json
from pprint import pprint


# BOA, C, IBM, AAPL, GE, T, MCD, NKE, TWTR, TSLA
# boa = yahoo_finance.Share('BOA')
# c = yahoo_finance.Share('C')
# ibm = yahoo_finance.Share('IBM')
# aapl = yahoo_finance.Share('AAPL')
# ge = yahoo_finance.Share('GE')
# t = yahoo_finance.Share('T')
# mcd = yahoo_finance.Share('MCD')
# nke = yahoo_finance.Share('NKE')
# twtr = yahoo_finance.Share('TWTR')
# tsla = yahoo_finance.Share('TSLA')
#pprint(boa.get_historical('2015-03-05', '2015-04-05'))



#------------------------------------------------------------------------------
# make a list for all company shares
companies = ["BOA", "C", "IBM", "AAPL", "GE", "T", "MCD", "NKE", "TWTR", "TSLA"]

# store output in a list method 1
# shares = [yahoo_finance.Share(company) for company in companies]

# store output in a list method 2
shares = []
for company in companies:
    shares.append(yahoo_finance.Share(company))


# write stock output data into json files
with open('output.json', 'w') as outfile:
    for i in shares:
        data = i.get_historical('2015-03-05', '2016-03-05')
        json.dump(data, outfile)



