cdc_data = read.table('~/RStudioProjects/dataset/ch02/cdc.txt')

# Transform genhlth to categorical data
cdc_data$genhlth = factor(cdc_data$genhlth)

# Ex1: Summary categorical data with table
table(cdc_data$genhlth)

# Ex2: Summary and mean of weights
summary(cdc_data$weight)

# Ex3: Scatter plot between weight and wtdesire
plot(cdc_data$weight, cdc_data$wtdesire, main='Scatter Plot', xlab='weight', ylab='desired weight')
cor(cdc_data$weight, cdc_data$wtdesire) # 0.8000521

# Ex4: Analysis of the wdiff
cdc_data$wdiff = cdc_data$wtdesire - cdc_data$weight
summary(cdc_data$wdiff)
plot(cdc_data$weight, cdc_data$wdiff, xlab='weight', ylab='wdiff')

# Ex5: Histogram of the Age
hist(cdc_data$age, breaks=50, xlab = 'age')
hist(cdc_data$age, breaks=100, xlab = 'age')
