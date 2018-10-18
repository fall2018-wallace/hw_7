
pop=ggplot(merged, aes(map_id=stateName)) + geom_map(map=US, aes(fill=Murder),color="black")
pop=pop + expand_limits(x=US$long, y=US$lat)
pop= pop + geom_point(aes(x=merged$longitude, y=merged$latitude, size=merged_data$population)) + coord_map()
pop=pop + ggtitle("Population")
pop
