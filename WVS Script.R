library(readr)

wvs <- read_csv("WVS Cross-National Wave 7.csv")
dim(wvs)

table(wvs$Q57)
wvs$trust <- NA

wvs$trust[wvs$Q57 == 1] <- 1
wvs$trust[wvs$Q57 == 2] <- 0
table(wvs$trust)

trust.country <- aggregate(x = wvs$trust,
                           by = list(wvs$B_COUNTRY_ALPHA),
                           FUN = mean,
                           na.rm = TRUE)
