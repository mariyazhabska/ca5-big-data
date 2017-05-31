#Simple calculator program

#Remove variables from workspace & clear console
rm(list=ls())
options(warn=-1)
#10 Functions:
#1
add <- function(x, y) {
  return(x + y)
}
#2
subtract <- function(x, y) {
  return(x - y)
}
#3
multiply <- function(x, y) {
  return(x * y)
}
#4
divide <- function(x, y) {
  if (y==0){
    return ("error, cannot divide by 0")
  } else {
    return(x / y)
  }
}
#5
exponent <- function(x,y){
  return(x**y)
}
#6
factorial <- function(x) {
  y <- 1
  for (i in 1:x){
    y <- y*((1:x)[i])
  }
  return(y)
}
#7
squareroot <- function(x){
  return (sqrt(x))
}
#8
cosine <- function(x){
  return(cos(x*pi/180))
}
#9
sine <- function(x){
  return(sin(x*pi/180))
}
#10
tan <- function(x){
  if(x %% 180 == 0){
    return(0)
  } else if (x %% 90 == 0){
    return ("error")
  } else {
    return (tan(x*pi/180))
  }
}
###################################################################
#Getting numbers from the user
print("Select operation.")
print("1.Add")
print("2.Subtract")
print("3.Multiply")
print("4.Divide")
print("5.Exponent")
print("6.Factorial")
print("7.Squareroot")
print("8.Cosine")
print("9.Sine")
print("10.Tan")

#as.numeric to allow input of floating numbers
choice = as.numeric(readline(prompt="Enter choice[1/2/3/4/5/6/7/8/9/10]: "))

#Two numbers input for the first 5 options, only one number for the rest
num1 = as.numeric(readline(prompt="Enter number: "))
if(choice>=6){
  num2 = as.numeric(readline(prompt="Enter second number:"))
}

operator <- switch(choice,"+","-","*","/","to the power of","factorial",
                   "square root", "cosine", "sine", "tangent")
result <- switch(choice, add(num1, num2), subtract(num1, num2), 
                 multiply(num1, num2), divide(num1, num2), exponent(num1, num2),
                 factorial(num1), squareroot(num1), cosine(num1), sine(num1), tan(num1))

print(paste(num1, operator, num2, "=", result))


#Testing calculator functions
print(add(2,5))
print(add(3,10))
print(subtract(2,5))
print(subtract(3,10))
print(multiply(2,5))
print(multiply(3,10))
print(divide(2,5))
print(divide(2,0))
print(exponent(2,2))
print(exponent(3,3))
print(factorial(10))
print(factorial(6))
print(squareroot(9))
print(squareroot(25))
print(cosine(90))
print(cosine(120))
print(sine(90))
print(sine(120))
print(tan(90))
print(tan(120))

options(warn=-0)
