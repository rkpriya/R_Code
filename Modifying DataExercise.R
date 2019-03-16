#Exercises
#1.Read the world-small.csv dataset into R and 
#store it in an object called world.
world <- read.csv("world-small.csv") 
world
#2Subset world to European countries. 
#Save this subset as a new data frame called europe.
europe <- filter(world, region == "C&E Europe")
europe

#3Add two variables to europe:
europe
#4A variable that recodes polityIV from 0-20 to -10-10.
#A variable that categorizes a country as "rich" or "poor" based on some cutoff of gdppcap08 you think is reasonable.
#Drop the region variable in europe (keep the rest).
world %>% mutate(polityband=ifelse(polityIV <=10,"-10-10","0-20"))

#5Sort europe based on Polity IV.

#Repeat Exercises 2-5 using chaining.


#What was the world's mean GDP per capita in 2008? Polity IV score?
  
#What was Africa's mean GDP per capita and Polity IV score?
  
#What was the poorest country in the world in 2008? Richest?
#How many countries in Europe are "rich" according to your coding? 
#How many are poor? What percentage have Polity IV scores of at least 18?
