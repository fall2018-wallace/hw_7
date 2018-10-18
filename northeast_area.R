
library(ggplot2)
library(ggmap)

US=map_data("state")

options(scipen=999)
northeast_murder=ggplot(merged, aes(map_id=stateName)) + geom_map(map=US, aes(fill=Murder),color="black")
northeast_murder=northeast_murder + expand_limits(x=US$long, y=US$lat) + ggtitle("Murder rate in north east US states") + coord_map()
