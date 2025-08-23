
#GhazalRazani- Handout
rm(list=ls())
graphics.off()
cat("\f")

#Data Types, Variables, Operators, Vectors, Indexing, and Precedence in R

#Q1_ Define a numeric variable age with your current age and a character variable name with your full name. Print both variables.

age <- 26
name <- "Ghazal"
print(age)
print(name)

#Q2_Assign the value TRUE to a variable named is student. Convert it to numeric and print the result

"is_student" <- TRUE
print(is_student)
as.numeric(is_student)
print(is_student)

#Q3_ Create two variables, a = 12 and b = 5. Compute their sum, product, quotient, and remainder when divided
a <- 12
b <- 5
sum(a,b)
a*b
a %% b
a %/% b

#Q4_ Assign temperature = 25.5 and humidity = 60. Check whether the temperature is greater than 20 and humidity is less than 70. Print the logical result.

tempreature <- 25.5
humidity <- 60

tempreature > 20
humidity < 70

#Q5_Create a variable name with your first name. Use paste() to combine it with the string “Hello” and print the message.

name <- c("Ghazal")
print(paste("Hello", name ))

#Q6_Write an expression in R that checks if 15 is divisible by 3 and greater than 10. 

15 %% 3 == 0 & 15 > 10

#Q7_ Define x = 1.5. Check whether√x ≤ 1.2 and store the result in a logical variable. 

x <- 1.5
y <- x ^ 0.5 <= 1.2
print(y)

#Q8_Convert the string "45.8" to numeric and check whether it is greater than 50.

as.numeric("45.8") > 50

#Q9_Assign length = 10 and width = 5. Compute the area and perimeter of the rectangle. Then check whether the area is greater than 40.

length <- 10
width <- 5

area <- length * width
perimeter <- 2*sum(length, width)
perimeter > 40

#Q10_Create a variable total score = 100 and num subjects = 5. Compute the average score using division.

total_score <- 100
num_subjects <- 5

(total_score + num_subjects) * 0.5

#Q11_Create a vector of the first 20 natural numbers. Find its mean, variance, and standard deviation.

num20 <- c(1:20)

mean_num20 <- sum(num20) / 20
variance_num20 <- (sum((num20 -(sum(num20) / 20))^2)) / 19
standard_deviation_num20 <- standard_deviation ^ 0.5
                       
#or                  

mean(num20)
var(num20)
sd(num20)
#Q12_Create a vector grades = c(85, 92, 78, 88, 95). Compute its mean and standard deviation.
 grades <- c (85, 92, 78, 88, 95)
 
 mean_grades <- sum(grades)/5
 variance_grades <- sum( (grades- mean_grades) ^2)/ 4
 standard_deviation_grades <- variance_grades ^ 0.5
  #or
 mean()
 sd(grades)
 var(grades)
 
 #Session_4
 #1.Create a raw vector with values 8, 16, and 24. Convert it to a character string using rawToChar and print the result

 vec <- c( 8, 16, 24)
 rvec <- as.raw(vec)
 typeof(rvec)
 mode(rvec)
 class(rvec)
 rawToChar(rvec)
 #2.Define a complex vector with three elements: 2+3i, -1+5i, and 0+1i. Print the vector and check its mode using mode.

 cvec <- c( 2+3i, -1+5i, 0+1i )
 print(cvec)
mode(cvec) 
#3. Create a numeric vector marks with values 75, 82, 90. Assign names Test1, Test2, Test3 to the elements and print the value for Test2 using named indexing.

nvec <- c(75, 82, 90)
names(nvec) <- c("Test1", "Test2", "Test3")
print(nvec)
nvec["Test1"]
 #or
names(nvec) <- c(paste0("Test", 1:3))
print(nvec)

#4. Define a vector containing the elements 10, NA, 20, Inf, and NaN. Use typeof and mode to determine its type and mode.

vec1 <- c( 10, NA, Inf, NaN)
typeof(vec1)
mode(vec1)

#5. Generate a vector of 12 random integers from 1 to 15 using sample with replacement. Use sort and unique to print the sorted unique values.

vec2 <- sample( 1:15, 12,  rep=TRUE)
sort(unique(vec2))

#6. Create a vector x with values 1 to 6. Replace all elements equal to 4 with 12 and append 20 to the vector. Print the final vector.

vec3 <- c(1:6)
vec3
vec3[vec3==4] <- 12
vec3
vec3 <- c(vec3, 20)
vec3
#7. Define a vector y with 15 random normal values rounded to 1 decimal using rnorm. Use head to display the first 5 elements and tail to display the last 3 elements.

vec7 <- round( rnorm(15), 1)
head(vec7, 5)
tail(vec7, 3)
 #8. Create a factor risk from a vector of 25 random values sampled from Low, Medium, High with replacement. Plot the factor and print its frequency table using table.

risk <- factor(sample(c("Low", "Medium", "High"), 15 , rep= TRUE), levels= c ( "Low", "Medium", "High") )
risk
plot(risk)
table(risk)
#9. Define a vector of strings students with values Amir, Sara, Zahra. Use paste to combine each name with numbers 1 to 3, separated by a colon (e.g., Amir:1).

vec9 <- c("Amir", "Sara", "Zahra")
paste(vec9, 1:3, sep=":")

#10. Create a string message = He said: "R is powerful!". Use cat to display it correctly and extract the substring R is using substr.

vec10 <- "He said:\" R is powerful!\""
cat( vec10)
substr(vec10, start=11, stop=14)
substring(vec10, 11, 14)
#11. In a dataset, create a vector countries = c("Iran", "Turkey", "Iraq"). Use abbreviate to shorten the names to 3 characters and print the result.

countries <- c( "Iran", "Turkey", "Iraq")
abbreviate(countries, minlength = 3)

#12. Define a string title = Programming in R is exciting. Use chartr to replace i with * and convert the string to lowercase using tolower.

title <- "Programming in R is exciting"
title <- chartr("i", "*", title)
tolower(title)
#13. Create a vector of 10 random responses from Yes, No, Maybe using sample. Use paste with collapse to combine them into a single string separated by semicolons.

vec13 <- sample(c("Yes", "No"), 10, rep= TRUE )
vec13
paste(vec13, collapse =";")
cat(paste(vec13, collapse =";"))
#14. In a medical study, create a factor condition with 30 random values from Stable, Critical, Improved. Relevel it to make Stable the reference level and print the frequency table.

condition <- factor(sample(c("Stable", "Critical","Improved"), 30, rep=TRUE), levels= c("Stable", "Critical", "Improved"))
 print(condition)                  
table(condition)   

#15. Create a vector prices with values 10, 20, 30, 40. Replace elements greater than 25 with 50 and append a character USD. Explain why the vector’s type changes and its impact on numeric operations.

prices <- c(10, 20,30, 40)
prices[prices >= 25] <- 50
print(prices)
prices <- c(prices, "USD")
print(prices)
sum(prices)
#3.2 Part 2: Matrices and Arrays
#16. Create a 5x3 matrix with values 1 to 15 filled by row. Assign row names Row1 to Row5 and column names Col1 to Col3. Print the matrix.
 
m16 <- matrix(nrow= 5, ncol= 3 , 1:15, byrow=TRUE)
rownames(m16) <- c(paste0("row", 1:5))
print(m16)
colnames(m16) <- c(paste0( "col", 1:3))
print(m16)

#17. From the matrix in question 16, extract elements in rows Row2 and Row4 and columns Col1 and Col2 using named indexing

m16["row1", ]
m16["row2", ]
m16[ , "col1"]
m16[, "col2"]

#18. Create a 3x3 matrix with random integers between 1 and 10. Compute its transpose using t and determinant using det

m18 <- matrix(sample(1:10, 9, replace=FALSE), nrow= 3, ncol= 3)
print( m18)
t(m18)
m18
det(m18)
?det()
#19. Define a 4x2 matrix with values 8 to 1 in descending order, filled by column. Use logical indexing to extract elements less than or equal to 5

m19 <- matrix (8:1, nrow=4, ncol= 2, byrow=FALSE)
m19[m19 <= 5]
m19[m19==5]

#20. Create a 3x3 diagonal matrix with values 1, 3, 5 on the diagonal. Compute its eigenvalues using eigen.
 
m20<- matrix(1:9, nrow=3,ncol=3, dim=list(paste0("row",1:3), paste0("col", 1:3)))
m20
?diag
diag(m20)<- c(1, 3, 5)

