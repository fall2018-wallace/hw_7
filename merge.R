
#Merge the two dataframes
merged=merge(census,arrests) #Merging census and arrests dataframes
colnames(merged)=c("stateName","population","popOver18","percentOver18","Murder","Assault","UrbanPop","Rape")
merged
