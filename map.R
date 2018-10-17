
library(ggplot2)
library(ggmap)

merged$area= state.area

statecenter= data.frame(state.center)

merged$latitude=statecenter$y
merged$longitude=statecenter$x




merged$stateName=tolower(merged_data$stateName)

merged
