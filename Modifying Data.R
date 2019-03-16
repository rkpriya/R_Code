countries <- data.frame(
  expand.grid(country = c("USA", "China", "Sudan"), year = 1994:1996),
  gdp_pc = round(runif(9, 1000, 20000), 0))

countries
require(plyr)
require(dplyr)
filter(countries, country == "China")
filter(countries, year == 1996)
filter(countries, country == "USA" & year == 1995)
filter(countries, gdp_pc > 5000 & gdp_pc < 14000)
countries
countries %>% filter(country == "China") 
countries %>% filter(year == 1996)
countries %>% filter(country == "USA" & year == 1995)
countries %>% filter(gdp_pc > 5000 & gdp_pc < 14000)
#Sorting
# Sort by country names 
countries %>% arrange(country) 
# Sort by GDP (ascending is default) 
countries %>% arrange(gdp_pc)
# Sort by GDP (descending)
countries %>% arrange(desc(gdp_pc))
# Sort by country name, then GDP
countries %>% arrange(country, gdp_pc)

##Dropping
# Keep country and GDP
countries %>% select(country, gdp_pc)
# Same thing using '-', implying you want to delete a variable
countries %>% select(-year)
# Selecting and renaming in one
countries %>% select(country_name = country, gdp_pc)
countries

#Renaming
# Rename GDP per capita
countries %>% rename(GDP.PC = gdp_pc)
countries
#Unique values
countries %>% distinct(country)
countries2 <- rbind(
  data.frame(country = "USA", year = 1994, gdp_pc = 10000),
  countries
)
countries2 
countries2 %>% distinct(country, year)
#New variables
# Create a new variable that has GDP per capita in 1000s
countries %>% mutate(gdppc_1k = gdp_pc / 1000)
# Create a new variable with lower-case country names
countries %>% mutate(country_lc = tolower(country))
# Both in one statement
countries %>% mutate(gdppc_1k = gdp_pc / 1000,
                     country_lc = tolower(country))
countries %>% mutate(country = tolower(country))
#ifelse() is a logical function that is useful for modifying variables in datasets (or individual vectors). Here's an illustration of how it works:
numbers <- 1:10
ifelse(numbers > 5, numbers * 10, numbers / 10)
# Read world-small dataset 
world <- read.csv("world-small.csv")
head(world)
# Create a new variable equal to "democracy" if a country has
# a polity score >= 15 and "autocracy" otherwise 
world <- world %>% mutate(democracy = ifelse(polityIV >= 15, "democracy", "autocracy"))
head(world)
# Or represent this information as a dummy variable instead 
world <- world %>% mutate(democracy = ifelse(polityIV >= 15, 1, 0))
head(world)
#revalue()
table(world$region)
world$region <- revalue(world$region, c(
  "C&E Europe" = "Europe",
  "Scandinavia" = "Europe",
  "W. Europe" = "Europe",
  "N. America" = "North America",
  "S. America" = "South America"))
table(world$region)
class(world$country)
class(world$region)
head(world %>% mutate(gdppcap08 = as.numeric(gdppcap08)))
class(world$gdppcap08)
countries_new <- filter(countries, year != 1994) #drop year 1994
countries_new <- arrange(countries_new, country) #sort by country names
countries_new <- mutate(countries_new, country = tolower(country), #convert name to lower-case
                        gdppc_1k = gdp_pc / 1000) #create GDP pc in 1000s
countries_new
countries_new1 <- countries %>%
  filter(year != 1994) %>%
  arrange(country) %>%
  mutate(country = tolower(country), gdppc_1k = gdp_pc / 1000)
countries_new1
