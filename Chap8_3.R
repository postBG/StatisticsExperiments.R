dev.off()

hospital = read.table('~/RStudioProjects/dataset/ch08/hospital.txt', header = T)

# Ex1
# InfctRsk ~ Stay
plot(hospital$InfctRsk, hospital$Stay)
cor.test(hospital$InfctRsk, hospital$Stay)

# InfctRsk ~ Age
plot(hospital$InfctRsk, hospital$Age)
cor.test(hospital$InfctRsk, hospital$Age)

# InfctRsk ~ Xray
plot(hospital$InfctRsk, hospital$Xray)
cor.test(hospital$InfctRsk, hospital$Xray)


# Ex2
res = lm(InfctRsk ~ Stay + Age + Xray, data = hospital)
summary(res)

# Ex3
par(mfrow = c(2, 2))
plot(res)
