dat0 <- import('C:/Users/shiyu/Downloads/fghm_heart_study_mortality_2018_v1.csv')

#Question 1: install packages
install.packages("devtools")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("pander")
install.packages("table1")
install.packages("broom")
install.packages("synthpop")
install.packages("rmarkdown")
#import dat0 from local desktop
dat0 <- import('C:/Users/shiyu/Downloads/fghm_heart_study_mortality_2018_v1.csv')
#Question 2
##create odd_index with odd-numbered rows in dat0
odd_index <- dat0[c(TRUE,FALSE),]
##selec numeric columns from odd_index using "select_if" function in "dplyr"
library("dplyr")
dat1 <- odd_index %>% select_if(is.numeric)
#Question 3
##create even_index with even-numbered rows in dat0 
even_index <- dat0[c(FALSE,TRUE),]
##i don't know how to use "select_if" to select non-numeric columns, so I used c() to create dat2
dat2 <- even_index[c("id", "chd", "sex", "obese", "hypertension")]
#Question 4
##I explored the "filter" function in dplyr and tested in dat0 to filter out participants less than or equal to 60 years old but obese.
?dplyr
?filter
young_age <- filter(dat0, age <= 60)
View(young_age)
young_age_obese <- filter(young_age, obese=="Obese")
View(young_age_obese)
