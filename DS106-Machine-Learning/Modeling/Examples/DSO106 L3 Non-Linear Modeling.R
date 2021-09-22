# DSO106 L3 Non-Linear Modeling

# Quadratic Modeling in R

# Load packages
library('ggplot2')

bluegill_fish

# Does the age of the bluegill fish influence their length?

# Graph the quadratic relationship
quadPlot <- ggplot(bluegill_fish, aes(x = age, y=length)) + 
  geom_point() + stat_smooth(method = "lm", formula = y ~x + I(x^2), size =1)
quadPlot

# Model the Quadratic Relationhsip

# first, square the x term
Agesq <- bluegill_fish$age^2

# then the lm
quadModel <- lm(bluegill_fish$length~bluegill_fish$age+Agesq)
summary(quadModel)
# this is significant

# Exponential Modeling in R

# No packages/libraries needed to do exponential modeling in R

# bacteria data set is loaded

# question - How much does bacteria grow over time?

# exponential modeling
exMod <- lm(log(bacteria$Count)~bacteria$Period)
summary(exMod)

# this is significant - this particular bacteria demonstrates exponential growth












