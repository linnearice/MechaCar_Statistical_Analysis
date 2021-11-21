# MechaCar Statistical Analysis

## Overview
AutosRUs' newest prototype, the MechaCar, is "suffering from production troubles" and the company is hoping that an analytical review may help provide some insight. The goal of this project is to:

* Identify which variables in the dataset predict the mpg of MechaCar Prototypes.
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from various manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.

## Results

### Linear Regression to Predict MPG

![2021-11-19 (1)-reduced](https://user-images.githubusercontent.com/35401581/142702858-c48aecd3-9092-4c2a-a42e-2c145bb93e19.png)

* A multilinear regression analysis was performed on MechaCar_mpg data.csv which contains results for 50 prototype MechaCars. The variables used were vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance. 
* According to the results, vehicle length and ground clearance are the most significant variables in our dataset and show a non-random effect on the MPG of the MechaCar prototype.  As shown in the above chart, a multilinear regression model run on these variables against figures for MPG, resulted in Pr(>|t|)-values of 2.6e-12 and 5.21e-08, respectively. The intercept of 5.08e-08 was also statistically significant.  There are likely other factors, not included in our dataset, that could have a strong impact on the MPG.
* With an extreme significant p-value of 5.35e-11 the slope is not close to zero and the null hypothesis can be rejected.
* Also evident on the summary output is the r-squared value of .71 and a significant p_factor of 5.35e-11 which indicate the variables included, most significantly vehicle length and ground clearance, are a strong predictors of MPG for the prototype.  However, there is room for some improvement.



### Summary Statistics on Suspension Coils

Total Summary - statistics

![Total Summary PSI](https://user-images.githubusercontent.com/35401581/142702939-93020742-68ba-4faa-8d0f-519abfe6cb63.png)

Lot Summary - statistics per lot

![Lot Summary PSI](https://user-images.githubusercontent.com/35401581/142702949-a8d01486-53d6-4f58-ae81-ae99a1c3c1cc.png)


* In the total summary as well as the lot summary, the mean and median are fairly close together which means there is a fairly normal distribution.  The variance of the suspension coils in the total summary appears to meet design specifications with a variance of 62.3 pounds per square inch (PSI). 
* However,the variance for lot 3 in the lot summary is well over design specifications of 100 at 170.3 PSI.  Evaulation of the manufacturing is warranted.  There is a significant disparity.
* Lots 1 and 2 are well within the design specifications with a variance of 0.98 and 7.5 PSI, respectively.

### T-Tests on Suspension Coils

![t-test sumary](https://user-images.githubusercontent.com/35401581/142709097-8f84aa7a-a1bb-4638-af50-3d0cbd847c98.png)

Findings for the overall t-test of the suspension coils across all manufacturing lots shows the mean is not statistically different from the population and the p-factor of .06028 is not quite low enough or it is of low "signifigance" and we cannot reject it from the hypothesis. 

![t-test lot1](https://user-images.githubusercontent.com/35401581/142709101-dc9477e7-2ecf-41fa-adb5-7f75038930ac.png)

* Findings for the maunfacturing lot 1 t-test of the suspension coils shows the mean is not statistically different from the population and the p-factor of 1.0 is not low enough or it is not in a "significant" range and we cannot reject it from the hypothesis. 

![t-test lot2](https://user-images.githubusercontent.com/35401581/142709109-0c44da95-9a6b-4300-b909-b852e3ae171d.png)

* Findings for the maunfacturing lot 2 t-test of the suspension coils shows the mean is not statistically different from the population and the p-factor of .6072 is not low enough or it is not in a "significant" range and we cannot reject it from the hypothesis. 

![t-test lot3](https://user-images.githubusercontent.com/35401581/142709114-d7e6eaf9-dc4b-4eea-a1b8-4f5f90190efe.png)

* Findings for the maunfacturing lot 3 t-test of the suspension coils shows the mean is slightly statistically different from the population and the p-factor of .04168 is within a "significant" range and we can reject it from the hypothesis.

### Study Design:  MechaCar vs. Competition
Consumers take in many factors when considering purchasing an automobile.  So many factors are changing in today's market with the introduction of electric cars and auto-driving specs.  MechaCar has broad ground to cover in staying on top of today's market.  However, the simple work truck is still a mainstay and necessity in today's market for laborers, farmers, ranchhands, etc.  When thinking of work trucks one of the most important factors in comparing MechaCar's trucks to the competition is the fuel efficiency among different truck classes.  

#### Metrics to Test
For this analysis, AutosRUs will focus on a study of fuel efficiency as miles per gallon (MPG) of different classes of trucks.  

#### Define Hypothesis
- Ho: MechaCar standard truck prototypes' average MPG is similar to competitor's standard trucks.
- Ha: MechaCar standard truck prototypes' average MPG is statistically above or below that of competitor' standard trucks.

#### Best Statistical Test
We can use a one-way Anova because it tests a single dependent variable across a single independent variable within multiple groups.

#### Data Needed
We would need to gather MPG data for all MechaCar truck prototypes, as well as from all major competitor truck prototypes.
