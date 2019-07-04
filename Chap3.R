numbers = 1:100
sampled_numbers = sample(numbers, size = 40)

# Ex 1-1: Create a 5x8 matrix using the sampled vector
mat = matrix(sampled_numbers, nrow = 5, ncol = 8)

# Ex 1-2: Extract row 2 and row 3 from the created matrix and store them in variables
row2 = mat[2, ]
row3 = mat[3, ]

# Ex 1-3: Extract col 1, 4, 7, 8 from and store it in a variable
sub_set = mat[, c(1, 4, 7, 8)]

# Ex 1-4: Calculate mean and variance of 7-th col of the matrix
col7 = mat[, 7]
mean_of_col7 = mean(col7)
var_of_col7 = var(col7)

# Ex 2, 3
print_p_or_np <- function(from=1, to=20, size=1) {
  xs = sample(from:to, size=size)
  is_gte_10s = xs >= 10
  str_to_prints = sapply(is_gte_10s, function(is_gte_10) {if (is_gte_10) 'P' else 'NP'})
  print(paste('Sampled numbers:', toString(xs), sep=' '))
  print(paste('Results:', toString(str_to_prints), sep=' '))
}

# Ex 2: Print 'P' or 'NP'
print_p_or_np(size=1)

# Ex 3: Print 'P' or 'NP' with 8 numbers
print_p_or_np(size=8)
