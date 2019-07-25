performance = c(10, 7, 9, 6, 8,
                5, 4, 7, 4, 5,
                5, 4, 6, 3, 2,
                3, 4, 5, 1, 2)
protein = factor(c(rep(1, 5), rep(2, 5), rep(1, 5), rep(2, 5)))
sex = factor(c(rep(1, 10), rep(2, 10)))

eat = data.frame(performance, protein, sex)

interaction.plot(eat$protein, eat$sex, eat$performance)

fit = lm(performance ~ protein * sex, data=eat)
anova(fit)
