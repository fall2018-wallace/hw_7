
#Merge the two dataframes
merged=merge(census, arrests)
colnames(merged)=c("stateName","population","popOver18","percentOver18","Murder","Assault","UrbanPop","Rape")
merged
