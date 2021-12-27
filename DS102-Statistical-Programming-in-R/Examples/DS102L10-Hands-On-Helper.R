#Statistical Programming in R
#Final Project Example

#Every time you see a hashtag (number sign # like this), this is called commenting.
#We want to comment every time we are explaining what we are doing, ideas included, 
#or even code that you might/might now use.

#Okay, let's get started.

#Import/Loading in Libraries (first step by the way)
library("ggplot2")
library("dplyr")

###Normally, the next step would be to import a data set. There are a number of ways you can do that. 
#The first way, Under the environment tab, you can import data set From Text(base or readr). 
#The second way is by going to the File, Import Dataset, From Text (base or readr), browse, 
#pick your .csv or .xlsx data set file, and hit ok. Check headings to yes ALWAYS.
#The third way is to simply code it in here like this (without the hash tag of course):
#earthquakes <- read.csv("~/R Files/earthquakes.csv")
#Then, you can view your data like this: View(earthquakes)
#But today, we are using a built-in data set from R Studio itself, so we won't be importing any datasets.
#To see a list of preloaded data, simply code:
data()
# When you run it, you will see a list of data sets.

#Let's use mtcars built-in data set
#Let's view our data set
View(mtcars)
#To further explore your built-in data set, you code the following to see what each variable means, 
#the description of the data frame along with the format (numeric in this case).
?mtcars
#You will see in the bottom right all of that information.

#Create a boxplot of the cylinder and horsepower
ggplot(mtcars, aes(x= cyl, y= hp)) + geom_boxplot()
#the boxplot displays different cylinders by horsepower.

#a WARNING message shows up! It's just a warning. (see below to correct it)
#In this case we are going to change cyl into a factor (it was numeric) per the warning.
mtcars$cyl <- as.factor(mtcars$cyl) 

#Okay, let's try the plot again using that same plot above!
ggplot(mtcars, aes(x= cyl, y= hp)) + geom_boxplot()
#What a difference! We see cylinders 4, 6, and 8 by horsepower 100-300.
#We immediately see that 4 cylinders is the lowest in horsepower, while 8 cylinders has the highest, and 6 is median.

#2. Find the median horsepower over all the qsec. Plot this median value. What can you say about the median qsec by horsepower?
medianHP <- mtcars %>% select(hp, qsec) %>% group_by(hp) %>% summarise(medianQSEC = median(qsec))
View(medianHP)
ggplot(medianHP, aes(x=hp, y=medianQSEC)) + geom_point()
#We can observe that the lower the horsepower, the longer it takes to drive a quarter of a mile.

#3. Create a scatter plot of horsepower vs car weight. 
#Is the horsepower and the car weight positively correlated, negatively correlated, or uncorrelated? 
#Explain why your answer would be expected.
ggplot(mtcars, aes(x=hp, y=wt)) + geom_point()
# We can see that horsepower and weight are positively correlated. As the hp increases, so does the weight.
# This is expected, as higher weight cars would require more horsepower to drive.

#5.Change your scatter plot to show the points for each horsepower in a different color. 
# Does the relationship between the horsepower and weight change by fuel efficiency?
ggplot(mtcars, aes(x=hp, y=wt, color = mpg)) + geom_point()

#6. Do a linear regression for these two variables. How much variability does the line explain?
carslm <- lm(wt ~ hp, mtcars)
summary(carslm)
# Estimate for hp: For each unit increase in horsepower, the weight will increase by 0.009 units.
# Pr(>|t|) column shows the significance. The p-value is less than 0.05, so this correlation is significant.
# Adjusted R-squared: 0.4151, so horsepower explains 41.5% of weight. 
# The adjusted R-squared value also has a p-value <0.05, so this is also significant.

#7. Let's adjust the horsepower by the weight by dividing the horsepower variable by the weight variable. 
#Create an adjusted horsepower weight for each row, then repeat Part 3 using this adjusted horsepower.
mtcars2 <- mtcars %>% mutate(HPadj = hp / wt)
ggplot(mtcars2, aes(x=HPadj, y=wt)) + geom_point()
ggplot(mtcars2, aes(x=HPadj, y=wt, color = hp)) + geom_point()
carslm2 <- lm(wt ~ HPadj, mtcars2)
summary(carslm2)


#8.Create a data frame with 2 carburetors. Create a second data frame with just with 4 carburetors. 
#Then, from each of these data frames, get a vector of the number of carburetors per weight. 
#Use a paired t-test to see if the weight of 2 carburetors are significantly different than the weight of 4 carburetors.
Carb2 <- mtcars %>% filter(carb == 2)
Carb4 <- mtcars %>% filter(carb == 4)

CWeight2 <- Carb2$wt
CWeight4 <- Carb4$wt

# TWO SAMPLES
# H0 = mean 1 == mean 2
# H1 = mean 1 != mean 2

t.obj <- t.test(CWeight2, CWeight4, paired=TRUE)
t.obj
#The p-value is less than 0.05, which means it is significance between the weight of cars with 2 and 4 carburetors!

library(reshape2)

weights <- data.frame(CWeight2 = CWeight2, CWeight4 = CWeight4)

ff <- melt(weights)

ggplot(ff) + geom_boxplot(aes(x = variable, y = value)) +
  xlab("2 VS. 4") + ylab("Weight") + ggtitle("Weights: 2 VS. 4")