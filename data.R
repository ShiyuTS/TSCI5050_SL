source("config_public.R")
library("rio")
library('ggplot2')
library("survival")
dat0 <- import_list(datafile_logins)
dat0a <- bind_rows(dat0) %>% mutate(id=gsub('r. study',' ', ...2) %>% as.integer())
dat1 <- import(datafile_post)
dat2 <- import(datafile_tech)
dat0a <- left_join(dat0a, dat1, by = c(id='id'))
dat0a <- left_join(dat0a, dat2, by = c(id='id'))
dat0a<- mutate(dat0a, action=...3, timepoint=...4)
#create new variable
#c_event <- 'NAME OF YOUR EVENT COLUMN'
#c_time <- 'NAME OF THE TIME COLUMN'
#dat0$c_event <- dat0$chd == 'CHD'
#dat0$c_time <- dat0$pt_yrs
#table(dat0$c_event)
#Quick way to summarize numeric data:
#hist(dat0$c_time)
#ggplot(dat0,aes(x=c_time,fill=c_event)) + geom_bar()
#ggplot(dat0,aes(x=c_time,fill=c_event)) + geom_boxplot()
#ggplot(dat0,aes(x=c_time, y=c_event)) + geom_violin()
#ggplot(dat0,aes(x=c_time, y=c_event, fill=c_event)) + geom_violin()
