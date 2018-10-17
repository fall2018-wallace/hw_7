
#Merge the two dataframes
merged=merge(census, arrests)
View(merged)
colnames(merged)=c("stateName","population","popOver18","percentOver18","Murder","Assault","UrbanPop","Rape")
merged
