# MechaCar Statistical Analysis

## Overview

## Results

### Linear Regression Analysis

![2021-11-19 (1)-reduced](https://user-images.githubusercontent.com/35401581/142692225-85e8e409-fff4-4b41-8f4f-c2291d352302.png)

* A multilinear regression analysis was performed on the mechaCar_mpg data.csv which contains results for 50 prototype MechaCars. The variables used were vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance. 
* According to the results, vehicle length and ground clearance are the most significant variables in our dataset and show a non-random effect on the MPG of the MechaCar prototype.  As shown in the above chart, a multilinear regression model run on these variables against figures for MPG, resulted in Pr(>|t|)-values of 2.6e-12 and 5.21e-08, respectively. The intercept of 5.08e-08 was also statistically significant.  There are likely other factors, not included in our dataset, that could have a strong impact on the MPG.
* Also evident on the summary output is the r-squared value of .71 and a significant p_factor of 5.35e-11 which indicate the variables included, most significantly vehicle length and ground clearance, are a strong predictors of MPG for the prototype.  However, there is room for some improvement.

