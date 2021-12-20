# DS102L7P2 Frosted Flakes Example

install.packages("ggplot2")
library(ggplot2)

#frostedflakes = read.csv('../Data/frostedflakes.csv')

head(frostedflakes)

t_obj <- t.test(frostedflakes$Lab, mu = 37)

print(t_obj)

d <- ggplot(frostedflakes, aes(x = Lab))
d + geom_histogram(binwidth = 1) +
geom_vline(xintercept = t_obj$conf.int[1], color = "red") +
geom_vline(xintercept = t_obj$conf.int[2], color = "red") +
geom_vline(xintercept = t_obj$null.value, color = "green")

ggplot(frostedflakes, aes(sample = Lab)) + geom_qq()

