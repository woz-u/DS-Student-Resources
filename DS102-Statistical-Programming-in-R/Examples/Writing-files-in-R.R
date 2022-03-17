library(readr)
LakeHuron <- read_csv("../Data/LakeHuron.csv")
View(LakeHuron)

# Change this to your Download Directory
setwd("C:/Users/matth/Downloads") # <------

## Example 1 ##
## Saving an R object in RData format ##
save(LakeHuron, file = "LakeHuron.rda")


## Example 2 ##
## Saving an R object to excel ##

# if xlsx is not installed
install.packages("xlsx")


# Saving an R object to excel
library("xlsx")
write.xlsx(LakeHuron, file = "LakeHuron.xlsx")
