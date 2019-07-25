sale = c(210, 230, 190, 180, 190,
         195, 170, 200, 190, 193,
         295, 275, 290, 275, 265)
store = factor(rep(1:5, 3))
box = factor(c(rep(1, 5), rep(2, 5), rep(3, 5)))

sales = data.frame(sale, store, box)

residuals = lm(sale ~ store + box, data=sales)
anova(residuals)
