# Module 15 Challenge

---
## Mecha Car Analysis
---

## Project Overview
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on the data analytics team to review the production data for insights that may help the manufacturing team.

## Challenge Overview
Complete the following:
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Resources
**Data Sources:** 
- MechaCar_mpg.csv
- Suspension_Coil.csv

**Software:**
- RStudio 2022.02.1 
- R 3.6.2 

## Results
### Linear Regression to Predict MPG

**- Linear Regression Model**
<p align="center">
    <img src="https://github.com/saraegregg/Mod15_R-Analysis/blob/main/images/del1.png"> 
</p>

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**
The last column in the summary output, Pr(>|t|), demonstrates the probability that each vehicle measure contributes a random amount of variance to the linear models. This means that values close to zero are therefore not as tightly linked to the mpg measures, and the values further from zero show greater amounts of non-random variance. It is unlikely that the relationship between the y variable (mpg in our case) and the coefficient is due to chance. For this dataset, the two features of the MechaCar prototypes that clearly impact mgp are ground clearance and vehicle length. You can also see the significance of this represented by the stars that follow the p-value in the chart.

**Is the slope of the linear model considered to be zero? Why or why not?**
The slope of a regression line is proportional to the correlation coefficient: slope = r*(SD of y)/(SD of x). At the bottom of the summary output is the R-squared value, which represent how dependent the variables are. The closer the R-squared value is to zero, the less the variables are dependent. Inversely, the closer the R-squared value is to 1 or -1, the more the variables are dependent. Since that value is 0.7149, we know firstly that the slope is not zero, and secondly that about 71.5% of the variation in mpg can be explained by the variables.

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**
This linear model effectively predicts the mpg of MechaCar prototypes. With a Combined Coefficient of Determination of 0.7149, this shows that 71.5% of the variation of mpg values can be attributed to the 5 variables modeled against mpg. This result is much better than chance, and indicates a strong relationship between the dependent variables and mpg.


### Summary Statistics on Suspension Coils

**- Total Summary**
<p align="center">
    <img src="https://github.com/saraegregg/Mod15_R-Analysis/blob/main/images/del2.2.png"> 
</p>
<br>

**- Lot Summary** 
<p align="center">
    <img src="https://github.com/saraegregg/Mod15_R-Analysis/blob/main/images/del2.1.png"> 
</p>

**The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**
According to the Total Summary figure, the current manufacturing data meets the 100 pounds per square inch limit in total variance. However, in the Lot Summary figure, it is clear that lot 3 far exceeds the limit. The average of the 3 lots makes it seem that all are meeting the design specification, but that is not the case in reality.


### T-Tests on Suspension Coils
**Assumption:** Manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.
**Hypothesis:** There is a statistically significant difference between the manufacturing lots and the population mean of 1,500 pounds per square inch.
**Null Hypothesis:** There is no statistically significant difference between the manufacturing lots and the population mean of 1,500 pounds per square inch; any difference is simply due to chance.

**- Lot 1 T-Test**
<p align="center">
    <img src="https://github.com/saraegregg/Mod15_R-Analysis/blob/main/images/del3.1.png"> 
</p>
The t-test for Lot 1 indicates the following: the p-value = 1, this markedly greater than the 0.05 significance level. The p-value is greater than the significance level, which means that there is not enough evidence to reject the null hypothesis.

**- Lot 2 T-Test**
<p align="center">
    <img src="https://github.com/saraegregg/Mod15_R-Analysis/blob/main/images/del3.2.png"> 
</p>
The t-test for Lot 2 indicates the following: the p-value = 0.6072, this greater than the 0.05 significance level. The p-value is greater than the significance level, and this indicates that there is not enough evidence to reject the null hypothesis.

**- Lot 3 T-Test**
<p align="center">
    <img src="https://github.com/saraegregg/Mod15_R-Analysis/blob/main/images/del3.3.png"> 
</p>
The t-test for Lot 3 indicates the following: the p-value = 0.04168, this less than the 0.05 significance level. Since the p-value is lower than the significance level, and this indicates that there is enough evidence to reject the null hypothesis.

**- T-Test Across All Manufacturing Lots** 
<p align="center">
    <img src="https://github.com/saraegregg/Mod15_R-Analysis/blob/main/images/del3.4.png"> 
</p>
<br>
The t-test for the Total of all lots indicates the following: the p-value = 0.06, this greater than the 0.05 significance level. The p-value is greater than the significance level, and this indicates that there is not enough evidence to reject the null hypothesis.

### Study Design: MechaCar vs Competition

**What metric or metrics are you going to test?**
With inflation, rising gas prices, and increasingly dire predictions by climate scientists, a vehicle's cost and fuel efficiency are prime factors that car manufacturers, consumers, and governments consider.

**What is the null hypothesis or alternative hypothesis?**
Hypothesis: Regardless of the luxury features and style of vehicles being marketed to American consumers, future buying decisions can reliably be predicted by a combination of vehicle cost and city fuel efficiency.
Null Hypothesis: There is no statistically significant correlation between the number of vehicles sold in a given year and vehicle model, and that model's cost or city fuel efficiency.

**What statistical test would you use to test the hypothesis? And why?**
To test the hypothesis, the following tests would need to be performed:
- paired two-sample t-tests (will help define the variablility between the vehicle cost and city fuel efficiency of various models)
- 2-way analysis of variance (to measure the variance between the independent variables of cost and city fuel efficiency and the dependent variable of number of models sold in a year)
- linear regressions (show and predict how cost and city fuel efficiency designs should be adjusted to meet the sales goals for the MechaCars)

**What data is needed to run the statistical test?**
The data that would be needed would be:
- the total vehicles sold grouped by model for the previous year. To limit the dataset MechaCars may want to look at only vehicle classes comprable to their models.
- the city fuel efficiency ratings of each model of vehicle
- the cost or sales price of each model sold

