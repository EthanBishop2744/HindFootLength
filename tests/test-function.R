library(tidyverse)
source('R/FunctionName.R')

download.file(url = "https://ndownloader.figshare.com/files/2292169",
              destfile = "data/Survey_data.csv")
survey <- read.csv("data/Survey_data.csv")



average_weight(survey,'male')
average_weight(survey,'female')


