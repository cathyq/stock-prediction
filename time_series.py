%matplotlib inline
import os
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
#import statsmodels.api as sm
import seaborn as sb
sb.set_style('darkgrid')

path = os.getcwd() + '/output.csv'
stock_data = pd.read_csv(path)
#stock_data['Date'] = stock_data['Date'].convert_objects(convert_dates='coerce')
stock_data['Date'] = pd.to_datetime(stock_data['Date'])
stock_data = stock_data.sort_values(by='Date')
stock_data = stock_data.set_index('Date')

stock_data['Close'].plot(figsize=(16, 12))

#####
x = np.linspace(0, 10)
line = plt.plot(x, np.sin(x), '--', linewidth=2)

dashes = [10, 5, 100, 5]  # 10 points on, 5 off, 100 on, 5 off
line.set_dashes(dashes)

plt.show()
