# Adapted from Adler2010

# Functions

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

