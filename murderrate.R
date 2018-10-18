
#Importing gthe required libraries
library(ggplot2)
library(ggmap)

US=map_data("state")

options(scipen=999)
murder=ggplot(merged, aes(map_id=stateName)) + geom_map(map=US, aes(fill=Murder),color="black")
murder=murder + expand_limits(x=US$long, y=US$lat) + ggtitle("Murder rate in US states") + coord_map()
murder
