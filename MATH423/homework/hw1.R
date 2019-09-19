# 1
grades <- rep(0, times = 8)
grades <- append(grades, values = rep(1, times = 4))
grades <- append(grades, values = rep(2, times = 8))
grades <- append(grades, values = rep(3, times = 10))
grades <- append(grades, values = rep(4, times = 34))

median(grades)
mean(grades)
hist(grades)

# 2
# Read in the shower flow rate data
shower <- read.csv("http://emp.byui.edu/johnsonc/data/M423-Sec1.3-13.csv")
# Display the first few data values
head(shower)
# Provide a summary of the data
summary(shower)

hist(shower$Rate, xlab = "Rate", ylab = "Frequency",
     main = "Shower Flow Rates \nin Perth, Australia",
     col = "darkgreen", border = "red")

qqnorm(shower$Rate, datax=TRUE)

shower$logRate <- log(shower$Rate)
head(shower)

qqnorm(shower$logRate, datax=TRUE)
hist(shower$logRate)

# 3
body <- read.csv("http://emp.byui.edu/johnsonc/data/BodyMeasurements.csv")
head(body)
names(body)
names(body)[5] <- "Height"
names(body)

summary(body$Height)
hist(body$Height, xlab = "Height (inches)", ylab = "Frequency",
     main = "Heights of men at BYU")

mean(body$Height, trim = 0.05)
