# Math 423
# Homework 15
# Load MASS, ggplot2 packages
library(MASS)
library(tidyverse)
# Simulate 10000 observations of a Beta RV
# Parameters: alpha, beta
alpha <- 45
beta <- 20
sim <- data.frame(Gamma = rgamma(n=10000, shape=alpha, scale=beta))
# Create a histogram of the simulated data in sim$Gamma
# Compare the emperical and theoretical Gamma distributions
ggplot(data=sim, aes(sim$Gamma)) +
  geom_histogram(aes(y = ..density..),
                 breaks=seq(min(sim$Gamma)-0.5, max(sim$Gamma)+0.5, by = 1),
                 col="blue", fill="blue", alpha=.2) +
  geom_line(aes(y = ..density.., colour = "Empirical"), stat = "density") +
  stat_function(fun=dgamma,args=fitdistr(sim$Gamma,"gamma")$estimate,
                aes(color=sim$Gamma)) +
  scale_colour_manual(name = "Density", values = c("red", "blue")) +
  labs(title="Simulated Data",
       x="Raw Data",
       y="Relative Frequency") +
  #theme(legend.position = c(0.85, 0.85)) +
  theme_bw()

# Compute the mean and variance of the simulated data
mean(sim$Gamma)
var(sim$Gamma)


pgamma(15, shape = 5, scale = 3)
gammainc(4,5)
gammainc(5,4)
gammainc(0,4)

pgamma(5, shape = 7, scale = 1)
1 - pgamma(8, shape = 7, scale = 1)
pgamma(8, shape = 7, scale = 1) - pgamma(3, shape = 7, scale = 1)

pgamma(4, shape = 7, scale = 1) + (1 - pgamma(6, shape = 7, scale = 1)) - (pgamma(4, shape = 7, scale = 1) * (1 - pgamma(6, shape = 7, scale = 1)))

pexp(100, 0.01386)
pexp(200, 0.01386)
pexp(200, 0.01386) - pexp(100, 0.01386)

1 - pexp(216.4502, 0.01386)

0.5/0.01386
