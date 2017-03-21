setwd("~/code/stock-prediction/qj2133_HW2/DATA")

# read data
bac <- read.csv("bac.csv", header = T)
c <- read.csv("c.csv", header = T)
ibm <- read.csv("ibm.csv", header = T)
aapl <- read.csv("aapl.csv", header = T)
ge <- read.csv("ge.csv", header = T)
t <- read.csv("t.csv", header = T)
mcd <- read.csv("mcd.csv", header = T)
nke <- read.csv("nke.csv", header = T)
twtr <- read.csv("twtr.csv", header = T)
tsla <- read.csv("tsla.csv", header = T)

# plot the raw data
plot(bac$Date, bac$Close, xlab = 'Time', ylab = 'Close Prices', main = "Bank Of America Yearly Prices")
plot(c$Date, c$Close, xlab = 'Time', ylab = 'Close Prices', main = "Citigroup Yearly Prices")
plot(ibm$Date, ibm$Close, xlab = 'Time', ylab = 'Close Prices', main = "IBM Yearly Prices")
plot(aapl$Date, aapl$Close, xlab = 'Time', ylab = 'Close Prices', main = "Apple Yearly Prices")
plot(ge$Date, ge$Close, xlab = 'Time', ylab = 'Close Prices', main = "GE Yearly Prices")
plot(t$Date, t$Close, xlab = 'Time', ylab = 'Close Prices', main = "AT&T Yearly Prices")
plot(mcd$Date, mcd$Close, xlab = 'Time', ylab = 'Close Prices', main = "McDonald's Yearly Prices")
plot(nke$Date, nke$Close, xlab = 'Time', ylab = 'Close Prices', main = "NIKE Yearly Prices")
plot(twtr$Date, twtr$Close, xlab = 'Time', ylab = 'Close Prices', main = "Twitter Yearly Prices")
plot(tsla$Date, tsla$Close, xlab = 'Time', ylab = 'Close Prices', main = "Tesla Motors Yearly Prices")

# Compare different first degree differing methods (stablize variance)
d.bac <- diff(bac$Close)
d.c <- diff(c$Close)
d.ibm <- diff(ibm$Close)
d.aapl <- diff(aapl$Close)
d.ge <- diff(ge$Close)
d.t <- diff(t$Close)
d.mcd <- diff(mcd$Close)
d.nke <- diff(nke$Close)
d.twtr <- diff(twtr$Close)
d.tsla <- diff(tsla$Close)

# Log differecing
log.d.bac <- diff(log(bac$Close))
log.d.c <- diff(log(c$Close))
log.d.ibm <- diff(log(ibm$Close))
log.d.aapl <- diff(log(aapl$Close))
log.d.ge <- diff(log(ge$Close))
log.d.t <- diff(log(t$Close))
log.d.mcd <- diff(log(mcd$Close))
log.d.nke <- diff(log(nke$Close))
log.d.twtr <- diff(log(twtr$Close))
log.d.tsla <- diff(log(tsla$Close))


# IBM
par(mfrow=c(1,1))
# Raw data
plot(d.ibm, type = "l", main = "IBM Differencing on Raw Data")
# Log data
plot(log.d.ibm, type = "l", main = "IBM Differencing on Logged Data")

# BAC
plot(d.bac, type = "l", main = "Bank of America Differencing on Raw Data")
plot(log.d.bac, type = "l", main = "Bank of America Differencing on Logged Data")
  
# C
plot(d.c, type = "l", main = "Citygroup Differencing on Raw Data")
plot(log.d.c, type = "l", main = "Citygroup Differencing on Logged Data")

# AAPL
plot(d.aapl, type = "l", main = "Apple Differencing on Raw Data")
plot(log.d.aapl, type = "l", main = "Apple Differencing on Logged Data")

## GE
plot(d.ge, type = "l", main = "GE Differencing on Raw Data")
plot(log.d.ge, type = "l", main = "GE Differencing on Logged Data")

# T
plot(d.t, type = "l", main = "AT&T Differencing on Raw Data")
plot(log.d.t, type = "l", main = "AT&T Differencing on Logged Data")

## MCD
plot(d.mcd, type = "l", main = "McDonald's Differencing on Raw Data")
plot(log.d.mcd, type = "l", main = "McDonald's Differencing on Logged Data")

## NKE
plot(d.nke, type = "l", main = "NIKE Differencing on Raw Data")
plot(log.d.nke, type = "l", main = "NIKE Differencing on Logged Data")

## TWTR
plot(d.twtr, type = "l", main = "Twitter Differencing on Raw Data")
plot(log.d.twtr, type = "l", main = "Twitter Differencing on Logged Data")

## TSLA
plot(d.tsla, type = "l", main = "Tesla Motors Differencing on Raw Data")
plot(log.d.tsla, type = "l", main = "Tesla Motors Differencing on Logged Data")


# NEXT
# 1. Choose Log data over raw data
# 2. Determine AR or MA process by first degree ACF/PACF plotting (p,d,q)
# ACF
acf(log.d.ibm, main = "IBM First Degree AutoCorrelation Function")
acf(log.d.bac, main = "Bank of America First Degree AutoCorrelation Function")
acf(log.d.c, main = "Citygroup First Degree AutoCorrelation Function")
acf(log.d.aapl, main = "Apple First Degree AutoCorrelation Function")
acf(log.d.ge, main = "GE First Degree AutoCorrelation Function")
acf(log.d.t, main = "AT&T First Degree AutoCorrelation Function")
acf(log.d.mcd, main = "McDonald's First Degree AutoCorrelation Function")
acf(log.d.nke, main = "NIKE First Degree AutoCorrelation Function")
acf(log.d.twtr, main = "Twitter First Degree AutoCorrelation Function")
acf(log.d.tsla, main = "Tesla First Degree AutoCorrelation Function")

# PACF
pacf(log.d.ibm, main = "IBM First Degree Partial AutoCorrelation Function")
pacf(log.d.bac, main = "BOA First Degree Partial AutoCorrelation Function")
pacf(log.d.c, main = "Citygroup First Degree Partial AutoCorrelation Function")
pacf(log.d.aapl, main = "Apple First Degree Partial AutoCorrelation Function")
pacf(log.d.ge, main = "GE First Degree Partial AutoCorrelation Function")
pacf(log.d.t, main = "AT&T First Degree Partial AutoCorrelation Function")
pacf(log.d.mcd, main = "McDonald's First Degree Partial AutoCorrelation Function")
pacf(log.d.nke, main = "NIKE First Degree Partial AutoCorrelation Function")
pacf(log.d.twtr, main = "Twitter First Degree Partial AutoCorrelation Function")
pacf(log.d.tsla, main = "Tesla First Degree Partial AutoCorrelation Function")


# # Second degree
# d2.ibm <- diff(d.ibm)
# # ACF
# acf(d2.ibm, main = "Second Degree AutoCorrelation Function")
# # PACF
# pacf(d2.ibm, main = "Second Degree Partial AutoCorrelation Function")


####### Apply ARIMA model
library(forecast)

# IBM
# arima(ibm$Close, order = c(1,2,0))
# arima(ibm$Close, order = c(0,1,0)) # best model with lowest AIC
# arima(ibm$Close, order = c(1,1,0))
# arima(ibm$Close, order = c(0,1,1)) 
# # Prediction
# fit.ibm <- arima(ibm$Close, order = c(0,1,0))
# pred.ibm <- predict(fit.ibm, n.ahead = 1)
# pred.ibm
#ts.plot(ibm, 2.718^pred$pred, lty = c(1:3))

# PREDICTION
ibm <- ts(ibm$Close, frequency=1) 
fit.ibm <- auto.arima(ibm)
pred.ibm <- forecast(fit.ibm, h=1)
plot(pred.ibm)
grid()

# BAC
bac <- ts(bac$Close, frequency=1) 
fit.bac <- auto.arima(bac)
pred.bac <- forecast(fit.bac, h=1)
plot(pred.bac)
grid()

# C
c <- ts(c$Close, frequency=1) 
fit.c <- auto.arima(c)
pred.c <- forecast(fit.c, h=1)
plot(pred.c)
grid()

# AAPL
aapl <- ts(aapl$Close, frequency=1) 
fit.aapl <- auto.arima(aapl)
pred.aapl <- forecast(fit.aapl, h=1)
plot(pred.aapl)
grid()


# GE
ge <- ts(ge$Close, frequency=1) 
fit.ge <- auto.arima(ge)
pred.ge <- forecast(fit.ge, h=1)
plot(pred.ge)
grid()


# T
t <- ts(t$Close, frequency=1) 
fit.t <- auto.arima(t)
pred.t <- forecast(fit.t, h=1)
plot(pred.t)
grid()


# MCD
mcd <- ts(mcd$Close, frequency=1) 
fit.mcd <- auto.arima(mcd)
pred.mcd <- forecast(fit.mcd, h=1)
plot(pred.mcd)
grid()


# NKE
nke <- ts(nke$Close, frequency=1) 
fit.nke <- auto.arima(nke)
pred.nke <- forecast(fit.nke, h=1)
plot(pred.nke)
grid()

# TWTR
twtr <- ts(twtr$Close, frequency=1) 
fit.twtr <- auto.arima(twtr)
pred.twtr <- forecast(fit.twtr, h=1)
plot(pred.twtr)
grid()

# TSLA
tsla <- ts(tsla$Close, frequency=1) 
fit.tsla <- auto.arima(tsla)
pred.tsla <- forecast(fit.tsla, h=1)
plot(pred.tsla)
grid()

# Prediction results
pred.ibm
pred.bac
pred.c
pred.aapl
pred.ge
pred.t
pred.mcd
pred.nke
pred.twtr
pred.tsla


