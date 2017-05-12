    library(tidyr)
    library(ggplot2)
    library(dplyr)

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

    data <- read.csv("testdata.csv") #testdata from documents.

      # Define a function that can issue warnings and errors
    Adding_Function <- function(df, a, b, sum) {
      if (class(df) != "data.frame"){
        warning("There isnt a dataframe")
    }
       if( !(a %in% colnames(df)) | !(b %in% colnames(df))){
        warning("Not a column to add")
       }
     
      #trycatch function to catch the errors that would happen in the function.
      
      tryCatch(df$sum <- (df[ , a] + df[, b]),
               warning=function(w){   
                 message("Cannot add non-numerics")
                 return(NA)
                 
               })
      return(df)
    }



    #Using loops to preform an iteration   
      test.vec <- 1:10^4
    my_sum <- function(x){
      y <- 0
      for(i in x){
      y <- y+i
      }
      return(y)
    }

    #This should result in 50005000
    my_sum(test.vec)

    ## [1] 50005000

    # Showing the loop function working with another dataset.
    #install.packages("microbenchmark")
    library(microbenchmark)

    test.vec <- 1:10^4
    microbenchmark(
        my_sum(test.vec),
        sum(test.vec)
        )

    ## Unit: microseconds
    ##              expr      min       lq       mean   median        uq      max
    ##  my_sum(test.vec) 2419.448 2553.345 2915.17712 2688.274 3133.5220 4549.111
    ##     sum(test.vec)    9.931   10.224   13.32997   12.553   14.8345   25.550
    ##  neval
    ##    100
    ##    100

does the for loop addition method work at a different pace than the
default method, and if so, why?

Ans:

The loop method is a continuous iteration of additon where as the
default method allows the same thing to occur at a slower rate. Loops in
general allow the completion of a task to occur at a quicker rate than a
simple function.
