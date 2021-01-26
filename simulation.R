# load needed packages
library(tidyverse)
library(rio)
library(synthpop)

dat0 <- import("../TSCI 5050 Tues AM/fghm_heart_study_mortality_2018_v1.csv")

#add codebook
dat0cb <- codebook.syn(dat0)

# how to get rid of a column in a data.frame:
#FOO$BAR <- NULL
