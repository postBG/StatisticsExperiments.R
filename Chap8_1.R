dev.off()
handspan = read.table('~/RStudioProjects/dataset/ch08/handspan.txt', header = T)

# Ex1
cor(handspan$Height, handspan$HandSpan)
plot(handspan$Height, handspan$HandSpan)

# Ex2
cor.test(handspan$Height, handspan$HandSpan)

# Ex3
res = lm(Height~HandSpan, data=handspan)
summary(res)

# Ex4
par(mfrow=c(2,2))
plot(res)