library("caret")
library("IDPmisc")
library("magrittr")
library("dplyr")
library("tidyr")
library("lmtest")
library("e1071")
library("popbio")

#Recode outcome variable into 0s and 1s

Musical_instruments_reviews$HelpfulYN <- NA
Musical_instruments_reviews$HelpfulYN[Musical_instruments_reviews$helpful == '[0, 0]'] <- 0
Musical_instruments_reviews$HelpfulYN[Musical_instruments_reviews$helpful == '[1, 1]'] <- 1

# Remove missing data

Reviews <- NaRV.omit(Musical_instruments_reviews)

## Testing Assumptions

### Sample size

mylogit <- glm(HelpfulYN~overall, data=Reviews, family="binomial")

probabilities <- predict(mylogit, type="response")
Reviews$Predicted <- ifelse(probabilities > .05, "pos", "neg")

Reviews$PredictedR <- NA
Reviews$PredictedR[Reviews$Predicted == 'pos'] <- 1
Reviews$PredictedR[Reviews$Predicted == 'neg'] <- 0

Reviews$PredictedR <- as.factor(Reviews$PredictedR)
Reviews$HelpfulYN <- as.factor(Reviews$HelpfulYN)

conf_matrix <- caret::confusionMatrix(Reviews$PredictedR, Reviews$HelpfulYN)
conf_matrix

### Logit Linearity

Reviews1 <- Reviews %>% dplyr::select_if(is.numeric)
predictors <- colnames(Reviews1)

Reviews2 <- Reviews1 %>%
  mutate(logit=log(probabilities/(1-probabilities))) %>%
  gather(key= "predictors", value="predictor.value", -logit)

ggplot(Reviews2, aes(logit, predictor.value)) + 
  geom_point(size=.5, alpha=.5) + 
  geom_smooth(method="loess") + 
  theme_bw() + 
  facet_wrap(~predictors, scales="free_y")

### Multicollinearity - only test if you have multiple IVs

### Independent Errors

plot(mylogit$residuals)

dwtest(mylogit, alternative = "two.sided")

### Screen for Outliers

infl <- influence.measures(mylogit)
summary(infl)

## Examine Output

summary(mylogit)

## Graph it

logi.hist.plot(Reviews$overall, Reviews$HelpfulYN, boxp=FALSE, type="hist", col="gray")





