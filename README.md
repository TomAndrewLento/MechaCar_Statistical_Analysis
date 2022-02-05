## Linear Regression to Predict
Coefficients:
                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
AWD              -3.411e+00  2.535e+00  -1.346   0.1852    

![lions-mane-mushroom-scaled](https://user-images.githubusercontent.com/38327290/152659937-4490454e-8a33-49fa-962d-08a6abed7f5f.jpg)


* Intercept, vehicle_length, and ground_clearance provided non-random variance to the mpg values
* The slope of the linear model is non-zero, because we have 3 independent variables that provide non-random variance to the mpg values
* Intercept, vehicle_length, and ground_clearance predict mpg of MechaCar prototypes effectively because each of their Pr(>|t|) values are less than .001, which indicates a strong correlation 

## Summary Statistics on Suspension Coils
* The PSI of the vehicles in Lot3 have a variance of 170.3 which is nearly double the maximum indicated by the design specifications.  Lot2 has a variance of 7.5 and Lot1 has a variance of 1.0, so Lot3 is running a much sloppier show by comparison.

## T-Tests on Suspension Coils
# Lot 1
data:  subset(coil_table$PSI, coil_table$Manufacturing_Lot == "Lot1")
t = 0, df = 49, p-value = 1
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.719 1500.281
sample estimates:
mean of x 
     1500 
# Lot 2
data:  subset(coil_table$PSI, coil_table$Manufacturing_Lot == "Lot2")
t = 0.51745, df = 49, p-value = 0.6072
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.423 1500.977
sample estimates:
mean of x 
   1500.2 
# Lot 3
data:  subset(coil_table$PSI, coil_table$Manufacturing_Lot == "Lot3")
t = -2.0916, df = 49, p-value = 0.04168
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1492.431 1499.849
sample estimates:
mean of x 
  1496.14 

## Study Design: MechaCar vs Competition
* I would test the MpG metric to see whether MechaCars have a greater fuel efficiency than other cars. 
* The alternative hypothesis would be that the overall mean of MpG data for particular MechaCar models is greater than that of competitors.  The Null Hypothesis is that the MpG of MechaCar models is less than or not significantly greater than that of competitors. 
* I would take the average MpG metric across multiple MechaCar models to see which is the most fuel efficient.  I would also compare standard deviation to see how homogenous different cars of the same model are.
* Each row in the table could be an individual car ride on a highway that records the MpG in one column, the serial number of the car in another column, and the model in another column.  If I had the same data from competitor cars, I could see which have the best mileage.


