graphics.off()
rm(list=ls())
cat("\f")


#Lists, Classes, Generic Functions, and Methods in R (Session 5)
#4.1 Part 1: Lists
#1. Create an empty list using list() and assign it to lst. Check its type with typeof(lst), mode with mode(lst), and class with class(lst). Predict the outputs.
lst <- list()
typeof(lst)
mode(lst)
class(lst)

#2. Add a character vector c("John", "Doe") as the first element of lst using double bracket indexing. Then add a numeric vector from 1 to 5 as the second element. Print lst.
lst[[1]]<- c ("Jhon", "Doe")
lst[[2]]<- c(1:5)
print(lst)

#3. Access the first element of lst using double brackets lst[[1]] and store it in l1. Then access the first component using single brackets lst[1] and store it in l2. Check the classes of l1 and l2.

l1 <- lst[[1]]
l2 <- lst[1]
class(l1)
class(l2)
#4. Print the first element of l1 and the first element of l2[[1]]. Explain the difference in accessing elements from vectors vs. lists.

print(l2[[1]])
print(l1[[1]])

#5. Add a 2x3 matrix of random normals to lst as the third element. Print subsets lst[1:2] and lst[c(1,3)].
 lst[[3]]<- matrix(rnorm(6),nrow = 3)
lst[1:2]
lst[c(1,3)]


#6. Access the second element of the first component lst[[1]][2] and the first four elements of the second component lst[[2]][1:4]. Get the dimensions of the third component.

lst[[1]][2]
lst[[2]][1:4]

#7. Subset lst to exclude the first element using negative indexing and using logical indexing lst[c(TRUE, TRUE, FALSE)].

lst[-1]
lst[c(F,T,T)]

#8. Find the length of lst with length(lst) and the lengths of its components with lengths(lst).

length(lst)
lengths(lst)

#9. Remove the second component of lst by setting it to NULL. Alternatively, use negative indexing to achieve the same. Print lst after removal.

lst[-2]
lst
lst[[2]]<- NULL

#10. Add a nested list containing a vector 1:4 and a string "ABC" as the new third element. Use str(lst) to display the structure.

lst[[3]]<- list(c(1:4), c("ABC"))

#11. Create a matrix A of 5x2 random normals. Add it as the fourth element of lst. Use unlist(lst) and explain what happens to the different types.

matrixA <- matrix(rnorm(10), 5)
matrixA ->lst[[4]]

#12. Create a named list nlst with elements: name = "Alice", ages = c(25, 30, 35) , cities = c("NY", "LA", "CHI"). Print nlst.

nlst <- list(name= c("Alice"), ages=c(25, 30, 35), cities=c("NY","LA","CHI"))
nlst
#13. Access elements of nlst using names: nlst[["name"]] and nlst[c("name", "cities") ]. Also use dollar sign nlst$ages.

nlst[["name"]]
nlst[c("name", "cities")]
nlst$ages

#14. Assign names to an unnamed list lst <- list(1:3, letters[1:4], matrix(1: 4,2)). Set names to "vec1", "vec2", "mat". Change the second name to empty string and print names(lst).

lst <- list(1:3, letters[1:4], matrix(1:4, 2))
assign("v1", lst[[1]])
names(lst) <- c("vec1", "vec2", "mat")
lst
names(lst)[2]<-""
print(lst)

#15. Add the original lst as a new element named "sublist" to nlst using nlst$sublist <- lst. Use str(nlst) to view the nested structure.

nlst$sublist <- lst
nlst

