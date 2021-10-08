# Data Wrangling and Visualization

# Load in packages and data

library("dplyr")
library("tidyr")
library("readxl")

babies <- read_excel('babies.xlsx')

# Manipulating Columns and Rows

# Adding in a new column

babies$Footprint <- " "

# Renaming columns

names(babies)[names(babies) == "ParentPhoneNumber"] <- "Phone"

View(babies)

# Combining columns in R

babies2 <- unite(babies, Address, StreetAddress, City, Zipcode, sep = "/")

View(babies2)

# Separating columns in R

babies1 <- separate(babies2, Address, c("StreetAddress", "City", "Zipcode"), sep='/')

View(babies1)

# Subsetting data
# Remember R is 1-indexed

babies6 <- babies[1:5, 1:3]
View(babies6)

# can also subset using column names
# by specifying the column names you want to keep

keeps <- c("Name", "Birthday", "ParentEmail")
babies7 <- babies[keeps]

View(babies7)
