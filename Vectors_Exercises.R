#What is the mean age of the people in your vector? 
#Find out in two ways, with and without using the mean() command.

Age<-sample(10:100,30)
Age
SumAge <- sum(Age)
SumAge
MeanAge<- SumAge/length(Age)
MeanAge

#How old is the youngest person in your vector? 
#(Use an R command to find out.)
young<-min(Age)
young
#------------------------------
#What is the age gap between the youngest person 
#and the oldest person in your vector? 
#(Again use R to find out, and try to be as general as possible in the sense that 
#your code should work even if the elements in your vector,
#or their order, change.)
Agegap<-max(Age)-min(Age)
Agegap
#------------------------------
#How many people in your vector are above age 25? 
#(Again, try to make your code work even in the case that your vector changes.)
Above25=Age[Age >25]
Above25
#------------------------------
#Replace the age of the oldest person in your vector 
#with the age of someone else you know.
Age[Age==max(Age)]<-Age[2]
Age
#------------------
#Create a new vector that indicates how old each person in your vector
#will be in 10 years.
NewAge<-Age+10
NewAge
#------------------------
#Create a new vector that indicates what year each person 
#in your vector will turn 100 years old.
Year100=2019 + 100-Age
Year100
#--------------------------
#Create a new vector with a random sample of 3 individuals 
#from your original vector. What is the mean age of the people in this new vector?
AgeSample<-sample(Age,3)
AgeSample
mean(AgeSample)
#----------------