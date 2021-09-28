#DataWrang and Viz L2 - Data Transformations

library(tidyr)
tea1 <- t(tea)
class(tea1)
tea2 <- as.data.frame(tea1)
class(tea2)
# renaming the columns
names(tea2) <- gsub("V", "Year", names(tea2))


## Transformation activity
View(energy)
energy1 <- t(energy)
class(energy1)
energy2 <- as.data.frame(energy1)
class(energy2)
names(energy2) <- gsub("V", "Year", names(energy2))

# Joining datasets in R
# inner
IceSkating1 <- merge(performances, judgesAspectsUnique, by=c("performance_id"))
str(IceSkating1)
#outer
IceSkating2 <- merge(performances, judgesAspectsUnique, by=c("performance_id"), all=TRUE)
IceSkating2 <- merge(performances, judgesAspectsUnique, by.x=c("performance_id"), by.y=c("performance_id"))

# appending in r uses rbind()

# combining in r activity
Zika3 <- rbind(ZikaUS, ZikaColombia)
View(Zika3)

# Aggregating Data
states2 <- aggregate(Cases~State, states, sum)
# can use mean, median, min, max too