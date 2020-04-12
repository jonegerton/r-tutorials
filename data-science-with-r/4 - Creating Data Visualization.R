# Creating Data Visualization

# Set the working directory
setwd("D:/R/r-tutorials/data-science-with-r")

# Read a CSV data file
cars <- read.csv("Cars.csv")

# Load the ggplot2 library
#install.packages("ggplot2")
library(ggplot2)

# Create a frequency bar chart
ggplot(
  data = cars,
  aes(x = Transmission)) +
  geom_bar() +
  ggtitle("Count of Cars by Transmission Type") +
  xlab("Transmission Type") +
  ylab("Count of Cars")

# Create a histogram
ggplot(
  data = cars,
  aes(x = Fuel.Economy)) + 
  geom_histogram(
    bins = 10) +
  ggtitle("Distribution of Fuel Economy") +
  xlab("Fuel Economy (mpg)") +
  ylab("Count of Cars")

# Create a density plot
ggplot(
  data = cars,
  aes(x = Fuel.Economy)) + 
  geom_density() +
  ggtitle("Distribution of Fuel Economy") +
  xlab("Fuel Economy (mpg)") +
  ylab("Count of Cars")

# Create a scatter plot
ggplot(
  data = cars,
  aes(
    x = Cylinders,
    y = Fuel.Economy)) +
  geom_point() +
  ggtitle("Fuel Ecomomy by Cylinders") +
  xlab("Number of Cylinders") +
  ylab("Fuel Economy (mpg)")
  