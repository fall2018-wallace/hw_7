
library(ggplot2)
library(ggmap)

US=map_data("state")

options(scipen=999)
Area=ggplot(merged, aes(map_id=stateName)) + geom_map(map=US, aes(fill=area),color="black")
Area=Area + expand_limits(x=US$long, y=US$lat) + ggtitle("Area of US states") + coord_map()
Area

