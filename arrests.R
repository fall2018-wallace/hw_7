
#read in USArrests data set same as HW #2
arrests <- USArrests
arrests <- cbind(rownams(arrests),arrests)
colnames(arrests) <- c("stateName")

