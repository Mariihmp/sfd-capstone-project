# Environmental Awareness & Carbon Footprint Analysis

**STEM for Development — Introduction to Statistics & Data Science**  
Capstone Project | Group #2 | 2025

**Members:** Khadija Khatoon, Lia Tamara Cedeño Zambrano, Maryam Hampaei, Ofei Harriet Koryo  
**Instructors:** Charles Opondo, Ruchir Raman, Habibah Tijani

---

## Table of Contents

1. [Introduction & Research Question](#1-introduction--research-question)
2. [Data Summary and Exploratory Analysis](#2-data-summary-and-exploratory-analysis)
   - [2.1 Dataset Summary](#21-dataset-summary)
   - [2.2 Distributions](#22-distributions)
   - [2.3 Other Visualizations and Interpretations](#23-other-visualizations-and-interpretations)
3. [Inferential Testing](#3-inferential-testing)
   - [3.1 Parametric Tests](#31-parametric-tests)
   - [3.2 Non-parametric Tests](#32-non-parametric-tests)
4. [Regression Models & Interpretation](#4-regression-models--interpretation)
   - [4.1 Simple Linear Regression](#41-simple-linear-regression-gas-usage--electricity-usage)
   - [4.2 Multiple Linear Regression](#42-multiple-linear-regression-gas-usage--electricity-usage--carbon-footprint)
   - [4.3 Logistic Regression](#43-logistic-regression-high-emissions--household-size)
5. [Insights](#5-insights--what-factors-affect-carbon-footprint-the-most)
6. [Recommendations](#6-recommendations--practical-solutions-for-reducing-household-emissions)

---

## 1. Introduction & Research Question

Climate change is one of the defining challenges of the 21st century. A major driver is the accumulation of greenhouse gases in the atmosphere. While industrial activity and government policy are often cited as the primary culprits, household-level behavior is a significant and frequently overlooked contributor.

Electricity and gas usage, transportation choices, waste generation, and consumption patterns all add meaningfully to the global carbon footprint. Everyday decisions — appliance use, plastic consumption, recycling habits, travel preferences — can either increase or decrease a household's environmental impact. Yet most households remain unaware of this.

This study examines how household lifestyle and environmental practices affect carbon footprint levels, using a dataset of 2,000 observations covering household energy use, waste management, transportation, and lifestyle choices. Findings are intended to help identify which behaviors matter most, and to inform policymakers and environmental organizations working on awareness and sustainable living initiatives.

**Research question:** To what extent do household lifestyle and environmental practices influence carbon footprint levels?

---

## 2. Data Summary and Exploratory Analysis

### 2.1 Dataset Summary

The dataset captures household-level environmental behaviors and carbon emissions across 2,000 observations and 12 variables — 5 categorical and 7 numerical.

**Categorical variables:**
- `Household_ID`
- `Income_Level`
- `Waste_Recycling`
- `High_Emissions`
- `Environmental_Awareness_Score` (ordinal)

**Numerical variables:**
- `Household_Size`
- `Electricity_Usage`
- `Gas_Usage`
- `Plastic_Consumption`
- `Public_Transport_Usage`
- `Distance_to_Work`
- `Carbon_Footprint`

---

### 2.2 Distributions

The following variables are approximately normally distributed (with noted skew):

| Variable | Distribution |
|---|---|
| `Electricity_Usage` | Slightly skewed right |
| `Gas_Usage` | Slightly skewed right |
| `Plastic_Consumption` | Heavily skewed right |
| `Public_Transport_Usage` | Lightly skewed left |
| `Distance_to_Work` | Heavily skewed right |
<img width="752" height="433" alt="image" src="https://github.com/user-attachments/assets/9fc9ddf4-4866-49b8-b63e-ada3ec9e96a2" />

<img width="727" height="419" alt="image" src="https://github.com/user-attachments/assets/5a7781c5-edca-4f88-8606-388b8f9ff67e" />


The following variables **do not** follow a normal distribution, confirmed via QQ plots:

1. `Environmental_Awareness_Score` — ordinal variable; discrete step pattern visible in QQ plot
<img width="367" height="232" alt="image" src="https://github.com/user-attachments/assets/22e2b7fe-89dd-44ee-87e2-5b1529b4a906" />

2. `Carbon_Footprint` — deviation at tails confirmed by QQ plot
<img width="356" height="241" alt="image" src="https://github.com/user-attachments/assets/423da269-8ed5-48ee-8dd2-6d81892e39b4" />

4. `Household_Size` — discrete values produce a stepped QQ plot
<img width="377" height="237" alt="image" src="https://github.com/user-attachments/assets/bc79e4b5-9672-43f3-ac7b-800d9bd33f4b" />

---

### 2.3 Other Visualizations and Interpretations

#### 2.3.1 Distance to Work vs. Public Transport Usage (Scatter Plot)
<img width="640" height="325" alt="image" src="https://github.com/user-attachments/assets/99757077-ce2c-4dcd-bfe9-8e41b7f24e95" />


**Trend:** Negative correlation — as public transport usage increases, commuting distance tends to decrease.

**Interpretation:** Households that rely more on public transport tend to live closer to their workplaces.

---

#### 2.3.2 Carbon Footprint by Income Level (Box Plot)
<img width="548" height="285" alt="image" src="https://github.com/user-attachments/assets/2282aadc-bee8-4416-aa70-77b8d660ce44" />


**Insight:** Median carbon footprint is fairly consistent across income levels. Outliers are more prominent in the medium-income group.

**Interpretation:** Income alone is not a strong predictor of carbon emissions. The higher variance in medium-income households likely reflects external or behavioral factors not captured in this dataset.

---

#### 2.3.3 Public Transport Usage by Income Level (Bar Chart)

**Insight:** Medium-income households use public transport the most; high-income households use it the least.

**Interpretation:** Public transport is predominantly used by medium- and low-income households. Lower uptake among high-income groups likely reflects higher rates of personal vehicle ownership and potentially longer or less transit-accessible commutes.

---

## 3. Inferential Testing

### 3.1 Parametric Tests

Independence and large-sample-size assumptions are considered met. Normality was assessed in the previous section; variables that are not normally distributed are excluded from parametric tests. Homoscedasticity is validated where relevant.

#### 3.1.1 Two-Sample t-Test — Gas Usage & Waste Recycling

**Research question:** Is there a significant difference in gas usage (LPG kg) between households that recycle and those that don't?

A variance test was run first (p = 0.1421), confirming equal variance between groups. The box plot also supports this — both groups show a similar spread.

<img width="620" height="353" alt="image" src="https://github.com/user-attachments/assets/651317f7-4783-4e6d-8d69-d84bd05bcd8d" />


- **H0:** Gas usage is not significantly different between recyclers and non-recyclers.
- **H1:** Gas usage is significantly different between recyclers and non-recyclers.

**Result:** p = 0.02418 → reject H0. Gas usage differs significantly between the two groups. The bar chart indicates that households that recycle waste have lower average gas usage than those that do not.

---

#### 3.1.2 Correlation Test — Electricity Usage & Gas Usage

**Research question:** Is there a significant correlation between electricity usage (kWh) and gas usage (LPG kg)?

<img width="636" height="375" alt="image" src="https://github.com/user-attachments/assets/0c2790ee-a703-4a94-a2ba-4e77500647f3" />


- **H0:** No significant correlation between electricity usage and gas usage.
- **H1:** Significant correlation exists between electricity usage and gas usage.

**Result:** p < 2.2e-16 → reject H0. There is a strong positive correlation between the two variables, with a correlation coefficient of **r = 0.95**. As electricity usage increases, gas usage increases proportionally.

---

### 3.2 Non-parametric Tests

#### 3.2.1 Chi-Square Test — Waste Recycling & Income Level

**Research question:** Is there a relationship between waste recycling behavior and income level?

- **H0:** Recycling rates do not differ significantly across income levels.
- **H1:** Recycling rates differ significantly across income levels.

**Result:** p = 2.2e-16 → reject H0.

| | High | Low | Medium |
|---|---|---|---|
| Does not recycle | 192 | 507 | 591 |
| Recycles | 208 | 144 | 358 |

Higher-income households are more likely to recycle; lower-income households are less likely. A Chi-Square test on `Environmental_Awareness_Score` vs. `Income_Level` yields the same result (p = 2.2e-16), reinforcing the presence of a socioeconomic factor.

---

## 4. Regression Models & Interpretation

### 4.1 Simple Linear Regression (Gas Usage ~ Electricity Usage)
Coefficients:
Estimate  Std. Error  t value  Pr(>|t|)
(Intercept)       0.521428  0.142680    3.655    0.000264 ***
Electricity_Usage 0.046183  0.000328    140.797  < 2e-16  ***
Residual standard error: 2.621 on 1998 degrees of freedom
Multiple R-squared: 0.9084    Adjusted R-squared: 0.9084
F-statistic: 1.982e+04 on 1 and 1998 DF, p-value: < 2.2e-16



**Model formula:**

$$y = 0.046183x + 0.521428$$

**Interpretation:**
- The coefficient for `Electricity_Usage` is 0.046183 (p < 2.2e-16) — statistically significant.
- For every additional kWh consumed per month, gas usage increases by approximately 0.046 LPG kg.
- The intercept (0.5214) is not practically meaningful — a household with zero electricity usage is not realistic.
- R² = 0.9084: electricity usage explains **90.84%** of the variance in gas usage.
- Correlation coefficient R = 0.9531 — very strong positive relationship.

---

### 4.2 Multiple Linear Regression (Gas Usage ~ Electricity Usage + Carbon Footprint)
Coefficients:
Estimate   Std. Error  t value  Pr(>|t|)
(Intercept)       0.4176353  0.1455540   2.869    0.004157 **
Electricity_Usage 0.0456221  0.0003666   124.462  < 2e-16  ***
Carbon_Footprint  0.7233755  0.2130971   3.395    0.000701 ***
Residual standard error: 2.614 on 1997 degrees of freedom
Multiple R-squared: 0.909     Adjusted R-squared: 0.9089
F-statistic: 9970 on 2 and 1997 DF, p-value: < 2.2e-16

**Model formula:**

$$y = 0.0456221x + 0.7233755z + 0.4176353$$

where x = Electricity Usage (kWh), z = Carbon Footprint (tons/year)

**Interpretation:**
- Both predictors are statistically significant (p < 2.2e-16).
- For every additional kWh/month, gas usage increases by ~0.046 LPG kg.
- For every additional ton of CO₂/year, monthly gas usage increases by ~0.723 LPG kg.
- R² = 0.909: a marginal improvement over the simple model (0.9084), suggesting `Carbon_Footprint` adds minimal new explanatory power beyond what `Electricity_Usage` already captures.
- Correlation coefficient R = 0.9534.

---

### 4.3 Logistic Regression (High Emissions ~ Household Size)
Coefficients:
Estimate  Std. Error  z value  Pr(>|z|)
(Intercept)    -3.48535   0.16825     -20.72   <2e-16 ***
Household_Size  0.55737   0.03496      15.94   <2e-16 ***

**Exponentiated coefficients:**

$$e^{0.55737} = 1.746074 \quad \text{(Household Size)}$$
$$e^{-3.48535} = 0.03064303 \quad \text{(Intercept)}$$

**Interpretation:**
- Household size is a statistically significant predictor of high emissions (p < 2e-16).
- For each additional occupant, the **odds of being a high emitter increase by 1.74×** (74% increase per person).
- The intercept is not meaningful — a household with zero occupants is not a household.
- The model correctly captures the trend visible in the predicted probability plot: probability of high emissions rises steeply as household size increases.
<img width="513" height="362" alt="image" src="https://github.com/user-attachments/assets/1e2cf37a-b693-465e-add8-5cf98231c04d" />

---

## 5. Insights — What Factors Affect Carbon Footprint the Most?

- **Energy usage is the dominant driver.** Gas usage has a near-perfect positive correlation with electricity usage (r = 0.95). Households consuming more electricity also consume more gas, compounding their total carbon footprint.

- **Household size significantly increases emissions risk.** Each additional occupant raises the odds of a household being classified as a high emitter by 74%, likely driven by higher aggregate consumption of energy, food, and goods.

- **Income shapes recycling behavior.** Higher-income households are significantly more likely to recycle waste (p = 2.2e-16). Lower-income households show the inverse pattern — suggesting access, infrastructure, and education all play a role alongside motivation.

- **Public transport usage is income-stratified.** Medium-income households use it the most; high-income households use it the least, which likely reflects higher rates of private vehicle ownership in that group.

- **Income is not a clean predictor of carbon footprint level.** Median emissions are similar across income brackets, but medium-income households show more high-end outliers — possibly due to lifestyle variability that income alone doesn't capture.

---

## 6. Recommendations

### Reducing household emissions

**Transportation:** Government investment in public transport quality and accessibility would shift uptake across income groups. For private transport, awareness campaigns focused on trip consolidation and carpooling can reduce per-household emissions without requiring large behavioral shifts.

**Large households:** Energy-efficient and smart appliances are a practical first step given the strong relationship between household size and emissions. Where feasible, investment in residential renewables (e.g. solar) offers longer-term reduction.

**Recycling:** Broad government-backed recycling initiatives — particularly those targeting lower-income communities — are needed. Deposit refund systems (such as [Germany's Pfand system](https://earth.org/waste-management-germany/)) provide a concrete, proven model that creates financial incentive to recycle.

---

### Directions for further research

**Richer socioeconomic modeling:** The finding that higher-income households emit less and recycle more warrants deeper examination. Do high-income households offset this through high-carbon behaviors like frequent air travel? Incorporating flight data and other consumption variables would test whether the current picture holds.

**Non-linear model exploration:** Some variable pairs rejected H0 in correlation tests but produced poor linear fits. As additional modeling techniques become available, exploring non-linear relationships (e.g. polynomial, tree-based) would likely yield a more accurate picture of what drives household emissions.
