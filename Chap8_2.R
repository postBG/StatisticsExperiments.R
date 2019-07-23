dev.off()

carstopping = read.table('~/RStudioProjects/dataset/ch08/carstopping.txt', header = T)

# Ex1
plot(carstopping$StopDist, carstopping$Speed)
cor(carstopping$StopDist, carstopping$Speed)
cor.test(carstopping$StopDist, carstopping$Speed)

# Ex2
res = lm(StopDist ~ Speed, data = carstopping)
summary(res)

# Ex3
par(mfrow = c(2, 2))
plot(res)
