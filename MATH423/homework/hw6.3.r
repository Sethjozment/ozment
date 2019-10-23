# Set parameter values
reps <- 10000
nTrials <- 20
prob <- 0.8

# Define an empty data frame
sim <- data.frame(Bernoulli.sum = c(rep(NA,reps)))
# Simulate nTrials=20 Bernoulli rvs and record only their sum.
# Note that a binomial with n=1 trial is a Bernoulli rv.
# Repeat this reps=10000 times
# Store in sim$Bernoulli.sum
for(i in 1:reps) {
  sim$Bernoulli.sum[i] <- sum(rbinom(nTrials, 1, prob))
}

hist(sim$Bernoulli.sum)
mean(sim$Bernoulli.sum)
var(sim$Bernoulli.sum)

# Problem 2(f)
# Simulate reps=10000 binomial random variables
# Store in sim$Binomial
sim$Binomial <- rbinom(reps, nTrials, prob)
hist(sim$Binomial)
mean(sim$Binomial)
var(sim$Binomial)
