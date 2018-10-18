
#Importing the required libraries
library(ggplot2)
library(ggmap)

#Generating the map with US states map_data
US=map_data("state")

#Converting the scale to readable form
options(scipen=999)

#plotting the murder rate using map
northeast_pop=ggplot(merged, aes(map_id=stateName)) + geom_map(map=US, aes(fill=Murder),color="black")
northeast_pop=northeast_pop + expand_limits(x=US$long, y=US$lat)

#Plotting the population of each state as per the size of the circle
northeast_pop= northeast_pop+geom_point(aes(x=merged$longitude, y=merged$latitude, size=merged$population)) 
northeast_pop=northeast_pop + ggtitle("Population in north east in US states") + coord_map()
northeast_pop= northeast_pop + xlim(-83.93, -63.93) + ylim(30.73, 50.73)
northeast_pop
