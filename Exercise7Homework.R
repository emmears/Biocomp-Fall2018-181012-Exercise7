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


###Return a dataframe for flowers with Sepal.Width greater than a value specified by the function user
i = 3.1 #define desired sepal width
sepalwidth <-function(iris){
  onlysepalwidth = iris[iris$Sepal.Width > i ,]
  sepaldata = data.frame(onlysepalwidth)
  return(sepaldata)
  }
sepaldata


###Write the data for a given species to a comma-delimited file with the given species name as the file name. 
######Hint: look at paste() to add the .csv extension to your file in the function.
species = "setosa" #define desired species
speciescount <- function(iris){
  selectspecies = iris[iris$Species == species,] 
  newfile = write(selectspecies, file = "species", sep = ",")
  return(newfile)
}


