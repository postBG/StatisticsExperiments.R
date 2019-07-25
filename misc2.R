survey = read.table('~/RStudioProjects/dataset/ch07/survey.txt')
kk = table(survey$Exer, survey$Smoke)
chisq.test(kk)
