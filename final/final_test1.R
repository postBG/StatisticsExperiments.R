# 1. (1) paired = T
# (2) cor.test(x, y, alternative = 'greater')
# (3) lm(y ~ x - 1)
# (4) summary, anova

# 2. (a) i. 독립성, ii. H0: p_ij = p_i. * p_.j (i = 1:4, j=1:2)
# iii.
row1 = c(12, 11)
row2 = c(13, 6)
row3 = c(65, 47)
row4 = c(41, 5)
tab = rbind(row1, row2, row3, row4)
chisq.test(tab)

# 2. (b)
x = c(12, 26, 22)
p = c(2, 5, 3) / 10
chisq.test(x, p = p)

# 3.
parking = read.table('parking.txt')
carA = parking[parking$car == 'A',]
t.test(carA$time, mu = 30, conf.level = 0.9)

var.test(parking$time ~ parking$car)
t.test(parking$time ~ parking$car, var.equal=T)

# 4.
reg = read.table('reg.txt')
# (a)
plot(reg)
# (b)
cor(reg)
# (c)
cor.test(reg$y, reg$x3)
# (4)
fit = lm(y ~ x3, data = reg)
summury(fit)
anova(fit)
# (5)
fit = lm(y ~ x3 + x1, data = reg)
summury(fit)
anova(fit)
par(mfrow = c(1, 2))
plot(fit, which=c(1, 2))