textbooks = read.table('~/RStudioProjects/dataset/ch06/textbooks.txt')
t.test(textbooks$diff, mu = 0, alternative = 'two.sided')
t.test(textbooks$uclaNew, textbooks$amazNew, paired = T, mu = 0, alternative = 'two.sided')


run10samp = read.table('~/RStudioProjects/dataset/ch06/run10samp.txt')
splited = split(run10samp, run10samp$gender)
females = splited$F
males = splited$M


var.test(females$time, males$time)
t.test(females$time, males$time, var.equal = T, alternative = 'two.sided')
