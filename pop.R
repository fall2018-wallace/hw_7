
#Importing the required libraries
library(ggplot2)
library(ggmap)

#geting the US state data for plotting the map
US=map_data("state")

#Converting the scale to readable form
options(scipen=999)

#Plotting the map according to the murder rate
pop=ggplot(merged, aes(map_id=stateName)) + geom_map(map=US, aes(fill=Murder),color="black")
pop=pop + expand_limits(x=US$long, y=US$lat)

#Getting the longitude and latitude of each state as the circle at the center and size according to teh population of the state
pop= pop+geom_point(aes(x=merged$longitude, y=merged$latitude, size=merged$population)) 
pop=pop + ggtitle("Population") + coord_map()
pop

