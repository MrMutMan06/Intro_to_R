# Basic arithmetic 
2 + 3 

# Assigning a variable 
age <- 10 # using an arrow 
height = 180 # using an equals sign (can use this in a function and in an environment) 

# printing 
print(age)
print(height)

# Data types (int, string / character, Boolean / logical, vector)
Name <- "Muturi" # String variable 
Happy <- TRUE # Boolean variable

# Vectors (low-key like arrays)
Grades <- c("A", "B", "B", "D", "C")
Scores <- c(91, 80, 86, 67, 72)
Names <- c("Aaron", "Jaden", "Benjamin", "Anne", "Simon")

Names[2] # Indexing in R starts at 1 

# Operations on vectors 
mean(Scores)
median(Scores)

?mean # Getting help in R (R is case sensitive: ?Mean doesn't work)

# Data frames (tibble?)
# With existing functions 
Students <- data.frame(
  Names,
  Scores,
  Grades
)

# Creating vectors within a function - you must use '=' here '<-' doesn't work 
Elders <- data.frame(
  Elder_name = c("Rhoda", "Caroline"), Elder_scores = c(92, 87), Elder_grades = c("A", "B")
)

# Indexing in data frames 
Students$Grades[2] # Data frame $ Variable [index]

# Average score of Students 
mean(Students$Scores)

# Lecture 2 
# Installing tidyverse 
install.packages("tidyverse")
library(tidyverse)

# Using tibbles 
Students <- tibble(Students)

# Pre-processing data 
data("iris")
Data <- iris

head(Data) # shows the first few rows of the data 
tail(Data) # shows the last few rows of the data 
glimpse(Data)


# Exporting data 
library(readr)
write.csv(Data, "Iris.csv", row.names = FALSE)

# Importing data 
HRdata <- read.csv("/home/muturi/Desktop/USIU/DSA_1060/DSA_Revision/HRDataSet.csv")

# Some descriptive analytics 
hist(iris$Petal.Length) # R based function


# Using ggplot - this is for you to finish up 
library(ggplot2) # Calling it 

ggplot2::ggplot(Data, mapping = aes(x=Petal.Length)) + 
  geom_histogram(binwidth = 0.5) + 
  labs(title = 'Iris Data') +
  labs(
    x = "Petal length",
    y = "Count"
  )

# Creating a scatter plot 
Penguins_data <- penguins
head(Penguins_data)

ggplot2::ggplot(Penguins_data, mapping = aes(x = bill_dep, y = bill_len)) +
  geom_point(size = 2, colour = "blue") +
  labs(
    title = "Scatter plot of length vs depth",
    x = "Depth",
    y = "Length"
  ) + 
  theme_classic()
  






