## DELIVERABLE 1
# install.packages("dplyr") 
library("dplyr")     
library("tidyverse")

dir1 = '<path>/MechaCar_mpg.csv'
mecha_table <- read.csv(file=dir1,check.names=F,stringsAsFactors = F)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_table))


## DELIVERABLE 2
dir2 = '<path>/Suspension_Coil.csv'
coil_table <- read.csv(file=dir2, check.names=F, stringsAsFactors = F)
total_summary <- coil_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI),.groups = 'keep') 
lot_summary   <- coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI),.groups = 'keep') 


## DELIVERABLE 3
t.test(coil_table$PSI ,mu=1500)

t.test(subset(coil_table$PSI, coil_table$Manufacturing_Lot=="Lot1"),mu=1500)
t.test(subset(coil_table$PSI, coil_table$Manufacturing_Lot=="Lot2"),mu=1500)
t.test(subset(coil_table$PSI, coil_table$Manufacturing_Lot=="Lot3"),mu=1500)


##