# Setup
# Install and load Gapminder package to access data
install.packages("gapminder")

library(gapminder) #to access data
library(ggplot2) #to plot
library(tidyr) #to help explore data - use %>%
library(dplyr) #to help explore data - use arrange()

head(gapminder)
# This allows you to see the different variables, the datatypes they are, and the values of the top 6 rows

str(gapminder)
# The structure function str() allows you to see more information about this dataset

# Variables shows in str(gapminder):
# country - factor w/142 levels
# continent - factor w/5 levels
# year - integer
# lifeExy - numeric
# pop - integer
# gdpPercap - numeric

# To see levels of variables that are *factors*
# To see all countries in dataset - use levels() to show levels of factor country
levels(gapminder$country)

# To see values of numeric and integers
# To see what different values are in the 'year' variable - 
unique(gapminder$year)

# Graphing the Population
ggplot(gapminder, aes(x = factor(year), y = pop)) + geom_boxplot()

# log vertical scale
ggplot(gapminder, aes(x = factor(year), y = pop)) + geom_boxplot() +
  scale_y_log10()

# Filtering and Arranging by Population
# Assign into new variable named gm.big
gm.big <- gapminder %>%
  filter(year == 2007) %>%
  arrange(desc(pop))

# To show top 10 rows of gm.big variable
head(gm.big, n = 10)

# To show bottom 10 rows of gm.big variable
tail(gm.big, n = 10)

# Alternatively! Instead of looking at the bottom 10 rows, you could just change your 
# gm.big variable to arrange by population with the default of ascending, instead 
# of decending.
gm.small <- gapminder %>%
  filter(year == 2007) %>%
  arrange(pop)

head(gm.small, n = 10)

# Determining Outliers in Per Capita GDP
# plot per capita GDP for each year
ggplot(gapminder, aes(x = factor(year), y = gdpPercap)) + geom_boxplot()

# Look at outliers - Lesson 