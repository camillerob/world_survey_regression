library(readr)
library(ggplot2)
library(gtsummary)

# Read data into trust variable
trust_data <- read_csv("Research Data.csv")

# Normalize the data values
trust_data$Trust2 <- trust_data$Trust * 100
trust_data$GDP_Per_Capita2 <- trust_data$GDP_Per_Capita/1000

# Income Inequality: Viz and Linear Regression Model
ggplot(trust_data, aes(x = Income_Inequality, y = Trust2)) + theme_minimal() + 
  geom_point(color = "darkolivegreen") +
  labs(title = "Figure 1: Relationship Between Trust and Income Inequality",
       x = "Gini Coefficient", y = "Trust")
income_model <- lm(Trust2 ~ Income_Inequality, data = trust_data)
summary(income_model)

# GDP Per Capita: Viz and Linear Regression Model
ggplot(trust_data, aes(x = GDP_Per_Capita2, y = Trust2)) + theme_minimal() + 
  geom_point(color = "darkolivegreen") + 
  labs(title = "Figure 2: Relationship Between Trust and GDP Per Capita",
       x = "GDP Per Capita", y = "Trust")
wealth_model <- lm(Trust2 ~ GDP_Per_Capita2, data = trust_data)
summary(wealth_model)

# Protestantism: Viz and Linear Regression Model
ggplot(trust_data, aes(x = Protestantism, y = Trust2)) + theme_minimal() +
  geom_point(color = "darkolivegreen") + 
  labs(title = "Figure 3: Relationship Between Trust and Protestantism",
       x = "Protestantism by Percentage", y = "Trust")
protestant_model <- lm(Trust2 ~ Protestantism, data = trust_data)
summary(protestant_model)

# Multiple Linear Regression Model
trust_model <- lm(Trust2 ~ Income_Inequality + GDP_Per_Capita2 + Protestantism, data = trust_data)
summary(trust_model)

tbl_regression(trust_model, intercept = TRUE, conf.level = FALSE, conf.int = FALSE)
