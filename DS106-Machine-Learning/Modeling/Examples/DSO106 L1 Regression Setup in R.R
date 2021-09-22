# DSO106 L1 Regression Setup in R

# Load in Libraries

library("car")
library("caret")
library("gvlma")
library("predictmeans")
library("e1071")

# Load in the manatee data

# Do the number of powerboats registered in Florida 
# impact the number of manatees killed there by powerboats each year?

# testing for assumptions

# testing for linearity
scatter.smooth(x=manatees$PowerBoats, y=manatees$ManateeDeaths, main="Manatee Deaths by Power Boats")

# testing for homoscedasticity

# 1st, create linear model
lmMod <- lm(ManateeDeaths~PowerBoats, data=manatees)
# now test for homoscedasticity
par(mfrow=c(2,2))
plot(lmMod)
# another way to test for homoscedasticity
lmtest::bptest(lmMod)
# p-value of .004 - it is significant
# NCV test
car::ncvTest(lmMod)
# our data is heteroscedastic ---- thus failing the assumption of homoscedasticity

# correcting for homoscedasticity violations
# use a box-cox transformation to try and make data more normal
distBCMod1 <- caret::BoxCoxTrans(manatees$ManateeDeaths)
print(distBCMod1)
# now bind the transformed variable to the dataset
manatees <- cbind(manatees, dist_newM=predict(distBCMod1, manatees$ManateeDeaths))
# create a new linear model and retest it
lmMod_bc2 <- lm(dist_newM~PowerBoats, data=manatees)
lmtest::bptest(lmMod_bc2)
# assumption of homoscedasticity is violated, still continuing though

# Next
# Testing for Homogeneity of Variance
# no cone shape in the 2X2 plot so the data passes the assumption of homogeneity of variance

# The gvlma library tests for several assumptions
gvlma(lmMod_bc2)

# Next is to screen for outliers

# Testing for Outliers in X Space
CookD(lmMod, group=NULL, plot=TRUE, idn=3, newwd=TRUE)
# looking at leverage values
lev = hat(model.matrix(lmMod))
plot(lev)
# look for a list of data points with leverage over .2
manatees[lev>.2,]

# Testing for Outliers in y Space
car::outlierTest(lmMod)
# no outliers in y space

# Testing for Outliers in x and y Space
summary(influence.measures(lmMod))

# Running Simple Linear Regression and Interpreting the Output
summary(lmMod_bc2)

# Interpreting Non-transformed regression output
summary(lmMod)
