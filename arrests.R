
#read in USArrests data set 
arrests <- USArrests
arrests <- cbind(rownams(arrests),arrests)
colnames(arrests) <- c("stateName")
arrests

