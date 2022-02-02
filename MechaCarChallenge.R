library(jsonlite)
library(tidyverse)

# Read in MechaCar_mpg.csv file as a dataframe
MechaCar <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# Perform linear regression on all 6 columns
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar)

# Use the summary function to determine p-value and the r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar))

# Read in Suspension_Coil.csv file as a dataframe
Suspension_Coil <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# Create a total_summary dataframe
total_summary <- Suspension_Coil %>% summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups='keep')

# Create a lot_summary dataframe grouping each manufacturing lot.
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups='keep')

# Use the t.test function to determine if the PSI across all manufacturing lots is statistically different from the population mean
t.test(Suspension_Coil$PSI, mu = 1500)

# Create three t.test functions for each lot
t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot == "Lot1"), mu = 1500)
t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot == "Lot2"), mu = 1500)
t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot == "Lot3"), mu = 1500)


