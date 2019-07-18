paint = read.table('~/RStudioProjects/dataset/ch06/paint.txt')
tapply(paint$time, paint$group, mean)

var.test(paint$time ~ paint$group)
before = paint[paint$group == 1,]$time
after = paint[paint$group == 2,]$time
var.test(before, after)

