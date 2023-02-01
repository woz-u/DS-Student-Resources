# DSO106 L4 Modeling with Step-wise Regression

# Step-wise regression

###### Backward Elimination
# load in data
head(mtcars)

# with MPG as the DV, what are the best IVs that contribute
# to that response variable?

# create a function that is an lm with all 10 IVs
FitAll = lm(mpg ~ ., data = mtcars)
summary(FitAll)

# using backward elimination
step(FitAll, direction = 'backward')

# compare the model from backward elimination to see if it
# is any good
fitsome = lm(mpg ~ am + qsec + wt, data = mtcars)
summary(fitsome)


##### Forward Selection

# create original model
fitstart = lm(mpg ~ 1, data = mtcars)
summary(fitstart)

# Begin Forward Selection
step(fitstart, direction = 'forward', scope = (~ cyl + disp + hp + drat + wt + qsec + vs + am + gear + carb))

# Examine the final model
fitsome2 = lm(mpg ~ wt + cyl + hp, data = mtcars)
summary(fitsome2)



#### Hybrid stepwise - forward and backward selection
step(fitstart, direction="both", scope=formula(FitAll))
# run the model with the predictors - but we already did above
# summarize the model











