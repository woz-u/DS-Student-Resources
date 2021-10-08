# DSO106 L3 Non-Linear Modeling Hands On

# nonlinear.csv is our data and is loaded in

# packages
library('ggplot2')
xy1 <- ggplot(nonlinear, aes(x = X1, y = Y1)) +
  geom_point() + stat_smooth(method = "lm", formula = y ~x + I(x^2), size =1)
xy1

xy2 <- ggplot(nonlinear, aes(x = X2, y = Y2)) +
  geom_point() + stat_smooth(method = "lm", formula = y ~x + I(x^2), size =1)
xy2

# X1 and Y1 is a quadratic relationship
# X2 and Y2 is an exponential relationship

# quadratic
xsq <- nonlinear$X1^2

# the lm
quadModel <- lm(nonlinear$Y1 ~ nonlinear$X1+xsq)
summary(quadModel)
# with a large F-statistic and a that p-value, we see this model is signifcant

# exponential
exMod <- lm(log(nonlinear$Y2)~nonlinear$X2)
summary(exMod)
# significant
