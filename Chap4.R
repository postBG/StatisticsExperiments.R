ames_dataset = read.csv('~/RStudioProjects/dataset/ch04/ames.csv')
sale_prices = ames_dataset$SalePrice

# Ex 1: Draw histogram and Calculate summary of SalePrice
hist(sale_prices, main = 'Histogram of Population', xlab = 'sale price', breaks = 40)
summary(sale_prices)
mean_of_population = mean(sale_prices)
var_of_population = var(sale_prices)

# Ex 2, 3
calculate_sampled_mean = function(sale_prices, size = 50, iterate = 1){
  means = c()
  for (i in 1:iterate) {
    sampled_prices = sample(sale_prices, size = size)
    means[i] = mean(sampled_prices)
  }
  
  means
}

# Ex 2: Sample 50 prices and calculate expected mu
sample_size = 50
mean50 = calculate_sampled_mean(sale_prices, size = sample_size, iterate = 1)[1]
mean50

# Ex 3: Repeat Ex 2 1000 times
sample_mean50 = calculate_sampled_mean(sale_prices, size = sample_size, iterate = 5000)
hist(sample_mean50, main = 'Histogram of Sampled means 50', xlab = 'sampled mean 50', breaks = 40)

# Ex 4: Calculate mean and variance of sampled_mean50, and compare with population's mean and variance
mean_of_sampled_mean50 = mean(sample_mean50)
mean_of_sampled_mean50
var_of_sampled_mean50 = var(sample_mean50)
var_of_sampled_mean50

var_of_sampled_mean50 * sample_size
mean_of_sampled_mean50

# Ex 5: change sample size to 150
sample_size2 = 150
sample_mean150 = calculate_sampled_mean(sale_prices, size = sample_size2, iterate = 5000)
hist(sample_mean150, main = 'Histogram of Sampled means 150', xlab = 'sampled mean 150', breaks = 40)


mean_of_sampled_mean150 = mean(sample_mean150)
mean_of_sampled_mean150
var_of_sampled_mean150 = var(sample_mean150)
var_of_sampled_mean150


mean_of_sampled_mean150
var_of_sampled_mean150 * sample_size2
