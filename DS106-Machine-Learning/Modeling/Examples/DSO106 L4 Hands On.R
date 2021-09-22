# DSO106 L4 Hands On

## Part 1

# IQ is DV, Tests are IVs

# backwards elimination

# lm function with all IVs
FitAll = lm(IQ ~ ., data = IQ)
summary(FitAll)

# time to run the backwards elimination
step(FitAll, direction = 'backward')

# summarize the model now to see if it is any good
fitsome = lm(formula = IQ ~ Test1 + Test2 + Test4, data = IQ)
summary(fitsome)
# Not significant, nor is the F-statistic that good

--------------------------------------------------------------------------------

## Part 2
  
# backward set up
fitall = lm(Y ~ ., data = stepwiseRegression)
summary(fitall)

# run the backward elimination
step(fitall, direction = 'backward')

# summarize model to see if it is any good
fitBack = lm(formula = Y ~ X2 + X4 + X6 + X10 + X11 + X12, data = stepwiseRegression)
summary(fitBack)
# This model is very significant, and accounts for 99.98% of the variation of Y

# forward set up
fitstart = lm(Y ~ 1, data = stepwiseRegression)
summary(fitstart)

# run the forward selection
step(fitstart, directrion = 'forward', scope = (formula(fitall)))

# summarise the model to see if it is any good
fitForward = lm(formula = Y ~ X6 + X4 + X12 + X10 + X2 + X11, data = stepwiseRegression)
summary(fitForward)
# This model is very significant, and accounts for 99.98% of the variation of Y
# This model also contains all of the IVs from the backward elimination model, just
# in a different order

# stepwise setup
step(fitstart, directrion = 'both', scope = (formula(fitall)))
fitstep = lm(formula = Y ~ X6 + X4 + X12 + X10 + X2 + X11, data = stepwiseRegression)
summary(fitstep)
# Same ass the previous models, same variables too