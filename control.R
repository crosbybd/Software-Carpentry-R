#using "if" and "l" statements

gap <- gapminder
    
number <- 11
    if (number > 0) {print("The number was greater than 0")}
    
    #change number
    
    number <- -11
    if (number > 0) {print("The number was greater than 0")}
    
    if (number > 0) {print("The number was greater than 0")} else {print("The number was not greater than 0")}
    
    #what if the number equals 0? How do we test for that?
    
    if (number > 0) {print("The number was greater than 0")} else if (number == 0) {print("The number was equal to 0")} else {print("The number was not greater than 0")}
    
    number <- 5
    
    if (number > 0) {print("The number was greater than 0")} else if (number == 0) {print("The number was equal to 0")} else if (number >= 20) {print("The number was greater than or equal to 20")} else {print("The number was not greater than 0")}
    
    number <- 11

#if you want two conditions to be true

if (number > 0 && number < 10) {print("The number was greater than 0 and less than 10")}

#if you want one or another condition to be true

if (number > 0 || number < 0) {print("The number was either greater than 0 or less than 0")}


for (variable in 1:5) {print(variable)}

#can comment out a bunch of code using

unique(gap$continent)

for (continent in unique(gap$continent)) {print(continent)}

for (continent in unique(gap$continent)) {
  data <- gap[gap$continent == continent, ] 
  print(continent) 
  print(mean(data$pop))
  }


#get the mean gdp in billions for every country

#to change a bunch of code into comments (e.g if you wanted to run the whole script except for one piece of it), highlight the undesired code, and hit ctrl+shift+c
