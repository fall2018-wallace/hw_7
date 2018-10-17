
murder=ggplot(merged_data, aes(map_id=stateName)) + geom_map(map=US, aes(fill=Murder),color="black")
murder=murder + expand_limits(x=US$long, y=US$lat)
murder
