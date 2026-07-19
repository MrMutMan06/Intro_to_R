# Multiple linear regression 
# Note: You can create sections using (Control + Shift + R) 

## Calling my packages 
library(tidyverse)
library(GGally)
library(broom)

## The data 
set.seed(2)
x1 <- runif(60, 100, 300)
x2 <- runif(60, 20, 120)
y <- 20 + 4*x1 - 3*x2 + rnorm(60, 0, 40)
df <- tibble(x1, x2, y)

new_x1 <- seq(
  from = 120, 
  to = 300, 
  length.out = 20
)

new_x2 <- runif(20, 30, 110)
new_data <- tibble(x1 = new_x1,
                   x2 = new_x2)

# Preliminaries 
ggpairs(df) # Checking for a linear relationship before constructing a model 


# The model ---------------------------------------------------------------

multiple_model <- lm(y ~ x1 + x2, data = df) # (x1 '+' x2) for an additive model  
summary(multiple_model) # Viewing the results of the linear model 
plot(multiple_model) # Checking whether the assumptions made are reasonable


# Predictions  ------------------------------------------------------------

fitted <- predict(multiple_model, new_data) # Using a data frame with columns matching my the explanatory variables in my model
new_data$pred <- fitted # Adding the predictions to new_data 






