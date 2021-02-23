source("config_public.R")
library("rio")
library('ggplot2')
library("survival")
dat0 <- import(datafile0)
#create new variable
#c_event <- 'NAME OF YOUR EVENT COLUMN'
#c_time <- 'NAME OF THE TIME COLUMN'
dat0$c_event <- dat0$chd == 'CHD'
dat0$c_time <- dat0$pt_yrs
table(dat0$c_event)
#Quick way to summarize numeric data:
hist(dat0$c_time)
ggplot(dat0,aes(x=c_time,fill=c_event)) + geom_bar()
ggplot(dat0,aes(x=c_time,fill=c_event)) + geom_boxplot()
ggplot(dat0,aes(x=c_time, y=c_event)) + geom_violin()
ggplot(dat0,aes(x=c_time, y=c_event, fill=c_event)) + geom_violin()
