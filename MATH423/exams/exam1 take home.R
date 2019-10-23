library(tidyverse)

70*50

(49*70+72)/50

pbinom(18, 50, 0.2) - pbinom(6, 50, 0.2)
pbinom(18, 50, 0.2) - pbinom(7, 50, 0.2) + dbinom(7, 50, 0.2)

wages <- read_csv("~/Classes/MATH 423/exam_data/Wage.csv")
mean(wages$Wage)
sd(wages$Wage)
hist(wages$Wage)
median(wages$Wage)

ppois(10, 15)

# 1) 3500
# 2) Not 70.04
# 3) sd would decrease
# 4) 0.894
# 5) 9.726
# 6) 2.206
# 7) right skewed
# 8) 9
# 9) 0.118
# 10) Not 110

(35*72 + 14*70 + 0)/50
(36*72 + 14*70)/50
