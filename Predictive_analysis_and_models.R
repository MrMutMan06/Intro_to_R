# Lecture 3 
# Calling my packages 
library(tidyverse)
library(ggplot2)

# Reading my employee data 
EmployeeData <- read_csv("/home/muturi/Desktop/USIU/DSA_1060/SQL_code/Employee_Data.csv")

# Creating a point plot 
ggplot2::ggplot(EmployeeData, mapping = aes(x = Age, y = Salary)) + 
  geom_point(size = 3) 

# Working with mtcars 
Cars <- mtcars

# Creating a point plot for mtcars data 
ggplot2::ggplot(Cars, mapping = aes(x = wt, y = mpg)) + 
  geom_point(size = 2) + 
  labs(
    x = "Weight",
    y = "Miles per gallon"
  ) +
  theme_classic()

# Running a linear model 
linear_model <- lm(mpg ~ wt , data = Cars) # using the lm function, (mpg ~ wt) means mpg depends on wt 

summary(linear_model) # viewing the summary: we interpret the coefficient, the p-value, and the R value  

# Interpreting the linear model:
## On average these cars cover 37.2851 miles per gallon 
## For every increase in a unit of weight, the miles per gallon reduce by 5.3445 
## The two variables are statistically significant - very low p-value (3 stars)
## The R-squared value is a way to check whether this model is a best fit (for this class 75 and above is good)

