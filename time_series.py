%matplotlib inline
import os
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import statsmodels.api as sm
import seaborn as sb
sb.set_style('darkgrid')

path = os.getcwd() + '\data\stock_data.csv'
stock_data = pd.read_csv(path)
stock_data['Date'] = stock_data['Date'].convert_objects(convert_dates='coerce')
stock_data = stock_data.sort_index(by='Date')
stock_data = stock_data.set_index('Date')

stock_data['Close'].plot(figsize=(16, 12))