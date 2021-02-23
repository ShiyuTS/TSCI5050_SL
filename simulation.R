# load needed packages
library(tidyverse)
library(rio)
library(synthpop)

dat0 <- import("../TSCI 5050 Tues AM/fghm_heart_study_mortality_2018_v1.csv")

#add codebook
dat0cb <- codebook.syn(dat0[,-1])

#add simulation
sim0 <- syn(dat0[,-1])

#sim1 <- sdc(sim0,dat0,label='SIM',rm.replicated.uniques = T)

# how to get rid of a column in a data.frame:
#FOO$BAR <- NULL

