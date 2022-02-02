# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
![linear regression](https://user-images.githubusercontent.com/41974323/152229967-e6969758-4d5b-4d96-9289-c53cbae4a21a.PNG)
- Vehicle weight and ground clearance provide a non-random amount of variance to the mpg values in the dataset.
- The slope of the linear model is not considered to be zero, this is because we have several coefficients that are below the significance level.
- This linear model can predict the mpg of MechaCar prototypes to some degree of certainty because our high R-Squared value at 0.7149. 

## Summary Statistics on Suspension Coils
![total_summary](https://user-images.githubusercontent.com/41974323/152240486-b784a9ea-5e1b-4446-9cd3-9518c805f932.PNG)
![lot_summary](https://user-images.githubusercontent.com/41974323/152240755-fc261087-b958-423a-9183-e3f3706084ad.PNG)
- When looking at the total summary we see that while there is some variance in the data, it does not exceed the design specification limit of 100 pounds per square inch. When we us groupby to look at each lot individually we do see that lots 1 and 2 show very little variance while lot 3 shows a high variance of 170.3, which is way above the design specification limits.

## T-Tests on Suspension Coils
![t_test_1](https://user-images.githubusercontent.com/41974323/152243848-e7c05e53-9396-4769-8af3-eeb69771eff8.PNG)
![t_test](https://user-images.githubusercontent.com/41974323/152243083-566e4d18-f298-4590-b2f1-5b8a096dd37e.PNG)
- According to our t-tests above we can make several conclusions based on the data. Our first t-test is a one sample test looking at all the lots together, with a p-value of 0.06 
with is above the 0.05 marker making this not statistically different from the mean populations.
- When looking at the lots individually, we see that lot 1 and lot 2 are not statistically different from the mean population because their p-value is below 0.05. On the other hand lot 3 is statistically different from the mean population with a p-value of 0.04.

## Study Design: MechaCar vs Competition
Safety will always be one of the top priorities of car buyers in the general public, it would be great to know where our safety rating stands against the competition.

- What metric or metrics are you going to test?
  We'll test the safety ratings of MechaCars in comparison to competitors with similar vehicle models.
- What is the null hypothesis or alternative hypothesis.
  Null Hypothesis: MechaCar's vehicle safety ratings are the same as their competitors.
  Alternative Hypothesis: MechaCar's vehicle safety ratings are better then the competition.
- What statistical test would you use to test the hypothesis? And why?
  We would use two sample t-tests to test the hypothesis. This way we can determine whether or not there is a statistically significant difference between the means of safety ratings for MechaCar and its competitors.
- What data is needed to run the statistical test?
  To run the statistical test we would need the safety ratings of similar vehicle models for MechaCar and its competitors.
