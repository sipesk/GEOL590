a <- 1
b <- 2
c <- a + b

set.seed(0) #this makes the random results the same for each code
d<- rnorm(20)
e <- rnorm(20)
f <- d + e

# Attributes assignments make data analysis easier becasue the variable 
#list could be attached at the front of a code and a reviewer could have
#a reference guide when recreating.

k <- c(1,2,3,4,5)
names(k) <= c("a", "b", "c", "d", "e")
attr(k , "Units") <- "Meters"

f1 <- factor(letters)
print(f1)
levels(f1) <- rev(levels(f1))
print(f1)


f2 <- rev(factor(letters))
f3 <- factor(letters, levels = rev(letters))
print(f3)

read.csv(`2016_10_11_plate_reader`)
typeof(`2016_10_11_plate_reader`)



nrows(mtcars)
length(mtcars)
#length is a vector, which gives you the items in the row and nrows tells you how many
#rows total


#two different ways to subset the same column
cyl <- mtcars[,2]
print(cyl)

cyl4 <- mtcars$cyl
print(cyl4)

#-----------------

#this will give the weight of the cars 
#that are less than 3 or more than 4.
carwt <- mtcars[mtcars$wt < 3.0 | mtcars$wt > 4.0, ]
print(carwt)

#this will make a matrix with just the wt and mpg for each car.
carmpgwt <- mtcars[, c("mpg", "wt")] 
print(carmpgwt)

#finding the cars that have the mpg equal to the median mpg of the data frame
efficentcar <- median(mtcars$mpg)
medcarmpg <- mtcars[mtcars$mpg == efficentcar, ]
print(medcarmpg)
