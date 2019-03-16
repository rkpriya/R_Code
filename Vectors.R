#Creating vectors
# Numeric vectors 
n1 <- 20
n2 <- c(20, 25, 60, 55)
n2
#-----------
# Character vectors
c1 <- "Blue"
c2 <- c("Red", "Green", "Purple")
c2
# Logical vectors
l1 <- TRUE
l2 <- c(TRUE, FALSE, TRUE) 
#c()
#As illustrated above, one very common way to create vectors with more than one element is to use c() ("concatenate"), 
#which simply combines whatever values you specify in the parentheses.
#seq() applies to numeric vectors only:
n1 <- seq(from = 0, to = 10, by = 2)  
n1
n2 <- seq(from = 0, to = 10, length.out = 5)   #using 'length.out'
n2
n3 <- seq(1, 2, 0.1)   #no argument names specified; automatically uses 'from', 'to', 'by'
n3
n4 <- 1:5    #shortcut for integer sequence; same as 'seq(1, 5, 1)'
n4
#rep() Vectors can also be created using rep(). As the name implies, 
#this function is useful if you want to repeat an element or elements.
rep(1, 5)
rep("blue", 3)
rep(TRUE, 4)
rep(c("blue", "red"), 3)
c(rep(seq(0, 6, 2), 2), 4:1) 
s <- rep(seq(0, 6, 2), 2)
c(s, 4:1)
#Subsetting with logicals
fruits <- c("apple", "banana")
fruits[c(TRUE, FALSE)]
# Create a vector with 30 fruits 
fruits <- rep(c("orange", "apple", "banana"), 10)
fruits 
# Create a logical vector for dropping bananas
# Note: I'm creating the exact same logical vector three times (overriding it each time)
# This is for illustrative purposes; using one of these is sufficient
lv <- fruits == "orange" | fruits == "apple" 
lv <- fruits != "banana" 
lv <- fruits %in% c("orange", "apple")
lv
fruits[lv]
# Create a numeric vector
numbers <- seq(0, 100, by = 10)
numbers
# Illustrate three different filters
numbers[numbers <= 50 & numbers != 30]
numbers[numbers == 0 | numbers == 100]
numbers[numbers > 100]
#Subsetting using indexing
fruits <- c("apple", "banana")
fruits[1]
fruits <- rep(c("orange", "apple", "banana"), 10)
fruits[c(10, 20)]
fruits[seq(1, 30, by = 5)]
# Draw 10 elements at random from 1 to 100 
sample(1:100, size = 10)
fruits <- rep(c("orange", "apple", "banana"), 10)
fruits[sample(1:30, size = 5)]
##Subsetting using names
age <- c(50, 55, 80)
names(age) <- c("mom", "dad", "grandpa")
age
age[c("dad", "grandpa")] #subset
# Recreate vector with age values from above
age <- c(50, 55, 80)
names(age) <- c("mom", "dad", "grandpa")
# Three ways of changing grandpa's age
# Note: you'd only need to use one of these
age[age == 80] <- 82 #using a logical statement
age[3] <- 82 #using indexing
age["grandpa"] <- 82 #using naming
# Three ways of changing grandpa's age
# Note: you'd only need to use one of these
age[age == 80] <- 82 #using a logical statement
age[3] <- 82 #using indexing
age["grandpa"] <- 82 #using naming
age
fruits <- rep(c("orange", "apple", "bamama"), 5) 
fruits #bamamas anyone? 
# Let's fix the misspelled element
fruits[fruits == "bamama"] <- "banana"
fruits
##Vector arithmetics
numbers <- 1:10
numbers
# One value modifying all values in a vector 
numbers <- numbers / 10
numbers 
# One value modifying a subset of a vector 
numbers[numbers > 0.5] <- numbers[numbers > 0.5] * 100
numbers
# Two vectors with the same number of elements 
numbers1 <- 1:10
numbers2 <- 10:1
numbers3 <- numbers2 - numbers1
numbers3
# Replacing a subset of a vector using another vector
numbers <- 1:10
numbers[numbers > 5] <- 5:1
numbers
# Modify a vector (or a subset of a vector) using a function
numbers <- 1:10
sqrt(numbers) #square root
exp(numbers) #exponentiate
log(numbers[c(1, 5, 10)]) #natural log
numbers <- sample(1:1000, 10)
numbers
class(numbers) #check the class
length(numbers) #number of elements 
max(numbers) #maximum value
min(numbers) #minimum value
sum(numbers) #sum of all values in the vector
mean(numbers) #meanmean(numbers) #mean
median(numbers) #median
var(numbers) #variance
sd(numbers) #standard deviation
quantile(numbers) #percentiles in intervals of .25 
quantile(numbers, probs = seq(0, 1, 0.1)) #percentiles in invervals of 0.1
summary(numbers) #function that contains many summary stats from above
#Code generalization
fruits <- rep(c("orange", "apple", "banana"), 10)
length(fruits)
random_sample <- fruits[sample(1:30, size = 5)]
random_sample
