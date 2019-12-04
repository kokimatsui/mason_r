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
library(fastDummies)
library(lfe)
#decide the  place

data_pga = read.csv('/Users/matsui/Desktop/lab.nakamuro/dataset2019a.csv')
data_pga

output.lm <- lm(data_pga$scorerd~data_pga$handicap + data_pga$score_i + data_pga$first_year + as.factor(data_pga$tourn)*as.factor(data_pga$cat))
summary(output.lm)

#as.factorで特定列に含まれる文字列をダミー化
#lfeで固定効果
output.lm <- lfe::felm(data_pga$scorerd~data_pga$handicap + data_pga$hand_i |as.factor(data_pga$tourn)*as.factor(data_pga$cat))
summary(output.lm)
