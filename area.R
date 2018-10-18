
#Imoporting the required libraries
library(ggplot2)
library(ggmap)

#Taking the US state data for creating the map 
US=map_data("state")

#Converting the scale to readable form
options(scipen=999)

#plotting the mapaccording to area
Area=ggplot(merged, aes(map_id=stateName)) + geom_map(map=US, aes(fill=area),color="black")
#Giving the map a title and adjusting it
Area=Area + expand_limits(x=US$long, y=US$lat) + ggtitle("Area of US states") + coord_map()
Area

