###Deliverable 1
### Use the library() function to load the dplyr package
library(dplyr)

### Import and read in the MechaCar_mpg.csv file as a dataframe
mecha_data <- read.csv("MechaCar_mpg.csv",stringsAsFactors = F,check.names = F)

### Perform linear regression on all six columns with df as data parameter
mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_data)

### Determine the p-value and r-squared value for the linear regression model
summary(mecha_lm)


### Deliverable 2
### Import and read in the suspension_coil.csv file as a table
sus_data <- read.csv("suspension_coil.csv",stringsAsFactors = F,check.names = F)

### Lot Summary
lot_summary <- sus_data %>% group_by(Manufacturing_Lot) %>% 
  summarise(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
lot_summary

### Total Summary
total_summary <- sus_data %>% 
  summarise(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
total_summary