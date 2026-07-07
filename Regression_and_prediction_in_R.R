# Practice and revision 
# Regression and prediction in R

# Calling my packages 
library(tidyverse)
library(ggplot2)

# Using the in-built cars data 
## Checking for a linear relationship with ggplot
ggplot2::ggplot(cars, mapping = aes(x = dist, y = speed)) +
  geom_point(size = 2) + 
  labs(
    x = "Distance",
    y = "Speed"
  ) + 
  geom_smooth(method = "lm", se = FALSE) # This creates a linear regression line on the plot
## Note that se removes the confidence band from the plot 

# Finding the equation of the linear regression line I just plotted 
model <- lm(dist ~ speed, data = cars) ## Distance is the response variable and speed is the explanatory variable 
summary(model)

# Adding the residuals and predicted as columns in the cars data set
cars$residuals <- model$residuals
cars$predicted <- model$fitted.values

# Using the predict function in R 
## predict(the fitted model, a data frame with a column that has the same name as the explanatory variable in our model)
predict(model, data.frame(speed = c(12.5, 15.5, 17)))

## use ?predict.lm over ?predict