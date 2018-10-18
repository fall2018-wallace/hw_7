
##################################################################
# IST 687- Introduction to Data Science
# Due date - 10/10/18 by 11:59 p.m.
# Homework 7:Maps- Submitted by Simaant Jayant Patil on 10/17/18
# Portions of this code came from Introduction to Data Science
# but the comments are all original.

#Reading in the census data 
census <- read.csv("scprc_est_2017_18_pop_res.csv") # available dataset
census <- census[,-1:-4]  #removing first four columns
census <- census[-c(1,53,10),] #removing 1st, 1oth and 53rd row

#Renaming all the columns
colnames(census) <- c("stateName","population","popOver18","percentOver18")
census
