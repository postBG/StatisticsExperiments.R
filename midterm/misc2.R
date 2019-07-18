try = 1000
alpha = 0.05
n = 50
count = 0
for (i in 1:try) {
  xs = rnorm(n, mean = 0, sd = 1)
  m = mean(xs)
  
  z_alpha_divided_two = -qnorm(alpha / 2, mean = 0, sd = 1)
  upper = m + z_alpha_divided_two / sqrt(n)
  lower = m - z_alpha_divided_two / sqrt(n)
  if (lower <= 0 & 0 <= upper) count = count + 1
}
count / try
