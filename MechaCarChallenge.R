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
