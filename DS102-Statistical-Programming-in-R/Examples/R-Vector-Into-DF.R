# Turn any vector into a column in R

df = matrix(LakeHuron)

colnames(df)[1] <- c('My_Column')
View(df)

