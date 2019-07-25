mid_score = read.table('~/RStudioProjects/Final_Exam/mid_score.txt')

fresh = mid_score[mid_score$fresh == 1,]
senior = mid_score[mid_score$fresh == 2,]

# 1. (1)
fresh.meanscore = mean(fresh$mid)
# 1. (2)
senior.meanscore = mean(senior$mid)
# 1. (3)
t.test(fresh$mid, conf.level = 0.9)
fresh.ci = c(46.94133, 53.66737)
# 1. (4)
t.test(senior$mid, conf.level = 0.9)
senior.ci = c(47.2053, 55.0910)
# 1. (5)
t.test(fresh$mid, senior$mid, var.equal = T)
score.pvalue = 0.786
score.statistic = -0.27307

# 3.
gamble_data <- read.table('~/RStudioProjects/Final_Exam/gamble.txt')
gamble <- gamble_data$x
head(gamble)

# 3. (a)
record = c()
for(i in 1:length(gamble) - 1){
  record[i] = gamble[i+1] - gamble[i]
}

# 3. (b)
win = sum(record == 100)
p_hat = win / length(record)
s =  sqrt(p_hat * (1 - p_hat) / length(record))
upper = p_hat + qt(1 - 0.05 / 2, df = length(record) - 1) * s
lower = p_hat - qt(1 - 0.05 / 2, df = length(record) - 1) * s

