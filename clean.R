
##################################################################
# IST 687- Introduction to Data Science
# Due date - 10/10/18 by 11:59 p.m.
# Homework 7:Maps- Submitted by Simaant Jayant Patil on 10//18
# Portions of this code came from Introduction to Data Science
# but the comments are all original.

#read in the census data from HW #3
census <- read.csv("scprc_est_2017_18_pop_res.csv")
census <- census[,-1:-4]
census <- census[-c(1,53,10),]

