library(readr)

data = read.csv(file = "data/raw/train.csv")
head(data)

sum(is.na(data))
