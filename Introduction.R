hello_world <- "hello world"
hello_world
-----------------
# Create two objects and perform simple arithmetics
a <- 5
b <- 7
a - b
a + b + 10

# Create a third object 
w <- a + b
w
#---------------------
# Logical tests 
w - b == a
w - b > a
b <- 1             #overwrite b 
x <- w - b > a
x
#-------------------
install.packages(c("plyr", "dplyr", "tidyr"), dep = T)
pkgs <- c("plyr", "dplyr", "tidyr")
sapply(pkgs, require, character.only = T)
#-------------------


# Numeric vectors 
n1 <- 20
n2 <- c(20, 25, 60, 55)

# Character vectors
c1 <- "Blue"
c2 <- c("Red", "Green", "Purple")

# Logical vectors
l1 <- TRUE
l2 <- c(TRUE, FALSE, TRUE) 

name<-c("a1","bea","Carol")
age<-
Children<-data.frame(name,age,hair)

