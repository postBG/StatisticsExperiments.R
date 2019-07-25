anx = c(21, 24, 22, 18, 20, 
        9, 12, 10, 5, 9, 
        29, 26, 30, 24, 26,
        22, 20, 25, 18, 20,
        14, 18, 11, 9, 13,
        15, 18, 20, 13, 19)

music = factor(rep(rep(1:3, rep(5, 3)), 2))
stage = factor(rep(1:2, rep(15, 2)))
d = data.frame(anx, music, stage)
interaction.plot(d$music, d$stage, d$anx)

fit = lm(anx ~ music * stage, data=d)
anova(fit)
