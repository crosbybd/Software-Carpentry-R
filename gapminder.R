library(gapminder)

#gapminder adds special hidden dataset called gapminder

gapminder

gap <- gapminder
View(gap)

#this dataset includes some U.N. demographic data

str(gap)

#for all intents and purposes, this file is a data.frame

#get names and dimensions of gap

colnames(gap)
dim(gap)

#number of rows or columns individually

nrow(gap)
ncol(gap)

summary(gap)

#summary gives us summary statistics for each column
#gives different statistics based on what kind of data it is

#if we want specific statistics, we have to write a line specifically for that

mean(gap$gdpPercap)

sum(gap$pop)

#Warning message:
#In sum(gap$pop) : integer overflow - use sum(as.numeric(.))

#this warning message - the number was too large to add up

sum(as.numeric(gap$pop))

#we followed its advice

sd(gap$gdpPercap)

#maybe we are only interested in certain observations?

numbers <- c(1, 5, 10, 15, 3, 5, 67)
numbers

#want only numbers greater than or equal to 10

numbers >= 10

#get TRUE and FALSE values

numbers[numbers >= 10]

#this function gives us only numbers greater than or equal to 10
#what about NAs?

numbers <- c(1, 5, 10, 15, 3, 5, 67, NA, NA)
numbers[numbers >= 10]

mean(numbers)

is.na(numbers)

numbers[is.na(numbers)]

numbers[!is.na(numbers)]

mean(numbers[!is.na(numbers)])

?mean

#mean function has a function for removing nas
#na.rm

mean(numbers, na.rm=TRUE)

text <- c("a", "b", "a", "d", "cheesecake")
text == "a"

text[text == "a"]

text[text != "a"]


#if we want all of Canada's data in gap file

gap$country == "Canada"

gap$country[gap$country == "Canada"]

gap[gap$country == "Canada", ]

gap[gap$country == "Asia", ]

gap[gap$continent == "Asia", ]

Asia <- gap[gap$continent == "Asia", ]

Asia

#if we want only the first few observations or only the the last few, use head or tail functions

head(gap)
tail(gap)

#somewhere in the middle???

gap[1000,]

gap[1000:1005,]

#we include the comma because we are indexing only the first dimension (row) - we could include a second dimension (something after the comma) to show a specific column or set of columns

gap[1000:1005, 2:4]

unique(Asia$continent)

unique(Asia$country)

#unique fucntion shows us unique datapoints in a certain variable

unique(Asia$pop)

text

#R has special operators with percent signs around them

text %in% c("a", "cheesecake")

#checks to see if values in text are a or cheesecake
#which elements in this set are also in this other set

text[text %in% c("a", "cheesecake")]

#what is the mean gdpPercap for China, Canada, and Cambodia
#compute the GDP for these countries as well for each of the years

mean %in% gap$gdpPercap("Canada", "China", "Cambodia")

mean(gap$gdpPercap %in% r("Canada", "China", "Cambodia"))

mean(gap$gdpPercap == "Cambodia")

mean(gap$gdpPercap$Canada)

mean(gap$gdpPercap("Canada",))

mean(gap$gdpPercap[gap$gdpPercap == "Canada"])

gap$gdpPercap[gap$gdpPercap == "Canada", ]

#how many levels to this?

text %in% gap$gdpPercap("Canada", "China", "Cambodia")

numeric %in% gap$gdpPercap("Canada")

#none of these worked.... :(

countries <- gap[gap$country %in% c("China", "Canada", "Cambodia"),]

countries

mean(countries$gdpPercap)

#computing actual GDP for these countries
#make a new column

countries$gdp <- countries$gdpPercap * countries$pop / 1e9
countries$gdp

#why do we get a difference between == and %in% ???

countries <- gap[gap$country == c("Canada", "China", "Cambodia")]

unique(countries$country)

#the recycling rule is one of R's hidden traps