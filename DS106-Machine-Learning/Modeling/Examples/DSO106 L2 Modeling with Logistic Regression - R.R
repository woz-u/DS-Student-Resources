## DSO106 L2 Modeling with Logistic Regression - R

# Laod in libraries
library("caret")
library("magrittr")
library("dplyr")
library("tidyr")
library("lmtest")
library("popbio")
library("e1071")

#Loaded in baseball data

# Determine whether # of home runs hit in a game is a predictor of whether or 
# not a team wins

# Data Wrangling
# recode the outcome variable (DV) to zeroes and ones
baseball$WinsR <- NA
baseball$WinsR[baseball$W.L == 'W'] <- 1
baseball$WinsR[baseball$W.L == 'L'] <- 0

# testing logistic regression assumptions
mylogit <- glm(WinsR ~ HR.Count, data=baseball, family='binomial')

# Predict wins and losses
probabilities <- predict(mylogit, type='response')
# Convert probabilities to have a positive or negative prediction
baseball$Predicted <- ifelse(probabilities > .5, 'pos', 'neg')

# Next, recode the predicted variable
baseball$PredictedR <- NA
baseball$PredictedR[baseball$Predicted == 'pos'] <- 1
baseball$PredictedR[baseball$Predicted == 'neg'] <- 0

# Convert our new variables to factors
baseball$PredictedR <- as.factor(baseball$PredictedR)
baseball$WinsR <- as.factor(baseball$WinsR)

# Create a confusion matrix
conf_mat <- caret::confusionMatrix(baseball$PredictedR, baseball$WinsR)
conf_mat

# Logit linearity
# calculate the logit and graph it against the predicted values
baseball1 <- baseball %>% dplyr::select_if(is.numeric)

predictors <- colnames(baseball1)

# finally, create the logit
baseball1 <- baseball1 %>%
  mutate(logit=log(probabilities/(1-probabilities))) %>%
  gather(key= 'predictors', value= 'predictor.value', -logit)

# With this logit in hand, you can graph to assess for linearity
ggplot(baseball1, aes(logit, predictor.value))+
  geom_point(size=.5, alpha=.5)+
  geom_smooth(method= 'loess')+
  theme_bw()+
  facet_wrap(~predictors, scales='free_y')

# can skip testing for the assumption of multicollinearity
# BC there is only 1 IV

# Testing for independent errors

plot(mylogit$residuals)
# seeing an even distribution of points across the x axis
# we have met the assumption of independent errors

# Testing for independent error - alternatives

# Durbin-Watson test to check for independence of errors
dwtest(mylogit, alternative='two.sided')

# Screening for outliers
infl <- influence.measures(mylogit)
summary(infl)


## Running Logistic Regression and Interpreting the Output
summary(mylogit)
# Graphing the logistic model
logi.hist.plot(baseball$HR.Count,baseball$WinsR, boxp=FALSE, type="hist", col="gray")
