
library(ggplot2)
library(ggmap)
US=map_data("state")
options(scipen=999)
northeast_pop=ggplot(merged, aes(map_id=stateName)) + geom_map(map=US, aes(fill=Murder),color="black")
northeast_pop=northeast_pop + expand_limits(x=US$long, y=US$lat)
northeast_pop= northeast_pop+geom_point(aes(x=merged$longitude, y=merged$latitude, size=merged$population)) 
northeast_pop=northeast_pop + ggtitle("Population in north east in US states") + coord_map()
northeast_pop= northeast_pop + xlim(-83.93, -63.93) + ylim(30.73, 50.73)
northeast_pop
