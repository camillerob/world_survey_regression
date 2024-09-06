# Regression on World Values Survey

Course Project for DTSC 230X: Employed RStudio and data from the World Values Survey to develop multivariate linear and logisitic regression models. The linear model explained over 50% of observed data variance, surpassing benchmark established in prior literature. The robust logistic regression model yielded statistically significant predictor variables.

## Project Description
Using the 2017 - 2021 World Values Survey Wave 7, the objective was to understand major determinants of generalized trust. Linear Regression was used to compare the levels of generalized trust between nations, while Logistic Regression was implemented to determine factors of generalized trust within individuals of a single nation. The basis of trust derives from the survey question: "Generally speaking, would you say that most people can be trusted or that you need to be very careful in dealing with people?"

### Linear Regression:
Based on previous literature, three predictor variables were collected and aggregated to predict the level of trust in each country. On this level, each observation is a country.

**Predictor Variables:**
- Income Inequality (Gini Index)
- GDP per Capita
- Protestantism (by percentage)

**Response Variable:**
- Trust (by percentage of people who answered 'yes')

### Logistic Regression:
The relationships individual factors have with trust is shown through the country lens of Germany. Each observation is a survey participant from Germany, and the predictor variables are from other questions asked in the survey.

**Predictor Variables:**
- Financial Satisfaction ("How satisfied are you with the financial situation of your household?")
- Belief in the Importance of Democracy ("How important is it for you to live in a country that is governed democratically?")
- View of Immigrants ("Now we would like to know your opinion about the people from other countries who come to live in [your country] - the immigrants. How would you evaluate the impact of these people on the development of [your country]?")

In testing robustness, Income Inequality (a scale of "incomes should be made more equal" to "there should be greater incentives for individual effort") and Level of Education ("What is the highest educational level that you...have attained?") are also utilized.

**Reponse Variable:**
- Trust (binary 0/1 for yes/no)

## Reference
Delhey, Jan, and Kenneth Newton. “Predicting Cross-National Levels of Social Trust: Global
Pattern or Nordic Exceptionalism?” European Sociological Review, vol. 21, no. 4, 2005,
pp. 311–27.

Haerpfer, Christian, et al. “World Values Survey: Round Seven – Country-Pooled Datafile.” JD
Systems Institute & WVSA Secretariat, 2020, Madrid, Spain & Vienna, Austria,
doi.org/10.14281/18241.1
