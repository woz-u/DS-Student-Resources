# Two Proportion Testing
# You will use a two proportion z test when you want to compare the proportions of two different categories to the whole.
# 
# Two Proportion Testing in R
# As an example, you will go back to your Easter basket full of candy, which is filled with both jelly beans and chocolate eggs. Each are available in several colors, and With a two proportion test, you can determine whether the proportions of those candies to the whole differ, as well as whether the proportion of the pink candies differ.
# 
# There are 15 jelly beans and 28 chocolate eggs. Of the jelly beans, 7 are pink. Of the chocolate eggs, 12 are pink.
# 
# You can again use the function prop.test() in R to test whether these are similar. You'll use the argument x= to feed in a vector of your first two proportions. These will be the smaller part of the whole. In this case, it's the number of candies from each type that are pink.
# 
# Then you will feed in a argument of n= with the vector that includes the values of the total number of each type of candy. Lastly, you'll use the argument alternative= to choose whether you want a one-tailed or two-tailed test. Just like the one proportion test, you can use the statement of two.sided, greater, and less which would be the possibilities for a one-tailed test.

prop.test(x = c(7, 12), n = c(15, 28),
          alternative = "two.sided")

# The most important part of this output is the p-value. In this case, your p-value is 1.0,
# which means that the sample gives evidence there is not a significant difference in the proportions of
# pink in either type of candy.

