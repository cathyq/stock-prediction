from yahoo_finance import Share
from pprint import pprint
import sys
import time
import json

# BOA, C, IBM, AAPL, GE, T, MCD, NKE, TWTR, TSLA
boa = Share('BOA')
c = Share('C')
ibm = Share('IBM')
aapl = Share('AAPL')
ge = Share('GE')
t = Share('T')
mcd = Share('MCD')
nke = Share('NKE')
twtr = Share('TWTR')
tsla = Share('TSLA')

#pprint(boa.get_historical('2015-03-05', '2015-04-05'))
data = boa.get_historical('2015-03-05', '2016-03-05')

# write data into json files
with open('output.json', 'w') as outfile:
    json.dump(data, outfile)







    