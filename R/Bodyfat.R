#### Calculate body fat percentage ##

Weight <- readline("Enter weight in pounds. ")
Weight <- as.numeric(Weight)
Height <- readline("Enter your height in inches. ") 
Height <- as.numeric(Height)
Age <- readline("Enter your age. ")
Age <- as.numeric(Age)

BMI <- Weight*0.45/Height*2.54

Gender <- readline("Man or Woman? ")
if (Gender == "Man"){
  Percentage <- (1.20*BMI) + (0.23*Age) - (10.8) - (5.4)
} else{
  Percentage <- (1.20*BMI) + (0.23*Age) - (5.4) 
}

Percentage <- Percentage*10

print(c("Your body fat percenage is", Percentage), quote = FALSE)