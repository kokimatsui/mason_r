install.packages("devtools")
install.packages("dplyr")
install.packages("magrittr")
install.packages("ggplot2")
install.packages("devtools")
install.packages("psych")
install.packages("hrbrthemes")
install.packages("tidyr")
install.packages("viridis")
install.packages("readr")
install.packages("stargazer")
library(hrbrthemes)
library(tidyr)
library(viridis)
library(psych)
library(dplyr)
library(readr)
library(magrittr)
library(ggplot2)
library(markdown)
library(devtools)
library(stargazer)
#decide the  place

#importing csv file
data_pga = read.csv('/Users/matsui/Desktop/lab.nakamuro/PGAdata.csv')
data_pga
#基本統計量
summary(data_pga)


output.lm <-lfe::felm(data_pga$scorerd~data_pga$handicap + data_pga$hand_i + data_pga$first_year + data_pga$cat1 + data_pga$cat1a + data_pga$cat2 + data_pga$cat3)                      
summary(output.lm)
