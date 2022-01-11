#### INSTALL PACKAGES ####
install.packages("DAAG")
install.packages(c("magic", "schoolmath"), dependencies=TRUE)

#### USE PACKAGES ####
library(DAAG)
library(magic)
library(schoolmath)

range(fossilfuel$carbon)

fossilfuel <- data.frame(year=Year, carbon=Carbon)

fossilfuel

# The <- is a left angle bracket (<) followed by a minus sign (-). 
# It means “the values on the right are assigned to the name on the left”.
Year <- c(1800, 1850, 1900, 1950, 2000)

Year

# let's assign the carbon numbers to Carbon
Carbon <- c(8, 54, 534, 1630, 6611)

Carbon

## Now let's plot Carbon as a function of Year
plot(Carbon~Year, pch=16)

## 4 cities
fourcities <- c("Toronto", "Canberra", "New York", "London")

fourcities

## display in alphabetical order
sort(fourcities)

## Find the number of characters in "Toronto"
nchar("Toronto")

## Find the number of characters in all four city names at once
nchar(fourcities)

# R will give numerical or graphical data summaries The data frame cars (datasets package) has columns (variables) speed and dist. 
# Typing summary(cars) gives summary information on its columns:
summary(cars)

# Thus, the range of speeds (first column) is from 4 mph to 25 mph, 
# while the range of distances (second column) is from 2 feet to 120 feet.

hist(cars$speed)

str(cars)
?cars
?fossilfuel

#DAAG::

# Examples of vectors are
c(2, 3, 5, 2, 7, 1)

#example of booleans
c(T, F, F, F, T, T, F)

#example of strings
c("Canberra", "Sydney", "Canberra", "Sydney")

# The function c(), used to join numbers together to form a vector, is widely useful. 
# It may be used to concatenate any combination of vectors and vector elements. 
# In the following, we form numeric vectors x and y, that we then concatenate to 
# form a vector z:

# x holds values 2, 3, 5, 2, 7, 1
x <- c(2, 3, 5, 2, 7, 1)

# w will hold 11, 15, 12
w <- c(11, 15, 12)

# let's concatenate x and w
t <- c(x, w)

# t will equal 2, 3, 5, 2, 7, 1, 11, 15, 12
t

# what if we concatenate a list/array of strings
y = c("A", "B", "C")

# lets add a list of numbers and letters together
z <- c(x, y)

z
# and it turns into a list of strings now "2" "3" "5" "2" "7" "1" "A" "B" "C"

# List all functions where "sort" is part of the name
apropos("sort")
