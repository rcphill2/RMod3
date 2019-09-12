# Look ma, I'm commenting! 

#######################
## Here lies my code ##
#######################

1800 + 87 # The year in which NC State was established
#this is a new line
# so is this
### Description: R code accompanying Module 3 in BAE 495/590. Includes examples of code used to construct and inspect simple data structures in R.
### Author: Natalie Nelson, PhD
### Date created: September 4, 2019
### Last updated: September 4, 2019
rm(list = ls())
#package install####
# install.packages("package-name")
#Load Packages
#library(package-name)
library(tidyverse)

# Section Label -----------------------------------------------------------

# Section 2 ---- 
three <-3
### view(paramter) opens new window to show the contents of the object
## object = variable in R

temp_F <- 90
#convert to Celcius
temp_C <- (temp_F - 32)*(5/9)


# Section 4 Funtions -----

round(7.7777, digits = 1)
round(7.7777, digits = 0)

# round an object

z <- 10.08509472

round(z, digits = 3)

z_rounded <- round(z, digits = 3)

k <- 3.56789

k_roundedup <- ceiling(k)
k_roundeddown <- floor(k)

#logs

log(1)

x <- 400
y <- log10(x)




# Section 5: Vectors ----------


# c() creates an atomic vector

# # Integer vectors - to specify that a value is an integer, it should be followed by L:
cotton_yield_int <- c(925L, 970L, 983L, 940L, 959L, 933L)
julian_day <- c(20L, 36L, 60L, 82L, 87L, 121L, 150L, 202L, 261L, 289L, 310L, 344L, 360L)
# Double vectors:
cotton_yield_dbl <- c(925, 970, 983, 940, 959, 933)
dissolved_oxygen <- c(8.3, 7.88, 6.21, 6.0, 6.57, 6.89, 7.3, 7.4, 8.21, 9.1)
water_temp <- c(30.0, 31.3, 29.02, 30.667, 27.90)
# Character vectors:
field_ids <- c("field_1", "field_2", "field_3", "field_4", "field_5", "field_6")
dna_bases <- c("ACCG", "GCAT", "TAGG")

# dna_bases at the beginning of a new vector, dna_bases_expanded:
dna_bases_expanded <- c(dna_bases, "AGCT", "ACCG", "TGGA")
dna_bases_expanded
dna_bases
# water_temp inserted in the center of a new vector, water_temp_expanded:
water_temp_expanded <- c(16.3, 16.1, water_temp, 16.9, 16.67)
water_temp_expanded
water_temp

# Create a vector of 1-to-10
one_to_ten <- 1:10
one_to_ten
# Create a vector of 1-to-10 using the L notation
1L:10L 
# If the numbers are flipped, the vector will reverse direction
10:1
# The : symbol can also be used to string together several sequential vectors using c()
c(1:5, 10:15, 100:105)

#if you want a sequence with something other than 1 as the index use


# 0 to 5 by 0.5
seq(from = 0, to = 5, by = 0.5)
# 0 to 1 by 0.1
seq(from = 0, to = 1, by = 0.1)
# 0 to 20 by 2
seq(from = 0, to = 20, by = 2)
# 10 to 100 by 10
ten_by_ten <- seq(from = 10, to = 100, by = 10)
ten_by_ten


#rep() creates a repititve vector
# Repeat a value of 2, 5 times
rep(2, times = 5)
# Repeat a vector of 1:3, 3 times
rep(1:3, times = 3)
# Repeat a vector of 1:3, 3 times, with each value repeated 2 times
rep(1:3, times = 3, each = 2)
# Repeat the ten_by_ten vector, 2 times
rep(ten_by_ten, times = 2)
# Repeat the ten_by_ten vector, 1 time, with each value repeated 3 times
ten_by_ten_3x <- rep(ten_by_ten, times = 1, each = 3)
ten_by_ten_3x
# Create the "tubthumping" chorus
rep(c("I get knocked down", "but I get up again", "you're never gonna keep me down"), times = 4)


# Length of cotton_yield_int
length(cotton_yield_int)
# Length of ten_by_ten_3x
length(ten_by_ten_3x)
# Length of dna_bases
length(dna_bases)
# Length of dna_bases_expanded
length(dna_bases_expanded)

typeof(cotton_yield_int)
typeof(cotton_yield_dbl)
typeof(field_ids)

class(julian_day)
class(dissolved_oxygen)

# head and tail

long_vector <- 1:100
head(long_vector)
head(long_vector, 10)
tail(long_vector)
tail(long_vector, 20)


# Coercion
# Numeric data mixed with character
numeric_and_character <- c("you're", "about", 0.5, "way", "through")
numeric_and_character # 0.5 was coerced into a character value, which we can tell because 0.5 is now in quotes, "0.5"
typeof(numeric_and_character)

numeric_as_character <- c(2.1, "300", "6", 77.7, 0) # Note that numbers in quotations are interpreted as characters
numeric_as_character # 2.1, 77.7, and 0 were coerced into characters
typeof(numeric_as_character)

# Numeric data mixed with logical
numeric_and_logical <- c(TRUE, 100, FALSE, 200)
numeric_and_logical # TRUE and FALSE were coerced into 1 and 0
typeof(numeric_and_logical)

# Section 6: Vectors and Functions -----

x <- c(1, 2, 3)
y <- c(0, 1, 2)
z <- 1:10

# Multiply x by 2
x * 2

# Square each element in y
y ^ 2

# Multiply x by y
x * y

# Square the product of 3 and the natural log ofx
(3 * log(x)) ^ 2 # Note that the parantheses are applied to indicate order of operations

# Add y and z
y + z

# these were not the same length so y gets repeated to match z
# if we only want to add the part of y that has elements match length of z by adding zeros to y

y_extended <- c(y, rep(0, times = 7))
y_extended
length(y_extended)
y_extended + z

# applying functions to vectors
sum(z)     # Sum all elements in vector z
sum(z, x)  # Sum all elements in vectors z and x
mean(z)    # Calculate the mean of elements in vector z
cumsum(x)  # Calculate the cumulative sum of elements in vector x

#paired t test

observations_field1 <- c(55.5, 60.2, 70.1, 56.8, 90.2, 50.5, 52.4, 62.3, 55.3, 61.4, 57.9, 53.1)
observations_field2 <- observations_field1 * 0.1
t.test(observations_field1, observations_field2, alternative = "two.sided", paired = TRUE)


data(iris)

#functions for inspecting data

## Names:
# colnames(x): Retrieves column names of a data frame
# rownames(x): Retrieves the row names of a data frame

##Content:
# head(x): Display the column names and the top six rows of the data frame  head(x,#) displays certain number of rows
# tail(x): Same as head except for the bottom
# View(x): Opens new tab in your source editor with the contents of the entire data frame

## Dimensions: 
# nrow(x): returns # of rows in data frame
# ncol(x): returns # of cols in data frame
# dim(x): produces rows and columns

## Summary:
# summary(x): Provides summary stats of each col
# str(x): provide detail about the data frame and contents


# Creating data frames:

# Option 1: create vector objects before constructing a data.frame
names <- c("Great Atlantic Hurricane",
           "Hazel",
           "Connie",
           "Ione",
           "Helene",
           "Donna",
           "Diana",
           "Emily",
           "Fran")
# Note this coding style! Whenever you enter a comma to separate function arguments, you can hit enter/return to put the subsequent argument on a new line. RStudio will automatically indent. Although using this style results in your code taking up more space, it is often much easier to find small errors with this style since the text isn't crammed together.

cat <- c(3, 4, 3, 3, 3, 3, 3, 3, 3)

month <- c("Sep", "Oct", "Aug", "Sep", 
           "Sep", "Sep", "Sep", "Aug", "Sep")
# Note You can hit enter/return after any comma

year <- c(1944, 1954, 1955, 1955, 1958, 1960, 1984, 1993, 1996)

data.frame(hurricane = names, 
           category = cat,
           landfall_month = month, 
           landfall_year = year) 
# Note that snake_case is also recommended for column headers!

# Option 2: define vectors in data.frame() directly
data.frame(hurricane = c("Great Atlantic Hurricane", "Hazel", "Connie", "Ione", "Helene", "Donna", "Diana", "Emily", "Fran"), 
           category = c(3, 4, 3, 3, 3, 3, 3, 3, 3),
           landfall_month = c("Sep", "Oct", "Aug", "Sep", "Sep", "Sep", "Sep", "Aug", "Sep"), 
           landfall_year = c(1944, 1954, 1955, 1955, 1958, 1960, 1984, 1993, 1996))


nc_hurricanes <- data.frame(hurricane = names, 
                            category = cat,
                            landfall_month = month, 
                            landfall_year = year)
str(nc_hurricanes)
# Inspect nc_hurricanes using the functions described in section 7.4.

nc_hurricanes_tibble <- as_tibble(nc_hurricanes)
nc_hurricanes_tibble


# Section 8: Subsetting and conditional subsetting -----

water_temp[2]
water_temp[5]


julian_day                     # The entire vector
julian_day[c(1, 3, 6, 7, 10)]  # The first, third, sixth, seventh, and tenth elements


julian_day                                  # The entire vector
length(julian_day)                          # The length of the vector
julian_day[length(julian_day)]              # The last element of the vector
julian_day[ceiling(length(julian_day) / 2)] # The center element of the vector
l <- length(julian_day)                     # An object containing the length of the vector
julian_day[l]                               # The last element of the vector, selected using the length object, l


logical_example <- c(TRUE, TRUE, FALSE, TRUE, FALSE, FALSE) # The logical vector
# Note that TRUE and FALSE do not need to be written in quotes, and RStudio color codes TRUE and FALSE in blue.

field_ids                           # The entire vector
field_ids[logical_example]          # The first, second, and fourth elements of the vector

dna_bases_expanded                  # The entire vector
dna_bases_expanded[logical_example] # The first, second, and fourth elements of the vector

# Logic

# Let's work with the vectors we created to include in the nc_hurricanes data frame. 

# Years in which major hurricanes hit NC in the 20th century: 
year
# In the 20th century, what were the years in which major hurricanes impacted NC prior to 1960?
year < 1960       # conditional statement producing a logical vector
year[year < 1960] # conditional subsetting
# How many major hurricanes impacted NC in the 1990s?
length(year[year > 1989])  # using greater than
length(year[year >= 1990]) # using greater than or equal to
# Which major hurricanes impacted NC in the 1950s?
year < 1960 & year > 1949        # conditional statement producing a logical vector
names[year < 1960 & year > 1949] # conditional subsetting
# In what year did the Great Atlantic Hurricane occur?
names == "Great Atlantic Hurricane"
year[names == "Great Atlantic Hurricane"]
# Which of the major hurricanes in the 20th century landed in September or October?
month %in% c("Sep", "Oct")        # option 1 using %in%
names[month %in% c("Sep", "Oct")]
month == "Sep" | month == "Oct"   # option 2 using |
names[month == "Sep" | month == "Oct"]
# Which of the major hurricanes in the 20th century did not land in September?
month != "Sep"
names[month != "Sep"]
# Which of the major hurricanes in the 20th century was not a category 3?
cat == 3
names[!cat == 3]
# Which of the major hurricanes in the 20th century either occurred after 1990 or was a category 4?
xor(year > 1990, cat == "4")
names[xor(year > 1990, cat == "4")]
#The <, >, <=, and >= operators can also apply to characters, but to check which character is higher in alphabetical order than the other. Note that, the further down the alphabet a character/word is, the “greater” its value. So, "z" is greater than "a".

"q" < "t"
"a" > "b"
"four" > "five"  #WHY?###

# Which of the major hurricanes in the 20th century was not a category 3?
cat != 3               # Conditional statement that produces a logical vector
which(cat != 3)        # Conditional statement with which() = produces a numeric vector
names[which(cat != 3)]
not_cat_3 <- which(cat != 3) # The output of which() can be assign to a vector object
names[not_cat_3]

#Subsetting data frames

# Select the element in first row and third column of the iris data frame
iris[1, 3]
# Select the 10th row of iris
iris[10, ]
# Select the 3rd column of iris
iris[, 3]
# Select the 100th to 120th rows in iris
iris[100:120, ]
# Select the 50th, 55th, and 59th rows in iris
iris[c(50, 55, 59), ]
# Select the 10th and 100th rows in iris and the third through fifth columns
iris_2row_subset <- iris[c(10, 100), c(3:5)]
iris_2row_subset



# First, let's create a new object that only includes the first 5 rows of iris
iris_short <- iris[1:5, ]

# Subset iris_short such that you only keep the Sepal.Length column
iris_short$Sepal.Length            # using the $ notation
str(iris_short$Sepal.Length)       # vector

iris_short[ , "Sepal.Length"]      # using the bracket notation
str(iris_short[ , "Sepal.Length"]) # vector

# Subset iris_short such that you keep the Sepal.Length and Sepal.Width columns
iris_short[, c("Sepal.Length", "Sepal.Width")]      # using the bracket notation
str(iris_short[, c("Sepal.Length", "Sepal.Width")]) # data frame

# Create a vector of Petal.Length from iris
petal_length <- iris$Petal.Length

# What is petal length measurement in the 101th row of iris?
petal_length[101]
iris[101, "Petal.Length"]

# How many petal length measurements in iris were greater than 6?
petal_length[petal_length > 6]         # vector of measurements with Petal.Length > 6
length(petal_length[petal_length > 6]) # number of measurements

petal_length_grtr_6 <- iris[iris$Petal.Length > 6, "Petal.Length"] # Alternative approach
length(petal_length_grtr_6)

# Section 9: Missing Values -----



site1_g_carbon_m2_day <- 5
site2_g_carbon_m2_day <- 4.3
site1_area_m2 <- 200
site2_area_m2 <- 450
site1_npp_day <- site1_g_carbon_m2_day * site1_area_m2
site2_npp_day <- site2_g_carbon_m2_day * site2_area_m2
site1_npp_day
site2_npp_day


nowhere <- 0


