# Turn any vector into a column in R Example 1
df = matrix(LakeHuron)

colnames(df)[1] <- c('My_Column')
View(df)



# Turn any vector into a Data Frame in R
head.matrix(nhtemp)

first25 <- nhtemp[1:25]
last25 <- nhtemp[36:60]

data <- data.frame(first25, last25)
View(data)