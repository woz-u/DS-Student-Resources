# Loading in Libraries
library("ggplot2") library("dplyr")
# Create a boxplot of the energy rang by genre
ggplot(top10s, aes(x = top.genre, y = nrgy)) + geom_boxplot()
# Which genres have the highest energy rangs, and which have the lowest?
top10s %>% group_by(top.genre) %>% summarise(Mean = mean(nrgy)) %>% arrange(Mean)
#Alaska Indie is the slowest.
top10s %>% group_by(top.genre) %>% summarise(Mean = mean(nrgy)) %>% arrange(desc(Mean))
#French Indie pop is the fastest.
#Find the median energy rang for all the genres for each year.
MedianDF <- top10s %>% group_by(year) %>% summarise(Median = median(nrgy))
#Plot this median value for the years 2010-2019
ggplot(MedianDF, aes(x=year, y=Median)) + geom_point()
#Create a scaer plot of energy level versus danceability for all genres and all years.
ggplot(top10s, aes(x=nrgy, y=dnce)) + geom_point() + geom_smooth(method=lm)
# Is the energy level and danceability correlated?
cor.test(top10s$nrgy, top10s$dnce, method="pearson", use="complete.obs")
#It looks like the higher the energy, the more it's danceable. This looks significantly but slightly correlated, r=.17, p < .05.
#Change the scaer plot to show the points for each year in a different color.
ggplot(top10s, aes(x=nrgy, y=dnce, color=year)) + geom_point() + geom_smooth(method=lm) #Does the relaonship between the two variables change over me?
# No, it does not seem to.
# Do a linear regression for those two variables.
regression <- lm(dnce ~ nrgy, top10s) summary(regression)
# How much variability does the line explain? #It explains 3% of the variability.
# The duraon of the song is in seconds, which is hard for people to understand! Convert it to minutes and then graph it to see how the number of minutes is related to the amount of speech in the song.
DurMin <- top10s %>% mutate(Minutes = dur / 60)
ggplot(DurMin, aes(x=Minutes, y=spch)) + geom_point()
# Create a data frame with just the rows from 2010.
Songs2010 <- top10s %>% filter(year == 2010) Songs2010Subset <- Songs2010[1:31,]
# Create a second data frame with just the rows from 2019
Songs2019 <- top10s %>% filter(year == 2019)
#Use a paired t-test to see if the amount of speech has changed over me.
t.obj <- t.test(Songs2010Subset$spch, Songs2019$spch, paired=TRUE) t.obj