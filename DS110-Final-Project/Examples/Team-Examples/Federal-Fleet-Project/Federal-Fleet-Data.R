# DATA SQUIRRELS' FINAL PROJECT - ANALYSIS
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# LOAD LIBRARIES:
#~~~~~~~~~~~~~~~~
library("dplyr")          # For data wrangling.
library("tidyverse")      # For data manipulation and visualization.
library("IDPmisc")        # For addressing missing data.
library("rcompanion")     # Checks for normality assumptions.
library("car")            # If needed to correct for violation in homogeneity of variance.
library("rstatix")        # Provides pipe-friendly R functions for easy statistical analyses.
library("ggplot2")         # For creating 'easily published' ready plots.


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# LOAD DATA:
#~~~~~~~~~~~
library(readxl)
FuelCTY <- read_excel("Federal-Fleet-Data/FuelCTY_M.xlsx")
View(FuelCTY)

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# QUESTION SETUP:
#~~~~~~~~~~~~~~~~
# Does the average fuel expense change significantly over time?

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# DATA WRANGLING:
#~~~~~~~~~~~~~~~~
# DF = FuelCTY
# Catagorical IVs: 'Fuel_Type' and 'Year'
# Continuous DV: 'Fuel_Expense'

# Summary statistics:
FuelCTY %>%
  group_by(Year) %>%
  get_summary_stats(Fuel_Expense, type = "mean")

# Visualization (Box Plot):
FuelCTYbxp <- ggboxplot(FuelCTY, x = "Year", y = "Fuel_Expense", add = "point")  + theme(axis.text.x = element_text(angle = 90))
FuelCTYbxp

# Identify Outliers:
FuelCTY %>%
  group_by(Year) %>%
  identify_outliers(Fuel_Expense)
# 11 outliers identified (7 extreme). Will run ANOVA with and without them to check for significant difference prior to making conclusions.

# TEST ASSUMPTIONS FOR NORMALITY:
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'Fuel_Expense' HISTOGRAM:

plotNormalHistogram(FuelCTY$Fuel_Expense)
#   SKEW: POSITIVE

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# TRANSFORMATION(S):
#~~~~~~~~~~~~~~~~~~~
# 'Squared' (SQRT)
FuelCTY$Fuel_ExpenseSQRT <- sqrt(FuelCTY$Fuel_Expense)
plotNormalHistogram(FuelCTY$Fuel_ExpenseSQRT)
# SKEW: Better, but still positive - Using this option.

# 'Cubed' (CUBE)
#FuelCTY$Fuel_ExpenseCUBE <- FuelCTY$Fuel_Expense ^ 3
#plotNormalHistogram(FuelCTY$Fuel_ExpenseCUBE)
# SKEW: More positive - Not using this option.

# 'Turkeyed' (LOG)
#FuelCTY$Fuel_ExpenseLOG <- log(FuelCTY$Fuel_Expense)
#plotNormalHistogram(FuelCTY$Fuel_ExpenseLOG)
# SKEW: Error in seq.default(min(x), max(x), length = length) : 'from' must be a finite number - Not using this option.

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# HOMOGENEITY OF VARIANCE:
#~~~~~~~~~~~~~~~~~~~~~~~~~
leveneTest(Fuel_ExpenseSQRT ~ Year, data=FuelCTY)
#Levene's Test for Homogeneity of Variance (center = median)
#       Df F value Pr(>F)
#group  13  0.0642      1
#      140   
# MEETS HOMOGENEITY OF VARIANCE.

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# ANALYSIS:
#~~~~~~~~~~
RManova <- aov(Fuel_ExpenseSQRT ~ Year + Error(Fuel_Type), FuelCTY)
summary(RManova)
#Error: Fuel_Type
#Df    Sum Sq   Mean Sq F value Pr(>F)
#Residuals 10 1.071e+10 1.071e+09               
#Error: Within
#Df    Sum Sq Mean Sq F value   Pr(>F)    
#Year       13  60895676 4684283   3.644 6.45e-05 ***
#  Residuals 130 167114061 1285493                     
#---
#  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

RManova <- aov(log(Fuel_Expense) ~ Year, FuelCTY)
summary(RManova)
#Error: Fuel_Type
#Df    Sum Sq   Mean Sq F value Pr(>F)
#Residuals 10 1.071e+10 1.071e+09               
#Error: Within
#Df    Sum Sq Mean Sq F value   Pr(>F)    
#Year       13  60895676 4684283   3.644 6.45e-05 ***
#  Residuals 130 167114061 1285493                     
#---
#  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# POST HOCS:
#~~~~~~~~~~~
# Met Assumption of Homogeneity of Variance
pairwise.t.test(FuelCTY$Fuel_ExpenseSQRT, FuelCTY$Fuel_Type, p.adjust="bonferroni")

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# EXAMINE MEANS:
#~~~~~~~~~~~~~~~
FuelCTYMeans <- FuelCTY %>% group_by(Fuel_Type) %>% summarise(Mean=mean(Fuel_ExpenseSQRT))
FuelCTYMeans

# RESULT:

#   Significant change in total Fuel Expense indicates that the fuel expense has changed for each category over the years. While this is significant, the data is limited and results may not be accurate. It is important to note that Gasoline and Diesel have extremely high values compared to the other fuel types, which may also affect results.  However, it still shows a fuel expense increase over time for most other fuel types.

