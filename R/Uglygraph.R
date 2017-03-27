library(ggplot2)
gpig <- ToothGrowth
GB <- Seatbelts[1:60, 1:2 ]

Newdata <- merge(gpig, GB)



packs <- c("png","grid")
lapply(packs, require, character.only = TRUE) 

image <- readPNG("pigcar.png")

g <- rasterGrob(image, interpolate = TRUE)

Ugly <- ggplot(Newdata, aes(x=DriversKilled, y=len)) +
  annotation_custom(rasterGrob(image, width=unit(1,"npc"), 
                               height=unit(1,"npc")), -Inf, Inf, -Inf, Inf) +
  geom_point() +
  labs(x = "Drivers Killed in Great Britian 1969-79 ", 
       y= "Gineua Pig Tooth Length in mm") 
  
Ugly

#Print the ugliest graph.






