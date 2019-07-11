sweets = c(14.0, 14.2, 15.1, 13.7, 14.5, 15.6, 14.8, 15.1, 13.5, 15.8)
mu_hat = mean(sweets) # 평균의 추정
s = sd(sweets) # 표준편차의 추정

s / sqrt(length(sweets)) # 평균 추정치의 표준오차

# 모평균의 95% 신뢰구간
alpha = 0.05
lower = mu_hat - qnorm(1 - alpha / 2) * (s / sqrt(length(sweets)))
upper = mu_hat + qnorm(1 - alpha / 2) * (s / sqrt(length(sweets)))
lower
upper