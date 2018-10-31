#####################################################
###################EXERCISE 7########################
#####################################################

#Honestly I am still struggling with writing functions 
##PROBLEM 1
#Write a function that returns the odd (1, 3, 5, etc.) rows of any dataframe passed as an argument.
j= 1:10000
data = #define your desired dataframe as the object data
oddsonly <- function(data){
  odds = j+2
  oddrows = data$columnnameofrownumber = j+2
  return(oddrows)
}
####I really have not been able to figure this one out ^^

# Brittni: You set up the function correctly, but you needed to get sequences of odd numbers and the subset (-0.75).
# Here is the answer:
odds=function(data){
  oddSeq=seq(from=1, to=nrow(data), by=2)
  oddDF=data[oddSeq,]
  return(oddDF)
}
odds(iris)



##PROBLEM 2
#Repeat a subset of last week's exercise, but write functions to accomplish these tasks.
###Return the number of observations for a given species included in the data set
iris = read.csv('iris.csv')
species = "setosa" #define desired species
speciescount <- function(iris){
  selectspecies = iris[iris$Species == species,] 
  count = head(selectspecies)
  rows= nrow(count)
  return(rows)
}

# Brittni: This was almost perfect (-0.25). We wanted to just count the number of obs of a species, not the head. 
# This would have been perfect:

speciescount <- function(iris){
  selectspecies = iris[iris$Species == species,] 
  rows= nrow(selectspecies)
  return(rows)
}

###Return a dataframe for flowers with Sepal.Width greater than a value specified by the function user
i = 3.1 #define desired sepal width
# Brittni: This does work, but you want to define the value as an argument in the function. (-0.1)
sepalwidth <-function(iris){
  onlysepalwidth = iris[iris$Sepal.Width > i ,]
  sepaldata = data.frame(onlysepalwidth)
  return(sepaldata)
  }
sepaldata # Brittni: To call the function, you want to use sepalwidth(iris) (-0.1)



###Write the data for a given species to a comma-delimited file with the given species name as the file name. 
######Hint: look at paste() to add the .csv extension to your file in the function.
species = "setosa" #define desired species 
# Brittni: Need to define the value as an argument (-0.1)
speciescount <- function(iris){
  selectspecies = iris[iris$Species == species,] 
  newfile = write(selectspecies, file = "species", sep = ",") # Brittni: This doesn't quite work. We need write.csv, and you need to make the file name with the extension using paste(). (-0.25)
  return(newfile)
}
