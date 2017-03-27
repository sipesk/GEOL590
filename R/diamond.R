#Determine how many rows the diamonds
#data set contains (comes loaded with ggplot)

library(ggplot2)
set.seed(1410)
dsmall <- diamonds[sample(nrow(diamonds), 100), ]

# Now ggplot is being used in the packages
#we set a random number generator 
#dsmall is 100 x 10 data frame that has
#characteristics of diamonds 

#the number of rows in the data frame diamonds
nrow(diamonds)

#using dsmall to create a scatterplot of diamond cut values 

plot1 <-ggplot(dsmall, aes(x, y, color=z)) +
  geom_point() + 
facet_wrap(~cut)
  
plot1

#this completed the separation of the diamonds by cut.

plot2 <- ggplot(dsmall, aes(x=carat, y=price, color=cut)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)

plot2
  
# this completed the scatterplot organizing by price vs carat, colored by cut  
  
plot3 <- ggplot(dsmall, aes(x=carat, color=clarity)) +
  geom_density() +
  facet_wrap(~clarity)
 

plot3 

#this code completes the comparison of carat and clarity of the diamonds.

plot4 <- ggplot(dsmall, aes(x=cut, y=price)) +
  geom_boxplot()

plot4

#this completes the boxplot of the diamonds organized by cut and price. 
#lol at the fair diamond average price being higher than the rest. (i know the 
#sample size was smaller.. but still)

plot5 <- ggplot(dsmall, aes(x, y)) +
  geom_point(color = "red") + 
  geom_smooth(linetype = 2,
              se=FALSE) +     #reg line w/o the confidence shade
  labs(x = "X, in mm", y = "Y, in mm")   #rename the axis
  

plot5

#this completes the last scatter plot with a 1:1 ratio of mm.


  