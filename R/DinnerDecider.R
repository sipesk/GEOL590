#####Decider which tells you where to go for dinner######

dinvar <- 0 #variable that holds user input, also used to check code
locations <- c() #vector that holds all locations

#loops which allow the user to input dinner locations as wanted
while (dinvar != 1) {
  dinvar <- readline("Enter dinner location option or 1 to exit. ")
  if (dinvar !=1){
    locations <- c(locations,dinvar)
  }
}

decision <- sample(locations, 1) #randomly samples one dinner location

print (c("You should go to", decision), quote=FALSE) #gives user final decision

##########Note; can also be used to decide what to make for dinner ########################

