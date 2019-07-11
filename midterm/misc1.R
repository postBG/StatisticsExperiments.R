caches = c()

par(mfrow=c(2, 2))
for(v in c(10, 20, 30, 50)) {
  for (i in 1:2000){
    xs = rnorm(v, mean = 0, sd = 1)
    caches[i] = sum(xs * xs)
  }
  hist(caches, probability = T, main = paste('v =', v), xlim = c(0, 100))
  
  ys = seq(from = 0, to = 100, by = 0.1)
  fys = dchisq(ys, v)
  lines(ys, fys, col='red')
}

dev.off()