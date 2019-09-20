# 3
# Set the seed for the random number generator
# This guarantees the same random sequence for everyone
set.seed(12345)
# Generate a vector of 100,000 normally-distributed random variables
# with a mean of 37 and a standard deviation of 0.4.
# This represents the body temperatures of randomly-selected adults.
# Store this vector in a data frame called "temp" (as in temperature).
temp <- data.frame(celsius = rnorm(n=100000, mean=37, sd=0.4))
# Round the simulated temperatures to the nearest tenth.
# Note that temp$celsius references vector "celsius" in data frame "temp".
temp$celsius <- round(temp$celsius, 1)
head(temp$celsius)

# a)
sum = sum(temp$celsius)
num = length(temp$celsius)
avg = sum/num

# b)
variance = (1/(num - 1))*sum((temp$celsius - avg)^2)

# c)
variance2 = (1/(num - 1))*(sum((temp$celsius^2)) - num*(avg)^2)

# d)
std_dev = sqrt((1/(num - 1))*(sum((temp$celsius^2)) - num*(avg)^2))
sdc <- sd(temp$celsius)

# f)
temp$kelvin <- temp$celsius + 273.15
temp$fahrenheit <- (9/5)*temp$celsius + 32
mean(temp$kelvin)
mean(temp$fahrenheit)
sd(temp$kelvin)
sd(temp$fahrenheit)

sdf <- sdc * (9/5)

# 4)
# Creates a boxplot for a particular data set
set.seed(999);
boxplot(round(100-10*rchisq(50,1),0),
        main="Histogram",
        xlab="Dollars", horizontal = TRUE)
