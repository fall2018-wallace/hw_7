

merged$area= state.area

statecenter= data.frame(state.center)

merged$latitude=statecenter$y
merged$longitude=statecenter$x




merged$stateName=tolower(merged$stateName)

merged
