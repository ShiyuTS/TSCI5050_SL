library(tidyverse)
summary(iris)
head(iris)
subset()
#arrange(dataset, column name)
arrange(iris,Species)

select()
ls()
summary(Petal.Length)

#How "with" works-the power of "with"

with(iris,ls())
with(iris,summary(Petal.Length))

names(iris)
with(iris,browser())

4 == 5 # gives FALSE by Bokov, Alex F
4 == 5 # gives FALSE
A = 4; B = 5; # gives two new variables by Bokov, Alex F
A = 4; B = 5; # gives two new variables
# but ... A = B # sets the value of A to be... by Bokov, Alex F
# but ...
A = B # sets the value of A to be the same as that of B (5)
#! is negation, !TRUE is FALSE
Browse[1]> table(iris,useNA = 'if')
Browse[1]> Q