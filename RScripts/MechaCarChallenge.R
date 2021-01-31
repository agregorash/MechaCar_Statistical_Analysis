library(tidyverse)
library(dplyr)
library(readr)

# Deliverable 1

#Import and read csv file as DF
mpg_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors=F)

#Perform linear regression
lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,mpg_df)

# Summary for linear regression
summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,mpg_df))


# Deliverable 2

# Import and read csv file as a table
sus_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors=F)

# Create summary df
total_summary <- sus_coil %>% summarize(Mean=mean(PSI),
                                        Median=median(PSI),
                                        Variance=var(PSI),
                                        SD=sd(PSI),
                                        .groups='keep')

# Create lot summary table
lot_summary <- sus_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                                      Median=median(PSI),
                                                                      Variance=var(PSI),
                                                                      SD=sd(PSI),
                                                                      .groups='keep')
