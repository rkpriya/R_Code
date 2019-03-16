#
#Merge
#merge()

#aggregate()

View(mtcars)
dplyr::tbl_df(iris)
#Converts data to tbl class. tbl's are easier to examine than data frames

dplyr::glimpse(iris)
#------------------------------------
install.packages("devtools")
devtools::install_github("rstudio/EDAWR")
library(EDAWR) 
#-------------------------------------
View(storms)
View(cases)
View(pollution)

names(cases)[-1]
unlist(cases[1:3,2:4])
library(tidyr) 
gather(cases, "year", "n", 2:4)
spread(pollution, size, amount)
separate(storms, date, c("year", "month", "day"), sep = "-")
#storm    wind pressure year  month day  
#<chr>   <int>    <int> <chr> <chr> <chr>
#1 Alberto   110     1007 2000  08    03   
#2 Alex       45     1009 1998  07    27   
#3 Allison    65     1005 1995  06    03   
#4 Ana        40     1013 1997  06    30   
#5 Arlene     50     1010 1999  06    11   
#6 Arthur     45     1010 1996  06    17   
unite(storms, "date", year, month, day, sep = "-") 
#---------------------------------------------------------
#Datasets related to flights that departed from NYC in 2013
install.packages("nycflights13")
library(nycflights13)
library(dplyr)
library(EDAWR)
View(storms)
select(storms,name,pressure)
#- Select everything but 
select(storms, -name)
#: Select range 
select(storms,long:pressure)
