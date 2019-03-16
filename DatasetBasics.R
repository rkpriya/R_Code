#Creating datasets
# Creating a data frame can also be done without first saving vectors 
children <- data.frame(
  name = c("al", "bea", "carol"),
  age = c(6, 7, 4),
  hair = c("brown", "green", "blond")
)
children

##Dataset structure
countries <- data.frame(
  expand.grid(country = c("USA", "China", "Sudan"), year = 1994:1996),
  gdp_pc = round(runif(9, 1000, 20000), 0)
)
countries
?expand.grid
??gdp_pc
?runif
##Dimensions
dim(countries)
nrow(countries)
ncol(countries)
#Snapshots
head(countries)
tail(countries)
# Get some summary information about each variable
summary(countries)
# Number of observations by country 
table(countries$country)
# Proportion of observations by country 
prop.table(table(countries$country))
countries[2, 3]
# Access entire row 5
countries[5, ] #note: leaving second argument blank
# Access entire column 3
countries[, 3] #note: leaving first argument blank
# Access a column using column/variable name (two equivalent approaches)
countries$year
countries[, "year"]
# Get mean gdp per cap
mean(countries$gdp_pc)
countries[countries$year == 1995 & countries$country == "USA", ]
world <- read.csv("world-small.csv") 
class(world)
dim(world) #the number of rows and columns 
head(world) #the first few rows of the dataset
summary(world) #a summary of the variables in the dataset
