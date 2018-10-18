
#Using the areas of US states
merged$area= state.area

#Using the longitude and latitude of US states and converting it with dataframe
statecenter= data.frame(state.center)

merged$latitude=statecenter$y #Taking a latitude as one column 
merged$longitude=statecenter$x #Taking the longitude as other column

merged$stateName=tolower(merged$stateName)

merged
