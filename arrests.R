
#read in USArrests data set 
arrests <- USArrests
arrests <- cbind(rownames(arrests),arrests)
colnames(arrests) <- c("stateName")
arrests

