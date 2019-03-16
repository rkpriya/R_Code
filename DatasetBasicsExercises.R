#Exercises
#Read the world-small.csv data into R and 
#store it in an object called world. 
#(Set your working directory using code first.)
setwd(path-to-dir)
world <- read.csv("world-small.csv") 

#(Conceptual) What is the unit of analysis in the dataset? 
#What's the name of the dataset's id variable?

#How many observations does world have? 
#How many variables? Use an R command to find out.
dim(world)

#Use brackets and a logical statement to inspect all the values for 
#Nigeria and United States. That is, your code should return two 
#entire rows of the dataset.
summary(world)
head(world)
world[world$country == "Nigeria" | world$country == "United States",  ]
world[world$country == "United States" | world$country == "Nigeria",  ]
#Use R to return China's Polity IV score. As in question 4, 
#use a logical statement and brackets, but don't return the entire row. 
#Rather, return a single value with the Polity IV score.
world$polityIV[world$country == "China"]

#What is the lowest GDP per capita in the dataset? 
#(Use R to return only the value.)
min(world$gdppcap08)
#What country has the lowest GDP per capita? 
#(Your code should return the country name and be general enough 
#so that if the observations in the dataset - or their order - change, 
#your code should still return the country with the lowest GDP per capita.)
world[world$gdppcap08 == min(world$gdppcap08),]
