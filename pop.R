
#Importing the required libraries
library(ggplot2)
library(ggmap)

#geting the US state data for plotting the map
US=map_data("state")

options(scipen=999)
pop=ggplot(merged, aes(map_id=stateName)) + geom_map(map=US, aes(fill=Murder),color="black")
pop=pop + expand_limits(x=US$long, y=US$lat)
pop= pop+geom_point(aes(x=merged$longitude, y=merged$latitude, size=merged$population)) 
pop=pop + ggtitle("Population") + coord_map()
pop

