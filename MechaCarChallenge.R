library(dplyr)

# Complete linear regression on MechaCar_mpg_table

mc_mpg_table <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) #import MechaCar dataset
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mc_mpg_table)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mc_mpg_table))

# Complete mathematical summary on PSI data  
susp_table<-read.csv("Suspension_coil.csv",check.names = F,stringsAsFactors = F)
total_summary_susp <- susp_table %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI)) #create summary table
lot_summary <- susp_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI),.groups = 'keep')

# Calculate the t-tests
t.test(susp_table$PSI,mu=1500)

# Calculate t-tests for each lot
filter_lot1 <- subset(susp_table, Manufacturing_Lot == "Lot1")
filter_lot2 <- subset(susp_table, Manufacturing_Lot == "Lot2")
filter_lot3 <- subset(susp_table, Manufacturing_Lot == "Lot3")
t.test(filter_lot1$PSI, mu=1500)
t.test(filter_lot2$PSI, mu=1500)
t.test(filter_lot3$PSI, mu=1500)
