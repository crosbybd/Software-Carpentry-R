# this script loads and analyzes some cats

cats <- read.csv("cats.csv", as.is=TRUE)
cats$likes_string <- as.logical(cats$likes_string)
str(cats)

vec <- c(4:10)
vec

vec[3]
vec[1]
vec[1:3]
vec[-1]
length(vec)

vec[length(vec)]

a_list <- list(1, 4.5, TRUE, NA, c(1, 3, 54))
a_list

length(a_list)
a_list[1]
class(a_list[1])

#we just got the type of data called "list" - not useful - need double square brackets

class(a_list[[1]])

#now it shows us that this single element is numeric

#we can name our list

names(a_list)

#right now, our name is "NULL" a default name

names(a_list) <- c("first", "second", "third", "and so on", "etc")
a_list
a_list$etc

#this looks familiar - data.frames are simply lists

typeof(cats)

#we want to cover one more type of data
#matrix

thematrix <- matrix(1:10, nrow=5, ncol=2)
thematrix

#a matrix like a data.frame - another dimension
#every column, row has to be the same
#matrices and vectors treated as the same
#an array is a collection of all the same elements
#an array is a matrix with, say, 3 dimensions - an image
#could have a 4th dimension - a sequence of images (like a video)

thematrix * 5

#want to get values out of the matrix
#our rows are the first digit and columns are the second digit

thematrix[1, 2]
thematrix[3,1]
thematrix[3,]
thematrix[,1]

cats
cats[,1]
cats[2,]

#can print number of rows in a data.frame

nrow(cats)
ncol(cats)

#challenge questions - Part 4 - looking at Data Structures

#Challenge 1

vec_example <- c(1:26)
vec_example * 2

names (vec_example) <- LETTERS

vec_example

#LETTERS is an existing vector in R


#Challenge 2

cats
str(cats)

class(cats$coat)
class(cats$weight)
class(cats$likes_string)

catsfactors <- read.csv(file="cats.csv", colClasses=c(NA, NA, "character"))
str(catsfactors$coat)

#Challenge 3

cats["coat"]
cats$coat
cats[1]
cats[[1]]
cats[1,1]

#dollar sign addresses items by name, single brace replaces index number with column name

#Challenge 4

#length of the matrix will produce the number of elements??

length(thematrix)

#Challenge 5

matrix_example <- matrix(1:50, nrow=10, ncol=5)
matrix_example

?matrix

rm(matrix_example)
matrix_example <- matrix(1:50, nrow=10, ncol=5, byrow=TRUE)
matrix_example

#Challenge 6

?list

list_example <- list(c("character", "factor", "integer", "logistic"), c("data.frame", "vector", "list", "matrix"))
list_example

#Challenge 7

matrixmatrix <- matrix(c(4, 1, 9, 5, 10, 7), ncol=2, byrow=TRUE)
matrixmatrix

#using cbind function

cbind(cats, cats)

#adds more columns

widecats <- cbind(cats, cats)

View(widecats)

rbind(cats, cats)

#this adds more rows

#what if we want to add a column??

age <- c(1, 2, 6, 8, 11)

cats$age <- age

#when you are trying to replace or add a column, need to have same number of elements

age <- c(1, 2, 6, 8)

cats$age <- age

cats

