
# CAPSTONE PROJECT - GROUP #2


# 0. INITIAL IMPORTS AND PREPARING THE DATASET
library(ggplot2)

# setwd("C:/Users/Lia/Desktop/Introduction to Statistics/Project")

data <- read.csv("Environmental_Awareness_02.csv",
                        header = 1)

str(data)
summary(data)


# 1. DESCRIPTIVE STATISTICS & VISUALIZATIONS

# Electricity Usage
mean(data$Electricity_Usage) # 396.599
median(data$Electricity_Usage) # 370.05
sd(data$Electricity_Usage) # 178.7078
range(data$Electricity_Usage) # 50.0 to 1020.3

hist(data$Electricity_Usage,
     main = "Frequency Distribution of Electricity Usage (kWh)",
     xlab = "Electricity Usage (kWh)",
     col = "darkolivegreen3",
     border = "white")

ggplot(data, aes(x = Electricity_Usage)) +
  geom_histogram(binwidth = 70, fill="#69b3a2", color="#e9ecef", alpha=0.9) + 
  ggtitle("Frequency Distribution of Electricity Usage (kWh)")

# Follows a normal distribution, slightly skewed right

ggplot(data, aes(x = Income_Level, y = Electricity_Usage)) +
  geom_bar(stat = "identity", fill="#69b3a2", alpha=0.9) + 
  ggtitle("Bar Chart of Electricity Usage (kWh)")
  
ggplot(data, aes(x=Gas_Usage, y=Electricity_Usage)) + 
  geom_point(color="#e9ecef", fill = "#69b3a2", shape = 21, alpha=0.5) +
  ggtitle("Scatterplot of Electricity Usage (kWh)")

qqnorm(data$Electricity_Usage)
qqline(data$Electricity_Usage, col = "red") # Data is normally distributed.


# Household Size
mean(data$Household_Size) # 3.9465
median(data$Household_Size) # 4
sd(data$Household_Size) # 1.683168
range(data$Household_Size) # 1 to 8

hist(data$Household_Size,
     main = "Frequency Distribution of Household Size",
     xlab = "Household Size (# occupants)",
     col = "darkolivegreen3",
     border = "white")

ggplot(data, aes(x = Household_Size)) +
  geom_histogram(binwidth = 1, fill="#69b3a2", color="#e9ecef", alpha=0.9) + 
  ggtitle("Frequency Distribution of Household Size")

# Follows a normal distribution, slightly skewed right

qqnorm(data$Household_Size)
qqline(data$Household_Size, col = "red") # Data is NOT normally distributed.


# Gas Usage
mean(data$Gas_Usage) # 18.8377
median(data$Gas_Usage) # 17.6
sd(data$Gas_Usage) # 8.659259
range(data$Gas_Usage) # 1 to 49

hist(data$Gas_Usage,
     main = "Frequency Distribution of Gas Usage (LPG kg)",
     xlab = "Gas Usage (LPG kg)",
     col = "darkolivegreen3",
     border = "white")

ggplot(data, aes(x = Gas_Usage)) +
  geom_histogram(binwidth = 3, fill="#69b3a2", color="#e9ecef", alpha=0.9) + 
  ggtitle("Frequency Distribution of Gas Usage (LPG kg)")

# Follows a normal distribution, slightly skewed right

qqnorm(data$Gas_Usage)
qqline(data$Gas_Usage, col = "red") # Data is normally distributed.


# Plastic_Consumption
mean(data$Plastic_Consumption) # 6.61885
median(data$Plastic_Consumption) # 5.4
sd(data$Plastic_Consumption) # 4.898741
range(data$Plastic_Consumption) # 0.1 to 41.9

hist(data$Plastic_Consumption,
     main = "Frequency Distribution of Plastic Consumption (kg)",
     xlab = "Plastic Consumption (kg)",
     col = "darkolivegreen3",
     border = "white")

ggplot(data, aes(x = Plastic_Consumption)) +
  geom_histogram(binwidth = 2, fill="#69b3a2", color="#e9ecef", alpha=0.9) + 
  ggtitle("Frequency Distribution of Plastic Consumption (kg)")

# Follows a moderately normal distribution, heavily skewed right.
# Overall, the plastic consumption tends to be low among the sample data.

qqnorm(data$Plastic_Consumption)
qqline(data$Plastic_Consumption, col = "red")
# Does not comply with the Q-Q plot, as such, this does not comply with the
# assumption of normality.


# Public Transport Usage
mean(data$Public_Transport_Usage) # 6.8306
median(data$Public_Transport_Usage) # 6.9
sd(data$Public_Transport_Usage) # 1.28585
range(data$Public_Transport_Usage) # 2.2 to 11.4

hist(data$Public_Transport_Usage,
     main = "Frequency Distribution of Public Transport Usage (trips/week)",
     xlab = "Public Transport Usage (trips/week)",
     col = "darkolivegreen3",
     border = "white")

ggplot(data, aes(x = Public_Transport_Usage)) +
  geom_histogram(binwidth = 1, fill="#69b3a2", color="#e9ecef", alpha=0.9) + 
  ggtitle("Frequency Distribution of Public Transport Usage (trips/week)")

# Follows a moderately normal distribution, lightly skewed left. 
# Data is tightly concentrated at the mean.

qqnorm(data$Public_Transport_Usage)
qqline(data$Public_Transport_Usage, col = "red") # Data is normally distributed.


# Distance to Work
mean(data$Distance_to_Work) # 11.7251
median(data$Distance_to_Work) # 10
sd(data$Distance_to_Work) # 8.1981
range(data$Distance_to_Work) # 0.3 to 60.0

hist(data$Distance_to_Work,
     main = "Frequency Distribution of Distance to Work (km)",
     xlab = "Distance to Work (km)",
     col = "darkolivegreen3",
     border = "white")

ggplot(data, aes(x = Distance_to_Work)) +
  geom_histogram(binwidth = 4, fill="#69b3a2", color="#e9ecef", alpha=0.9) + 
  ggtitle("Frequency Distribution of Distance to Work (km)")

# Follows a moderately normal distribution, heavily skewed right.
# Overall, the average commuting distance tends to be low among the sample data.

qqnorm(data$Distance_to_Work)
qqline(data$Distance_to_Work, col = "red")
# Does not comply with the Q-Q plot, as such, this does not comply with the
# assumption of normality.


# Environmental Awareness Score
mean(data$Environmental_Awareness_Score) # 5.4295
median(data$Environmental_Awareness_Score) # 5
sd(data$Environmental_Awareness_Score) # 1.248523
range(data$Environmental_Awareness_Score) # 1 to 9

hist(data$Environmental_Awareness_Score,
     main = "Frequency Distribution of Environmental Awareness Score",
     xlab = "Environmental Awareness Score",
     col = "darkolivegreen3",
     border = "white")

ggplot(data, aes(x = Environmental_Awareness_Score)) +
  geom_histogram(binwidth = 1, fill="#69b3a2", color="#e9ecef", alpha=0.9) + 
  ggtitle("Frequency Distribution of Environmental Awareness Score")

qqnorm(data$Environmental_Awareness_Score)
qqline(data$Environmental_Awareness_Score, col = "red")

# While it would appear to follow a textbook normal distribution, this variable
# is a ranking; as such, it's not numerical, but rather ordinal. 
# This is not normally distributed, despite the apparent bell-shape.


# Carbon Footprint
mean(data$Carbon_Footprint) # 0.45118
median(data$Carbon_Footprint) # 0.409
sd(data$Carbon_Footprint) # 0.3074006
range(data$Carbon_Footprint) # 0.100 to 1.687

hist(data$Carbon_Footprint,
     main = "Frequency Distribution of Carbon Footprint (CO2 tons/year)",
     xlab = "Carbon Footprint (CO2 tons/year)",
     col = "darkolivegreen3",
     border = "white")

ggplot(data, aes(x = Carbon_Footprint)) +
  geom_histogram(binwidth = 0.1, fill="#69b3a2", color="#e9ecef", alpha=0.9) + 
  ggtitle("Frequency Distribution of Carbon Footprint (CO2 tons/year)")

# Not sure if this classifies as a normal distribution or not. It'll have to be
# validated with tests later. But it's heavily skewed right. Most of the emissions
# range from 0.100 to 0.7585 (mean + 1 SD).

qqnorm(data$Carbon_Footprint)
qqline(data$Carbon_Footprint, col = "red")

# Will ask the instructors about this. I'm still unsure if it's normally
# distributed or not. But in the meanwhile, I'll avoid it for parametric tests
# and use it for non-parametric ones instead.



# 2. HYPOTHESIS OR INFERENTIAL TESTS
# ------------------------------------------------------------------------
# 2.1 - PARAMETRIC TESTS
# The independence and large sample size assumptions are considered as met.
# Normality was previously checked in the descriptive statistics section; the
# variables that are not normally distributed will not be used for these tests.
# Homocedasticity is the one assumption that will be validated going forward.


# -- TWO-SAMPLE t-TEST --
# Research Question:
#   Is there a significant difference in the Gas Usage (LPG kg) 
#   between the people who recycle and the people who don't?

# We quickly run a variance test to validate if the variance in data is equal.
var.test(Gas_Usage ~ Waste_Recycling, data = data) 

boxplot(Gas_Usage ~ Waste_Recycling, data = data,
        main = "Gas Usage (LPG kg) by people who recycle and people who do not recycle",
        xlab = "Do you recycle waste?",
        ylab = "Gas Usage (LPG kg)",
        col = c("lightblue", "orange"))

# Since p = 0.1421, the variance is equal between both groups and we can proceed.
# This is backed up by the boxplot graph, which shows both categories having 
# a similar spread of data.

t.test(formula = Gas_Usage ~ Waste_Recycling, data = data, var.equal = TRUE)

# Interpretation: 
# * H0: The Gas Usage (LPG kg) between people who recycle and those who don't 
#   is not significantly different.
# * H1: The Gas Usage (LPG kg) between people who recycle and those who don't 
#   is significantly different.

# The p-value is 0.02418, thus, we reject H0. 
# The Gas Usage (LPG kg) between people who recycle and people who don't
# is significantly different.

ggplot(data, aes(x = Waste_Recycling, y = Gas_Usage)) +
  geom_bar(stat = "identity", fill="#69b3a2", alpha=0.9) + 
  ggtitle("Bar Chart of Gas Usage (LPG kg)")

# Based on the Bar Chart, it appears the people who recycle waste have a 
# lower mean of gas usage compared to those who do not recycle waste. 

# -- CORRELATION TEST --
# Research Question: 
#   Is there a significant correlation between Electricity Usage (kWh)
#   and the Gas Usage (LPG kg)?

ggplot(data, aes(x=Electricity_Usage, y=Gas_Usage)) + 
  geom_point(color="#e9ecef", fill = "#69b3a2", shape = 21, alpha=0.5) +
  geom_smooth(method = "lm", se = FALSE) + 
  ggtitle("Electricity Usage (kWh) vs Gas Usage (LPG kg)")

cor.test(
  data$Electricity_Usage,
  data$Gas_Usage)

# Interpretation: 
# * H0: There is not a significant correlation between Electricity Usage (kWh) 
#   and the Gas Usage (LPG kg).
# * H1: There is a significant correlation between Electricity Usage (kWh) 
#   and the Gas Usage (LPG kg)

# With a p-value < 2.2e-16, we reject H0. There is a significant correlation 
# between Electricity Usage (kWh) and the Gas Usage (LPG kg) in a household.

# It's a strong positive correlation, with a correlation coefficient 
# of 0.95. As the Electricity Usage increases, the Gas Usage increases as well.


# 2.2 - NON-PARAMETRIC TESTS
# -- CHI-SQUARE TEST --

# Research Question: 
#   Is there a relationship between Waste Recycling (ie. if someone recycles waste 
#   or not) and Income Level?

cs_table <- table(data$Waste_Recycling, data$Income_Level)
cs_table

chisq.test(cs_table)

# Interpretation: 
# * H0: The proportion of people who recycle waste is not significantly different
#   in regards to their income level.
# * H1: The proportion of people who recycle waste is significantly different
#   in regards to their income level.

# Since p = 2.2e-16, we reject H0. Thus, the proportion of people who 
# recycle waste is significantly different in regards to their income level.

# Based on the contingency table, it appears that the people with a higher income
# level are more likely to recycle waste. Conversely, those with a low income
# level do not tend to recycle waste, suggesting a socioeconomic factor in this 
# research.

# If we also do a Chi-Squared test comparing the relationship between the
# Environmental Awareness Score and Income level, we also get a p = 2.2e-16, 
# further suggesting a socioeconomic factor coming into play.
cs_table2 <- table(data$Environmental_Awareness_Score, data$Income_Level)
cs_table2

chisq.test(cs_table2)


# ========================================================================
# 3. REGRESSION MODELS
# ------------------------------------------------------------------------
# 3.1 - Simple Linear Regression

# EXTRA - Linear model
model1 <- lm(Gas_Usage ~ Electricity_Usage, data = data)
summary(model1)


ggplot(data, aes(x=Electricity_Usage, y=Gas_Usage)) + 
  geom_point(color="#e9ecef", fill = "#69b3a2", shape = 21, alpha=0.5) +
  geom_smooth(method = "lm", se = TRUE) + 
  ggtitle("Electricity Usage (kWh) vs Gas Usage (LPG kg)")

# Interpretation: 
# The coefficient of Electricity Usage is 0.046183, with a p-value < 2.2e-16, 
# making this result statistically significant. 

# The linear model formula is as follows:
# y = m(x) + b -> y = 0.046183(x) + 0.521428

# If a household has no electricity usage, it's expected to use 0.5214 LPG kg
# of gas per month on average. 

# For every kWh consumed per month, the gas usage increases 0.04618 LPG kg as well.

# As for whether the intercept has a meaningful interpretation or not, 
# even if it's not strictly impossible that someone stops using electricity,
# it's highly unlikely. It's not really realistic 

# With an R2 of 0.9084, we can affirm that 90.84% of the data variation in
# Gas Usage is explained by the Electricity Usage.



# 3.2 - Multiple Linear Regression
model2 <- lm(Gas_Usage ~ Electricity_Usage + Carbon_Footprint, data = data)
summary(model2)

# Interpretation: 
# This model has a p-value < 2.2e-16, making it statistically significant. 

# The linear model formula is as follows:
# y = m_1(x) + m_2(z) + b -> y = 0.0456221(x) + 0.7233755(y) + 0.4176353
#   where:
#     x = Electricity Usage (kWh)
#     z = Carbon Footprint (tons/year)

# If a household has no electricity usage, it's expected to use 0.4176 LPG kg
# of gas per month on average. 

# For every kWh consumed per month, the gas usage increases 0.0456 LPG kg as well.
# For every ton of CO2 emitted per year, the monthly gas usage increases 0.7233 as well.

# As for whether the intercept has a meaningful interpretation or not, 
# even if it's not strictly impossible that someone stops using electricity,
# it's highly unlikely. As such, it's not a realistic value.

# With an R2 of 0.909, we can affirm that 90.9% of the data variation in
# Gas Usage is explained by the Electricity Usage and the Carbon Footprint.

# This model is slightly better than the Single Linear Regression one, although
# not by much.



# 3.3 - Logistic Regression (using High_Emissions)

# Example Question:
# Predict the probability that a person is a High Emitter based on Household Size
data$High_Emissions = as.factor(data$High_Emissions)
str(data)

model3 <- glm(High_Emissions ~ Household_Size, data = data, family = binomial)
summary(model3)

exp(0.55737) # 1.746074 , Household_Size
exp(-3.48535) # 0.03064303 , Intercept

data$pred_prob <- predict(model3, type = "response")

ggplot(data, aes(x = Household_Size, y = pred_prob)) +
  geom_point(color = "#e9ecef", fill = "#69b3a2", shape = 21, alpha=0.5) +
  geom_smooth(method = "loess", se = TRUE) + 
  ggtitle("Predicted Probability of High Emissions by Household Size") + 
  xlab("Household Size (# occupants)") +
  ylab("Predicted Probability of High Emissions")

# Interpretation:
# The linear model formula is as follows:
#   log(y) = -3.48535 + 0.55737(x)

# To interpret the results, we need to exponentiate them. Thus:
#   y = 0.03064303 + 1.746074(x)

# For every added occupant in a household, the odds of being a high emitter increase
# by 1.74 times. 

# The intercept can't be meaningfully interpreted, as a household
# without occupants is no longer a household, but it means that, at 0 occupants
# the odds of being a high emitter are -3.48.

# With a p-value < 2e-16, this is a statistically significant result, which
# predicts fairly correctly the odds of being a high emitter, as seen on the graph.
