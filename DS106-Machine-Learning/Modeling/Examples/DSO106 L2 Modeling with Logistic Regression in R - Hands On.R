# DSO106 L2 Modeling with Logistic Regression in R - Hands On

# Loading in the data
getwd()
setwd("/Users/nolan/OneDrive/Documents/WozU")
minerals <- read.csv("minerals.csv", fileEncoding="UTF-8-BOM")

# Import the packages
library("caret")
library("magrittr")
library("dplyr")
library("tidyr")
library("lmtest")
library("popbio")
library("e1071")

# The outcome (Gold) variable is already in 1/0 form

# base logit model
mylogit <- glm(Gold~Antimony, data=minerals, family='binomial')
summary(mylogit)

# probabilites to predict the presence of gold near antimony
probabilities <- predict(mylogit, type = 'response')

minerals1 <- minerals
minerals1$prediction <- ifelse(probabilities > .5, 1, 0)
minerals1$prediction <- as.factor(minerals1$prediction)
minerals1$Gold<- as.factor(minerals1$Gold)

# Time for the confusion matrix
conf_mat <- caret::confusionMatrix(minerals1$prediction, minerals1$Gold)
conf_mat

# Now the logit linearity
minerals1 <- minerals %>% dplyr::select_if(is.numeric)
predictors <- colnames(minerals1)

# time to create the logit
minerals2 <- minerals %>%
  mutate(logit = log(probabilities/(1-probabilities))) %>%
  gather(key = 'predictors', value = 'predictor.value', -logit)

# graph to assess for linearity
ggplot(minerals2, aes(logit, predictor.value))+
  geom_point(size=.5, alpha=.5)+
  geom_smooth(method= "loess")+
  theme_bw()+
  facet_wrap(~predictors, scales="free_y")

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

# Summary of the logistic regression
summary(mylogit)

# Graphing the logistic model
logi.hist.plot(minerals$Antimony,minerals$Gold, boxp=FALSE, type="hist", col="gray")

## In summary, traceable amounts of antimony, often lead to the discovery of gold nearby.











