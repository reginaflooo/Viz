#11 March

install.packages('ggplot2')
library(ggplot2)
install.packages('gcookbook')
library(gcookbook)

ggplot(pg_mean, aes(x=group, y=weight)) +
  geom_col() +
  labs(title='Regina, Bar Chart') +
  theme(plot.title=element_text(hjust=0.5,size=20))

ggplot(BOD, aes(x=Time, y=demand)) +
  geom_line() +
  labs(title='Regina, Line Chart') +
  theme(plot.title=element_text(hjust=1, size=35))

#---

ggplot(diamonds, aes(x=cut)) +
  geom_bar() +
  labs(title='Regina, Bar Chart') +
  theme(plot.title=element_text(hjust=1, size=25))

ggplot(diamonds, aes(x=clarity)) +
  geom_bar() +
  labs(title='Regina, Bar Chart') +
  theme(plot.title=element_text(hjust=1, size=25))

#In creating histogram, when not mentioned or decided, the R will automatically give 30 bars 
#for the chart and automatically divide the ranges (acc to the 30 given bars)

ggplot(diamonds, aes(x=carat)) +
  geom_histogram() +
  labs(title='Regina, Histogram') +
  theme(plot.title=element_text(hjust=1, size=25))

#Using CSV file 

#To write.csv is to create a csv file from an existing element
write.csv(diamonds, file='Diamond.csv')
write.csv(pg_mean, file='PG_MEAN.csv')
