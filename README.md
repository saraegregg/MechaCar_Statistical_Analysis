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

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Is the slope of the linear model considered to be zero? Why or why not?
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

**- Linear Regression Model**
<p align="center">
    <img src="https://github.com/saraegregg/Mod15_R-Analysis/blob/main/images/del1.png"> 
</p>

### Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

**- Lot Summary** 
<p align="center">
    <img src="https://github.com/saraegregg/Mod15_R-Analysis/blob/main/images/del2.1.png"> 
</p>

**- Total Summary**
<p align="center">
    <img src="https://github.com/saraegregg/Mod15_R-Analysis/blob/main/images/del2.2.png"> 
</p>
<br>

### T-Tests on Suspension Coils

Briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.

**- Lot 1 T-Test**
<p align="center">
    <img src="https://github.com/saraegregg/Mod15_R-Analysis/blob/main/images/del3.1.png"> 
</p>

**- Lot 2 T-Test**
<p align="center">
    <img src="https://github.com/saraegregg/Mod15_R-Analysis/blob/main/images/del3.2.png"> 
</p>

**- Lot 3 T-Test**
<p align="center">
    <img src="https://github.com/saraegregg/Mod15_R-Analysis/blob/main/images/del3.3.png"> 
</p>


**- Lot 4 T-Test** 
<p align="center">
    <img src="https://github.com/saraegregg/Mod15_R-Analysis/blob/main/images/del3.4.png"> 
</p>
<br>

### Study Design: MechaCar vs Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
In your description, address the following questions:
What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?

