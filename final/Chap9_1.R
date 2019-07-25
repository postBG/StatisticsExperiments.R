res = c(16, 19, 25, 22, 21, 15, 16, 22, 21, 18, 13, 
        14, 15, 16, 15, 13, 19, 16, 20, 14, 11,
        18, 18, 15, 14, 14, 10, 18, 15, 15,
        11, 15, 11, 17, 17, 13, 14, 16, 13, 11)
factors = factor(c(rep(1, 10), rep(2, 11), rep(3, 9), rep(4, 10)))
media = data.frame(res, factors)

residuals = lm(res~factors, data=media)
anova(residuals)
