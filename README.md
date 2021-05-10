# MechaCar Statistical Analysis

##### Significance Level Used: 0.05

## Linear Regression to Predict MPG

Using a dataset containing mpg test results for 50 MechaCar design prototypes, I have created a linear regression model that will predict miles-per-gallon results based off of several factors; vehicle length, vehicle weight, spoiler angle, ground clearance, and whether the prototype is AWD.  

### Results

#### Linear Regression

The linear regression model produced a Y-Intercept of -1.040e+02 and slope coefficients for each factor listed underneath that respective factor. 

![lm_output](https://github.com/agregorash/MechaCar_Statistical_Analysis/blob/main/Resources/lm_output.PNG)

#### Linear Regression Summary

The summary of our linear regression provides additional insights into the model.  An R-squared value of .7149 lets us know that roughly 71% of mpg predictions will be correct using this linear model. A p-value of 5.35e-11, which is much smaller than the generally accepted significance level of 0.05, means that we can confidently state that there is sufficient evidence to reject our null hypothesis- that the slope of our linear model is zero.

![summary_output](https://github.com/agregorash/MechaCar_Statistical_Analysis/blob/main/Resources/summary_output.PNG)

#### Take-aways

**- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**

In our multiple linear regression summary, the variables with a pr(>|t|) value larger than the significance level of  0.05 provide a non-random amount of variance to the mpg values in the dataset.  These variable are vehicle weight, spoiler angle, and AWD.  The variables with pr(>|t|) values less than the significance level, vehicle length and ground clearance, have random amounts of variance and do not necessarily directly effect the mpg of the prototypes.

**- Is the slope of the linear model considered to be zero?**

Our p-value of 5.35e-11, which is lower than the significance level of 0.05, lets us know that the slope of the line is not zero.  This means that changes to the collection of predictor variables in the linear model are associated with a change in the response variable of MPG.

**- Does this linear model predict mpg of MechaCar prototypes effectively?**

The R-squared value of .7149 informs us that the model can predict the mpg of MechaCar prototypes effectively roughly 71% of the time.  This means that there may or may not be other variables that could potentially contribute to the additional ~29% of variance that are not included in our model.  Also, our absolute r-value which we can get by taking the square root of our r-squared value is 0.845, suggests that our model has a strong correlation.  These outputs suggest that our model does in fact predict the mpg of MechaCar prototypes effectively. 

## Summary Statistics on Susupension Coils

In order to determine whether suspension coil PSI readings are consistent across all of MechaCars production lots, I have created two summary tables.  One which measures the suspension coil's PSI across all manufacturing lots, and one that measures the same statistics lot by lot. The statistics measured were; mean PSI, median PSI, variance of PSI and the standard variance.

### Results

#### Total Summary

The first summary statistics table shows the results for suspension coils, not grouped by their lot.
![total_summary](https://github.com/agregorash/MechaCar_Statistical_Analysis/blob/main/Resources/total_summary.PNG)

#### Summary Grouped by Lot

The second summary statistics table shows the results for suspension coils, grouped by which production lot they came from.
![lot_summary](https://github.com/agregorash/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summary.PNG)

#### Take-away

**-The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually?**

When we look at the total summary table, we would say that as a whole the suspension coils are up to par with a variance of 62.29, and do not exceeed the maximum variance allowed by the design specifications of 100 lbs/sq in.  However, when we look at the grouped tables by lot, we can see that production lot 3 almost doubles the maxiumum allowed variance with a value of 170.28.  This one lot is skewing the total variance significantly, and suggests that the suspension coils produced in this lot have PSIs that are wildly inconsistent.  

## T-Tests on Suspension Coils

I have performed several t-tests in order to determine if PSI readings from suspension coils produced across all manufacturing lots and each individual lot are statistically different from the population of 1,500 pounds per square inch.

### Results

#### T-Test on All Lots

The T-Test performed across all lots yields a mean of 1498.27 and a p-value of 0.06028.  The p-value is larger than our significance level of 0.05, therefore we can assume that the distribution of the data is not significantly different from the normal distribution and that it is a normal distribution

![t_total](https://github.com/agregorash/MechaCar_Statistical_Analysis/blob/main/Resources/t_total.PNG)

#### T-Test on Lot 1

The T-Test performed on lot 1 yields a mean of 1500 and a p-value equal to 1.  With a p-value of 1 we can assume the distribution is not significantly different from the normal distribution.

![t_1](https://github.com/agregorash/MechaCar_Statistical_Analysis/blob/main/Resources/t_1.PNG)

#### T-Test on Lot 2

The T-Test performed on lot 2 yields a mean of 1500.2 and a p-value of 0.6072.  Our p-value is larger than the significance level of 0.05 and therefore we can assume it is a normal distribution. 

![t_2](https://github.com/agregorash/MechaCar_Statistical_Analysis/blob/main/Resources/t_2.PNG)

#### T-Test on Lot 3

The T-Test performed on lot 3 yields a mean of 1496.14 and a p-value of 0.04168.  A p-value that is less than the significance level of 0.05 suggests that the data is significantly different than the normal distribution, so we cannot assume the normality of this distribution.

![t_3](https://github.com/agregorash/MechaCar_Statistical_Analysis/blob/main/Resources/t_3.PNG)

## Study Design: MechaCar vs Competition

I have designed a statistical study in order to see how MechaCar vehicles perform against vehicled made by other maunfacturers.  Potential metrics that consumers could find interesting in this study might include cost, city or highway fuel efficiency, horse power, maitenance cost, or safety rating.

### Metric Tested

After thinking critically about which metrics would be of interest to a consumer, I have decided to analyze the following metrics in my statistical study: cost, city and highway fuel efficiency, and horsepower.  I can analyze how competitively MechaCars are priced to their competition with fuel efficiency and horsepower in consideration.

### Hypotheses

##### Null Hypothesis: MechaCars have no difference in pricing compared to its competitors, and have no differences in fuel efficiency or horse power in comparison to competitors.
##### Alternative Hypothesis: MechaCars have different pricing in comparison to competitors and have differences in fuel efficiency and horse power compared to the competition.

### Statistical Tests to be Performed

In this study we will use a two sample t-test to compare the means from the two populations.  From there we will perform one-tailed t-tests in order to determine which means are greater than or less than the other.

### Data Requirements

In order to carry out this statistical test we will either need a collection of data from MechaCar and its competitors or (1) the mean of both samples, (2) the standard deviation of both samples, and (3) the number of observations.
