STEM for Development
Introduction to Statistics & Data Science

Capstone Project: Environmental awareness & carbon footprint analysis.

Deadline: December 13th, 2025.

Members — Group #2:

Khadija Khatoon

Lia Tamara Cedeño Zambrano

Maryam Hampaei

Ofei Harriet Koryo

Instructors:

Charles Opondo

Ruchir Raman

Habibah Tijani

2025

STEM for Development
Introduction to Statistics & Data Science
Group #2: Environmental awareness & carbon footprint analysis

Table of Contents
1.  Introduction & Research Question .............................................................................. 2

2.  Data Summary and Exploratory Analysis ..................................................................... 3

2.1.  Dataset Summary ............................................................................... 3

2.2.  Distributions ...................................................................................... 3

2.3.  Other visualizations and interpretations .............................................. 5

3.  Inferential Testing ....................................................................................................... 7

3.1.  Parametric tests ................................................................................. 7

3.1.  Non-parametric tests ......................................................................... 9

4.  Regression Models & Interpretation .......................................................................... 10

4.1.

Simple Linear Regression (Gas Usage ~ Electricity Usage) .................. 10

4.2.  Multiple Linear Regression (Gas Usage ~ Electricity Usage + Carbon

Footprint) ......................................................................................... 11

4.3.

Logistic Regression (High Emissions ~ Household Size) ..................... 12

5.  Insights — What factors affect Carbon Footprint the most? ....................................... 13

6.  Recommendations — Practical solutions for reducing household emissions ............. 14

1

STEM for Development
Introduction to Statistics & Data Science
Group #2: Environmental awareness & carbon footprint analysis

1.  Introduction & Research Question

Climate change is real and is one of the significant challenges of the 21st century. A major
contributor to climate change is the accumulation of increasing greenhouse gases in the
atmosphere. While industrial activities and government policies are often highlighted as
the main culprits of these excessive carbon emissions into the environment, we cannot
ignore the impact being created and contributing to this pressing problem by our
households.

Household behaviors such as electricity and gas usage, means of transportation, waste
generation, and different consumption patterns all contribute significantly to the global
carbon footprint.

As such, everyday choices we make in our households leave an impact on our carbon
footprint. These choices and habits, such as use of appliances, plastic consumption,
recycling norms, and travel preferences, can either increase or decrease a household’s
overall impact on the environment. However, most remain unaware of this situation and of
their activities influencing their carbon footprint.

The purpose of this study is to examine how household lifestyle and their environmental
practices affect carbon footprint levels. For this, a dataset with 2000 observations
containing diverse variables was analyzed, including household energy use, trash
management, transportation decisions and lifestyle choices, among others.

The crucial insights gathered from this research will also assist us in determining which
activities ought to be given priority because of their detrimental effects on the state of the
global climate. Additionally, this study can help policymakers and environmental
organizations develop methods to raise awareness and encourage sustainable living.

Thus, our research question is: to what extent do household lifestyle and environmental
practices influence carbon footprint levels?

2

STEM for Development
Introduction to Statistics & Data Science
Group #2: Environmental awareness & carbon footprint analysis

2.  Data Summary and Exploratory Analysis

2.1. Dataset Summary

This dataset captures household level environmental behaviors and carbon emissions.
There are twelve variables in the dataset, with five being categorical and seven being
numerical.

•  Categorical:

o  Household_ID
o
Income_Level
o  Waste_Recycling

•  Numerical:

o  Household_Size
o  Electricity_Usage
o  Gas_Usage
o  Plastic_Consumption

2.2. Distributions

o  High_Emissions
o  Environmental_Awareness_Scor

e (ordinal)

o  Public_Transport_Usage
o  Distance_to_Work
o  Carbon_Footprint

The following variables are fairly normally distributed:

1.  Electricity_Usage | slightly skewed right
2.  Gas_Usage | slightly skewed right
3.  Plastic_Consumption | heavily skewed

right

4.  Public_Transport_Usage | lightly skewed

left

5.  Distance_to_Work | heavily skewed right

3

Electricity usage[50, 100](100, 150](150, 200](200, 250](250, 300](300, 350](350, 400](400, 450](450, 500](500, 550](550, 600](600, 650](650, 700](700, 750](750, 800](800, 850](850, 900](900, 950](950, 1000](1000, 1050]Frequency050100150200250300Electricity Usage DistributionHousehold sizeFrequency0100200300400500600700Household size distribution[2.2, 2.56](2.56, 2.92](2.92, 3.28](3.28, 3.64](3.64, 4](4, 4.36](4.36, 4.72](4.72, 5.08](5.08, 5.44](5.44, 5.8](5.8, 6.16](6.16, 6.52](6.52, 6.88](6.88, 7.24](7.24, 7.6](7.6, 7.96](7.96, 8.32](8.32, 8.68](8.68, 9.04](9.04, 9.4](9.4, 9.76](9.76, 10.12](10.12, 10.48](10.48, 10.84](10.84, 11.2](11.2, 11.56]050100150200250300Public transport usage distribution[0.3, 2.6](2.6, 4.9](4.9, 7.2](7.2, 9.5](9.5, 11.8](11.8, 14.1](14.1, 16.4](16.4, 18.7](18.7, 21](21, 23.3](23.3, 25.6](25.6, 27.9](27.9, 30.2](30.2, 32.5](32.5, 34.8](34.8, 37.1](37.1, 39.4](39.4, 41.7](41.7, 44](44, 46.3](46.3, 48.6](48.6, 50.9](50.9, 53.2](53.2, 55.5](55.5, 57.8](57.8, 60.1]050100150200250300Distance to work distribution

STEM for Development
Introduction to Statistics & Data Science
Group #2: Environmental awareness & carbon footprint analysis

The following variables do not follow a normal distribution, after validation with a QQ plot:

1.  Environmental_Awareness_Score (ordinal variable)

2.  Carbon_Footprint

4

[0.1, 1.5](1.5, 2.9](2.9, 4.3](4.3, 5.7](5.7, 7.1](7.1, 8.5](8.5, 9.9](9.9, 11.3](11.3, 12.7](12.7, 14.1](14.1, 15.5](15.5, 16.9](16.9, 18.3](18.3, 19.7](19.7, 21.1](21.1, 22.5](22.5, 23.9](23.9, 25.3](25.3, 26.7](26.7, 28.1](28.1, 29.5](29.5, 30.9](30.9, 32.3](32.3, 33.7](33.7, 35.1](35.1, 36.5](36.5, 37.9](37.9, 39.3](39.3, 40.7](40.7, 42.1]050100150200250300350Plastic consumption distribution[1, 3.4](3.4, 5.8](5.8, 8.2](8.2, 10.6](10.6, 13](13, 15.4](15.4, 17.8](17.8, 20.2](20.2, 22.6](22.6, 25](25, 27.4](27.4, 29.8](29.8, 32.2](32.2, 34.6](34.6, 37](37, 39.4](39.4, 41.8](41.8, 44.2](44.2, 46.6](46.6, 49]050100150200250300Gas usage distribution[1, 1.35](1.35, 1.7](1.7, 2.05](2.05, 2.4](2.4, 2.75](2.75, 3.1](3.1, 3.45](3.45, 3.8](3.8, 4.15](4.15, 4.5](4.5, 4.85](4.85, 5.2](5.2, 5.55](5.55, 5.9](5.9, 6.25](6.25, 6.6](6.6, 6.95](6.95, 7.3](7.3, 7.65](7.65, 8](8, 8.35](8.35, 8.7](8.7, 9.05]0100200300400500600700Distribution of environmental awareness score[0.1, 0.185](0.185, 0.27](0.27, 0.355](0.355, 0.44](0.44, 0.525](0.525, 0.61](0.61, 0.695](0.695, 0.78](0.78, 0.865](0.865, 0.95](0.95, 1.035](1.035, 1.12](1.12, 1.205](1.205, 1.29](1.29, 1.375](1.375, 1.46](1.46, 1.545](1.545, 1.63](1.63, 1.715]0100200300400500600Carbon footprint distribution

STEM for Development
Introduction to Statistics & Data Science
Group #2: Environmental awareness & carbon footprint analysis

3.  Household_Size

2.3. Other visualizations and interpretations

2.3.1.  Distance_to_Work against Public_Transport_Usage (Scatter Plot)

Trend: A negative correlation is observed. That is, as public transport usage increases,
commuting distances tend to decrease.

Interpretation: Households that use public transport more frequently tend to live closer to
their workplaces.

5

-20-10010203040506070024681012Distance to workPublic transport usageDistance_to_Work

STEM for Development
Introduction to Statistics & Data Science
Group #2: Environmental awareness & carbon footprint analysis

2.3.2.  Carbon footprint by income level (Box Plot)

Insight: The median carbon footprint is fairly consistent across income levels. However,
outliers are more prominent in the medium-income group, suggesting some households
emit significantly more.

Interpretation: Income alone may not strongly predict carbon emissions, but medium-
income households might have more variability due to external factors.

2.3.3.   Sum of Public Transport Usage by Income Level (Bar Chart)

Insight: Medium-income households use public transport the most while high-income
households use it the least.

Interpretation: Public transport is more common among medium- and low-income
households. Lower usage in high-income groups could reflect car ownership or longer
commutes.

6

Income levelMediumHighLowCarbon footprint00.20.40.60.811.21.41.61.8Carbon footprint by income level01000200030004000500060007000HighLowMediumPublic transport usageIncome levelSum of Public_Transport_Usage by Income_Level

STEM for Development
Introduction to Statistics & Data Science
Group #2: Environmental awareness & carbon footprint analysis

3.  Inferential Testing

3.1. Parametric tests

The independence and large sample size assumptions are considered as met. Normality
was previously checked in the descriptive statistics section; as such, the variables that are
not normally distributed will not be used for these tests. Homoscedasticity is the one
assumption that will be validated going forward in this section.

3.1.1.  Two-sample t-Test (Gas Usage & Waste Recycling)

Research Question: Is there a significant difference in the Gas Usage (LPG kg) between the people
who recycle and the people who don't?

Before proceeding, we quickly ran a variance test to validate if the variance in data is equal.

Since p = 0.1421, the variance is equal between both groups, and we can proceed. This is
backed up by the boxplot graph, which shows both categories having a similar spread of
data.

Interpretation:

•  H0: The Gas Usage (LPG kg) between people who recycle and those who don't is not

significantly different.

•  H1: The Gas Usage (LPG kg) between people who recycle and those who don't is

significantly different.

The p-value is 0.02418, thus, we reject H0. The Gas Usage (LPG kg) between people who
recycle and people who don't is significantly different.

7

STEM for Development
Introduction to Statistics & Data Science
Group #2: Environmental awareness & carbon footprint analysis

Based on the Bar Chart, it appears the people who recycle waste have a lower average of
gas usage compared to those who do not recycle waste.

3.1.1.  Correlation Test (Electricity Usage & Gas Usage)

Research Question: Is there a significant correlation between Electricity Usage (kWh) and the Gas
Usage (LPG kg)?

Interpretation:

•  H0: There is not a significant correlation between Electricity Usage (kWh) and the

Gas Usage (LPG kg).

•  H1: There is a significant correlation between Electricity Usage (kWh) and the Gas

Usage (LPG kg).

8

STEM for Development
Introduction to Statistics & Data Science
Group #2: Environmental awareness & carbon footprint analysis

With a p-value < 2.2e-16, we reject H0. There is a significant correlation between Electricity
Usage (kWh) and gas usage (LPG kg) in a household.

It's a strong positive correlation, with a correlation coefficient of 0.95. As the Electricity
Usage increases, the Gas Usage increases as well.

3.1. Non-parametric tests

3.1.1.  Chi-square test (Waste Recycling & Income Level)

Research Question: Is there a relationship between Waste Recycling (i.e. if someone recycles
waste or not) and Income Level?

Interpretation:

•  H0: The proportion of people who recycle waste is not significantly different

regarding their income level.

•  H1: The proportion of people who recycle waste is significantly different regarding

their income level.

Since p = 2.2e-16, we reject H0. Thus, the proportion of people who recycle waste is
significantly different regarding their income level.

Based on the contingency table, it appears that the people with a higher income level are
more likely to recycle waste. Conversely, those with a low-income level do not tend to
recycle waste, suggesting a socioeconomic factor in this research.

If we also do a Chi-Squared test comparing the relationship between the Environmental
Awareness Score and Income level, we also get a p = 2.2e-16, further suggesting a
socioeconomic factor coming into play.

9

STEM for Development
Introduction to Statistics & Data Science
Group #2: Environmental awareness & carbon footprint analysis

4.  Regression Models & Interpretation

4.1. Simple Linear Regression (Gas Usage ~ Electricity Usage)

Interpretation:

The coefficient of Electricity Usage is 0.046183, with a p-value < 2.2e-16, making this result
statistically significant.

The linear model formula is as follows:

𝑦  =  𝑚(𝑥) +  𝑏 →  𝑦  =  0.046183(𝑥)   +  0.521428

If a household has no electricity usage, it's expected to use 0.5214 LPG kg of gas per month
on average.

For every kWh consumed per month, the gas usage increases 0.04618 LPG kg as well.

As for whether the intercept has a meaningful interpretation or not, even if it's not strictly
impossible that someone stops using electricity, it's highly unlikely. It's not realistic.

With an 𝑅2 of 0.9084, we can affirm that 90.84% of the data variation in Gas Usage is
explained by the Electricity Usage. By taking the square root, we obtain that the correlation
coefficient (𝑅) is 0.9531, making it a very strong positive correlation.

10

STEM for Development
Introduction to Statistics & Data Science
Group #2: Environmental awareness & carbon footprint analysis

4.2. Multiple Linear Regression (Gas Usage ~ Electricity Usage + Carbon Footprint)

Interpretation:

This model has a p-value < 2.2e-16, making it statistically significant. The linear model
formula is as follows:

𝑦  =   𝑚1(𝑥) +   𝑚2(𝑧) +  𝑏

𝑦  =  0.0456221(𝑥)   +  0.7233755(𝑦)   +  0.4176353

•  𝑥 = Electricity Usage (kWh)
•  𝑧 = Carbon Footprint (tons/year)

If a household has no electricity usage, it's expected to use 0.4176 LPG kg of gas per month
on average. Like the simple linear regression model, the intercept is not meaningful.

For every kWh consumed per month, the gas usage increases 0.0456 LPG kg as well.

For every ton of CO2 emitted per year, the monthly gas usage increases 0.7233 as well.

With an 𝑅2 of 0.909, we can affirm that 90.9% of the data variation in Gas Usage is
explained by the Electricity Usage and the Carbon Footprint. This model is slightly better
than the Single Linear Regression one, although not by much.

By taking the square root, we obtain that the correlation coefficient (𝑅) is 0.9534, making it
a very strong positive correlation between the outcome and both predictor variables.

11

STEM for Development
Introduction to Statistics & Data Science
Group #2: Environmental awareness & carbon footprint analysis

4.3. Logistic Regression (High Emissions ~ Household Size)

We ran a logistic regression model of High emissions (Outcome – dependent variable Y)
against Household size as predictor (independent variable).

Exponentiation:

Interpretation:

𝐻𝑜𝑢𝑠𝑒ℎ𝑜𝑙𝑑 𝑆𝑖𝑧𝑒 = 𝑒0.55737 = 1.746074
𝐼𝑛𝑡𝑒𝑟𝑐𝑒𝑝𝑡 = 𝑒−3.48535 = 0.03064303

Household size has a significant effect with p-value being 2e-16. This means as the
number of household members increases, the probability of being a high emitter increases
too. The linear model formula is as follows:

𝑦  =  0.03064303  +  1.746074(𝑥)

Thus, for every added occupant in a household, the odds of being a high emitter increase
by 1.74 times.

The intercept can't be meaningfully interpreted, as a household without occupants is no
longer a household, but it means that, at 0 occupants, the odds of being a high emitter are
0.03064303.

With a p-value < 2e-16, this is a statistically significant result, which predicts fairly
correctly the odds of larger households being high emitters, as seen on the graph.

12

STEM for Development
Introduction to Statistics & Data Science
Group #2: Environmental awareness & carbon footprint analysis

5.  Insights — What factors affect Carbon Footprint the most?

Studying the dataset, the following key insights were gathered:

•  Gas usage has a strong positive correlation with Electricity Usage. This indicates

that households that use more electricity, on average, also use more gas, leading to
a larger carbon footprint.

•  Certain middle-income households have a large carbon footprint when compared
to different income households. While income alone may not strongly predict a
household’s carbon footprint, it appears that middle-income households are more
likely to have upper outliers due to external, unknown factors.

•  Public transport is used the most by medium-income households followed by low-
income households and then by high-income households. This indicates that high-
income households are more likely to own a personal means of transport.

•  There's a sociopolitical factor at play when it comes to whether a household

recycles waste or not. Higher income/class households recycle more and don't
have as much emissions as those from lower income/class, suggesting a possible
educational angle as well.

•  For every added occupant in a household, the chances of becoming high emitters

increase 1.74 times, or 74%. This also indicates that larger households, on average,
have higher carbon footprints.

13

STEM for Development
Introduction to Statistics & Data Science
Group #2: Environmental awareness & carbon footprint analysis

6.  Recommendations — Practical solutions for reducing household emissions

To reduce household emissions, we recommend implementing the following ideas:

•  Both public and private transport should be optimized as much as possible. Ideally,
government initiatives should strive to improve public transport accessibility and
quality, so people are more likely to use it. As for private transport, educational
campaigns should be enacted, to teach people to optimize and plan trips to reduce
gas emissions (e.g. plan and schedule grocery shopping instead of it being last
minute, coordinate with friends to go in the same car to a destination, etc.).

•  Large households should invest in smart, eco-friendly appliances that can reduce
their carbon footprint, which is elevated by its number of occupants. If feasible,
they should invest in renewable energies as well, such as solar panels, for example.

•  Educational campaigns and recycling initiatives should be enacted at large by the
government to encourage households to recycle and learn how to do it. A great
example of this is Germany’s Deposit Refund System (https://earth.org/waste-
management-germany/), which reimburses money to people when they recycle.

For further research, we recommend the following:

•  The study can be expanded with further socioeconomic variables. In the insights we
mentioned that higher income households recycle more and don't have as much
emissions compared to lower income households. However, this insight should be
tested with other factors related to income level. For example, would this insight
hold up if we consider the amount of commercial airplane trips —which are high
CO2 emitters— a household has in a year? How many airplane trips do these
different income level households have in a year? Are they required by work or are
they recreational trips?

•  Further regression models should be created to determine whether the variables
have non-linear relationships between them. We tested for correlation other
variables in the dataset and some rejected H0 but did not have a good linear model
fit. As we learn more about statistics, we’ll be able to create a model that better fits
these relationships.

14

