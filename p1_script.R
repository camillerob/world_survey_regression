# Load libraries
library(readr)

# Import .csv file in this project that has the WVS wave 7 data
wvs <- read_csv("WVS Cross-National Wave 7.csv")

# Inspect this new data frame
dim(wvs)
head(wvs, 10)

# Tabulate our variable of interest, which is Q57
table(wvs$Q57)

# Create a new variable. Name this variable "trust.general". Create this variable so that all values are NA
wvs$trust <- NA

# Change this variable so that that it takes a value of 1 if Q57 has a value of 1, and a value of zero if Q57 has a value of 2
wvs$trust[wvs$Q57 == 1] <- 1
wvs$trust[wvs$Q57 == 2] <- 0

# Check your work
table(wvs$Q57)
table(wvs$trust)

# The code below creates a new data frame, named "trust.country", that calculates the percentage of people in each country who answered "most people can be trusted:
trust.country <- aggregate(x = wvs$trust, 
                              by = list(wvs$B_COUNTRY_ALPHA), 
                              FUN = mean, 
                              na.rm = TRUE)

# View this new data frame:
View(trust.country)

# Let's create a more meaningful name for the column that identifies the country:
trust.country$country <- trust.country$Group.1
head(trust.country, 10)

# Rename the trust variable
trust.country$trust <- trust.country$x
head(trust.country, 10)
