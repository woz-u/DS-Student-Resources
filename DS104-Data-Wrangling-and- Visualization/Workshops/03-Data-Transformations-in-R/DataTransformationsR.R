# Data Transformations in R

## Need the payment, profile, test, and train data

## Transposing Data

paymentT <- t(payment)

## Merging Datasets

UsersData <- merge(payment, profile, by=c("userID"))

## Concatenating Datasets

AllProcessors <- rbind(test,train)

## Aggregating Data 

UsersDataAgg <- aggregate(birth_year~dress_preference, UsersData, mean)