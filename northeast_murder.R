
#Importing the required libraries
library(ggplot2)
library(ggmap)

#Getting the US state data for creating map
US=map_data("state")

#Converting the scale to readable form 
options(scipen=999)

#Plotting the map with murder rate
northeast_murder=ggplot(merged, aes(map_id=stateName)) + geom_map(map=US, aes(fill=Murder),color="black")
northeast_murder=northeast_murder + expand_limits(x=US$long, y=US$lat) + ggtitle("Murder rate in north east US states") + coord_map()

##Using new york city to plot the murder rate innorth east states
northeast_murder=northeast_murder+ xlim(-83.93, -63.93) + ylim(30.73, 50.73)
northeast_murder
