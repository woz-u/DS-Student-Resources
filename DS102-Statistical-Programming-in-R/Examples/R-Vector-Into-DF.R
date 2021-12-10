# Turn any vector into a column in R
df = matrix(LakeHuron)

colnames(df)[1] <- c('My_Column')
View(df)



# Turn any vector into a Data Frame in R
first30 <- nhtemp[1:30]
last30 <- nhtemp[31:60]

data <- data.frame(first30, last30)
View(data)