library(readxl)
dat <- read_excel("~/Classes/MATH 423/exam_data/MysteryE2.xlsx")

#1
hist(dat$X)

qqnorm(dat$X)

beta <- rbeta(500000, shape1 = 3, shape2 = 7)

pbeta(0.5, shape1 = 3, shape2 = 7)

qbeta(0.7, shape1 = 3, shape2 = 7)

mean(beta)

1 - pnorm(23, mean = 20, sd = 3)

pgamma(4, shape = 3, scale = 5) - pgamma(2, shape = 3, scale = 5)

