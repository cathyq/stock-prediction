# Get the 20 latest headline news for each company

library(XML)
#IBM
source <- "http://finance.yahoo.com/q/h?s=IBM+Headlines"
d <- htmlParse(source)
headlines.ibm <- xpathSApply(d, "//ul[contains(@class,'newsheadlines')]/following::ul/li/a", xmlValue)
free(d)
headlines.ibm
write(headlines.ibm, "headlines.ibm.txt")

#BAC
source <- "http://finance.yahoo.com/q/h?s=BAC+Headlines"
d <- htmlParse(source)
headlines.bac <- xpathSApply(d, "//ul[contains(@class,'newsheadlines')]/following::ul/li/a", xmlValue)
free(d)
headlines.bac
write(headlines.bac, "headlines.bac.txt")

#C
source <- "http://finance.yahoo.com/q/h?s=C+Headlines"
d <- htmlParse(source)
headlines.c <- xpathSApply(d, "//ul[contains(@class,'newsheadlines')]/following::ul/li/a", xmlValue)
free(d)
headlines.c
write(headlines.c, "headlines.c.txt")

#AAPL
source <- "http://finance.yahoo.com/q/h?s=AAPL+Headlines"
d <- htmlParse(source)
headlines.aapl <- xpathSApply(d, "//ul[contains(@class,'newsheadlines')]/following::ul/li/a", xmlValue)
free(d)
headlines.aapl
write(headlines.aapl, "headlines.aapl.txt")

#GE
source <- "http://finance.yahoo.com/q/h?s=GE+Headlines"
d <- htmlParse(source)
headlines.ge <- xpathSApply(d, "//ul[contains(@class,'newsheadlines')]/following::ul/li/a", xmlValue)
free(d)
headlines.ge
write(headlines.ge, "headlines.ge.txt")

#T
source <- "http://finance.yahoo.com/q/h?s=T+Headlines"
d <- htmlParse(source)
headlines.t <- xpathSApply(d, "//ul[contains(@class,'newsheadlines')]/following::ul/li/a", xmlValue)
free(d)
headlines.t
write(headlines.t, "headlines.t.txt")

#MCD
source <- "http://finance.yahoo.com/q/h?s=MCD+Headlines"
d <- htmlParse(source)
headlines.mcd <- xpathSApply(d, "//ul[contains(@class,'newsheadlines')]/following::ul/li/a", xmlValue)
free(d)
headlines.mcd
write(headlines.mcd, "headlines.mcd.txt")

#NKE
source <- "http://finance.yahoo.com/q/h?s=NKE+Headlines"
d <- htmlParse(source)
headlines.nke <- xpathSApply(d, "//ul[contains(@class,'newsheadlines')]/following::ul/li/a", xmlValue)
free(d)
headlines.nke
write(headlines.nke, "headlines.nke.txt")

#TWTR
source <- "http://finance.yahoo.com/q/h?s=TWTR+Headlines"
d <- htmlParse(source)
headlines.twtr <- xpathSApply(d, "//ul[contains(@class,'newsheadlines')]/following::ul/li/a", xmlValue)
free(d)
headlines.twtr
write(headlines.twtr, "headlines.twtr.txt")

#TSLA
source <- "http://finance.yahoo.com/q/h?s=TSLA+Headlines"
d <- htmlParse(source)
headlines.tsla <- xpathSApply(d, "//ul[contains(@class,'newsheadlines')]/following::ul/li/a", xmlValue)
free(d)
headlines.tsla
write(headlines.tsla, "headlines.tsla.txt")


