

# ----------------CHI-SQUARE TEST FOR INDEPENDENCE------------------

# load required libraries
require(tidyverse)
require(tibble)
require(ggplot2)
# so here I'm gonna use Titanic Dataset where I'll using Passenger Class and Survived variable
setwd('C:\\Users\\Rohan Shetty\\Desktop\\Data Science\\DataScience-Python\\titanic')
data <- read.csv('train.csv')

glimpse(data)
str(data)
summary(data)

# now I'll convert PClass variable into a factored one
data$Pclass <- as.factor(data$Pclass)
data$Survived <- as.factor(data$Survived)
str(data)

# Perform Chi-Square Test

chisq.test(data$Pclass, data$Survived) # Survived vs PassengerClass
# for sure the passenger class has a correlation with the passenger's survival

chisq.test(data$Sex, data$Survived)
# again Passenger's gender has a high correlation with his/her's survival

chisq.test(data$Embarked, data$Survived)
# this again has correlation with the passenger's survival

