bad.adder <- function() {
  browser()
  
  if(class(x) != "numeric") {
    stop("x is not a numeric vector")
    #or
    warning("x is not a number")
    #or
    message("x is not numeric, but I'll see what I can do.")
  }
  
  bad.sum <- sum(x + y + rnorm(1))
  
  #Functions return the last object that is defined
  #We can also explicitly state the return value:
  #return(bad.sum)
  #If we just state it like this it will auto-print
  bad.sum
}


