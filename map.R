
library(ggplot2)
library(ggmap)
$area= state.area
View(merged_data) 

statecenter= data.frame(state.center)
View(statecenter)
merged_data$latitude=statecenter$y
merged_data$longitude=statecenter$x
View(merged_data)



merged_data$stateName=tolower(merged_data$stateName)
View(merged_data)
US=map_data("state")

