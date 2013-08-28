# Adapted from Adler2010

# Basic Vectors
c(0)
c(0,1)
c(0,1,2)

# Sequence Operator
1:50

# Operations on vectors
c(1,2,3) + c(10,20,30)
c(1,2,3) * c(10,20,30)
c(1,2,3) - c(10,20,30)
c(1,2,3) / c(10,20,30)

# Vectors of different sizes
c(1,2,3) + 1
c(1,2,3) * 2
1 / c(1,2,3)
1 - c(1,2,3)
c(1,2,3) + c(10,10)    # Error
c(1,2,3,4) + c(10,10)

# Variables
x <- 1
y <- 2
z <- c(x,y)

# Functions
fn <- function(x,y) {c(x+1, y+1)}
fn(2,3)

# Both forms are legal
f <- function(x,y) x+y
g <- function(x,y) {x+y}

# Default value for argument
h <- function(x,y=10) {x+y}

# Variable-length argument list using (...)
v <- c(sqrt(1:100))
f <- function(x,...) {print(x); summary(...)}
f("Here is the summary for v.", v, digits=2)

# Function that sums all of its arguments
addemup <- function(x,...) {
   args <- list(...)
   for (a in args) x <- x + a
   x
}

addemup(1,1)
addemup(1,2,3,4,5)

# Using return to specify the value returned by the function
f <- function(x) {return(x^2 + 3)}
f(3)

# Return is often omitted
f <- function(x) {x^2 + 3}
f(3)

## Data Structures

# Array
a <- array(c(1,2,3,4,5,6,7,8,9,10,11,12),dim=c(3,4))
a[,1]
a[1,]
a[1,1]
a[3,4]

# Vectorw
v <- c(1,2,3,4,5,6,7,8,9,10,11,12)

# Matrix (a two-dimensional array)
m <- matrix(data=c(1,2,3,4,5,6,7,8,9,10,11,12),nrow=3,ncol=4)

# Arrays can have more than two dimensions.
w <- array(c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18),dim=c(3,3,2))
w[1,1,1]
w[1,,1]
w[,1,1]

# Lists 
e <- list(thing="hat", size="7.50")
e$thing
e[[1]]
e$size
e[[2]]

# A list can contain another list
g <- list("this list references another list", e)

# Data Frame
teams <- c("SEA","SFO","STL","ARZ")
w     <- c(12,11,7,4)
l     <- c(4,5,9,12)
nwest <- data.frame(teams,w,l)
nwest$w
nwest$teams
nwest$teams=="STL"

# Classes
class(teams)
class(w)
class(nwest)
class(class)
nwest$l[nwest$teams=="STL"]

# Generic Functions
1 + 2
as.Date("2013-08-28") + 7

# Models and Formulas
cars.lm <- lm(formula=dist~speed,data=cars)
summary(cars.lm)

lm(dist~speed,data=cars)
summary(lm(dist~speed,data=cars))

