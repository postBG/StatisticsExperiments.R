mu = 12
variance = 4
std = sqrt(variance)
alpha = 0.01
n = 50

trials = 1000
count = 0
for (i in 1:trials) {
  samples = rnorm(n, mean = mu, sd = std)
  x_bar = mean(samples)
  upper = x_bar - qnorm(alpha / 2, mean = 0, sd = 1) * (std / sqrt(n))
  lower = x_bar + qnorm(alpha / 2, mean = 0, sd = 1) * (std / sqrt(n))
  if (lower <= mu & mu <= upper) count = count + 1
}
count / trials
