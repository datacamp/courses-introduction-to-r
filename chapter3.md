--- 
courseTitle       : Introduction to R v3
chapterTitle      : Matrices
chapterTitleMeta  : Chapter 3
description       : In this chapter, you'll learn how to work with matrices in R. By the end of the chapter you'll be able to create matrices, and understand how you can do basic computations with them. You'll analyze the box office numbers of Star Wars to illustrate the use of matrices in R. May to force be with you! 
framework : datamind 
mode: selfcontained 
--- 

## What's a matrix?

In R, a matrix is a collection of elements of the same data type (numeric, character, or logical) arranged into a fixed number of rows and columns. Since you are only working with rows and columns, a matrix is called two-dimensional. 

In R, you can construct a matrix with the `matrix` function, for example: `matrix(1:9, byrow=TRUE, nrow=3)`:
- The first argument, is the collection of elements that R will arrange into the rows and columns of the matrix. Here, we use `1:9` which constructs the vector `c(1,2,3,4,5,6,7,8,9)`. 
- The argument `byrow` indicates that the matrix is filled by the rows. If we want the vector to be filled by the columns, we just place `bycol=TRUE` or `byrow=FALSE`. 
- The third argument `nrow` indicates that the matrix should have three rows.

*** =instructions
1. Construct a matrix with 3 rows containing the numbers 1 up to 9. Click the Submit Answer button and look at the output in the console. Hint, use: `matrix(1:9, byrow=TRUE, nrow=3)`.

*** =hint
Read the assignment carefully, the answer is already given ;-).

*** =sample_code


```r
# Construction of a matrix with 3 rows containing the numbers 1 up to 9
```


*** =solution


```r
# Construction of a matrix with 3 rows containing the numbers 1 up to 9
matrix(1:9, byrow = TRUE, nrow = 3)
```


*** =sct


```r
DM.result <- code_test("matrix(1:9, byrow=TRUE, nrow=3)")
```


*** =pre_exercise_code




---

## Analyzing matrices, you shall

It is time to get your hands dirty. In the following exercises you will analyze the box office numbers of the Star Wars franchisee. May the force be with you! 

In the editor, three vectors are defined each representing the box office numbers from the first three Star Wars movies. The first element of each vector indicates the US box office revenue, the second element refers to the Non-US box office (source: Wikipedia).

*** =instructions

1. Construct a matrix with one row for each movie (thus 3 rows). The first column is for the US box office revenue, and the second column for the non-US box office revenue. Name the matrix `star_wars_matrix`.

*** =hint
Remember that you can construct a matrix containing the numbers 1 up to 9 with: `matrix(1:9, byrow=TRUE, nrow=3)`. In this case, you don't want the numbers 1 up to 9, but the elements of the 3 Star Wars movies: this means the input vector is thus: `c(new_hope,empire_strikes,return_jedi)`.

*** =sample_code


```r
# Box office Star Wars: In Millions!  The first element: US, the second
# element: Non-US
new_hope <- c(460.998007, 314.4)
empire_strikes <- c(290.475067, 247.9)
return_jedi <- c(309.306177, 165.8)

# Add your code below to construct the matrix
star_wars_matrix <- 
# Show me the
star_wars_matrix
```


*** =solution


```r
# Box office Star Wars: In Millions!  The first element: US, Second element:
# Non-US
new_hope <- c(460.998007, 314.4)
empire_strikes <- c(290.475067, 247.9)
return_jedi <- c(309.306177, 165.8)

# Add your code below to construct the matrix
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), nrow = 3, 
    byrow = TRUE)

# Show me the
star_wars_matrix
```


*** =sct


```r
names <- "star_wars_matrix"
values <- "matrix( c(new_hope,empire_strikes,return_jedi), \n                            nrow=3, byrow=TRUE)"
DM.result <- closed_test(names, values)
```


*** =pre_exercise_code



---

## Naming a matrix

To help you remember what's stored in `star_wars_matrix`, you'd like to add the names of the movies for the rows. Not only does this helps you to read the data, it is also useful to select certain elements from the matrix later. 

Similar to vectors, you can add names for the rows and the columns of a matrix with:

- `rownames(my_matrix) <- row_names_vectors`
- `colnames(my_matrix) <- col_names_vectors`


*** =instructions

1. Give the columns of `star_wars_matrix` the names `"US"` and `"non-US"`.
2. Give the rows of the matrix `star_wars_matrix` the names of the three movies. In case you are not a fan ;-), the movie names are: "A new hope", "The empire strikes back" and "Return of the Jedi".


*** =hint
Don't forget that R is case sensitive. The vector for the column names is thus: `c("US","non-US")` and for the row names: `c("A new hope","The empire strikes back","Return of the Jedi")`.

*** =sample_code


```r
# Box office Star Wars: In Millions (!)  First element: US, Second element:
# Non-US
new_hope <- c(460.998007, 314.4)
empire_strikes <- c(290.475067, 247.9)
return_jedi <- c(309.306177, 165.8)

# Construct matrix
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), nrow = 3, 
    byrow = TRUE)

# Add your code here such that rows and columns of star_wars_matrix have a
# name!

# Print the matrix to the console
star_wars_matrix
```


*** =solution


```r
# Box office Star Wars: In Millions (!)  First element: US, Second element:
# Non-US
new_hope <- c(460.998007, 314.4)
empire_strikes <- c(290.475067, 247.9)
return_jedi <- c(309.306177, 165.8)

# Construct matrix
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), nrow = 3, 
    byrow = TRUE)

# Add your code here such that rows and columns of star.wars have a name
colnames(star_wars_matrix) <- c("US", "non-US")
rownames(star_wars_matrix) <- c("A new hope", "The empire strikes back", "Return of the Jedi")

# Print the matrix to the console
star_wars_matrix
```


*** =sct


```r
names <- c("star_wars_matrix", "colnames(star_wars_matrix)", "rownames(star_wars_matrix)")
values <- list("star_wars_matrix", "c(\"US\",\"non-US\")", "c(\"A new hope\", \"The empire strikes back\", \"Return of the Jedi\")")
DM.result <- closed_test(names, values, check.existence = c(T, F, F))
```


*** =pre_exercise_code





---

## Calculating the worldwide box office 

The single most important thing for a movie to become an instant legend in Tinseltown is its worldwide box office figures. 

To calculate the total box office revenue for the three Star Wars movies, you have to take the sum of the US revenue column and the non-US revenue column. 

In R, the function `rowSums()` conveniently calculates the totals for each row of a matrix. This function creates a new vector. `sum_of_rows_vector <-  rowSums(my_matrix)`.

*** =instructions

1. Calculate the worldwide box office figures for the three movies and put these in the vector named `worldwide_vector`.

*** =hint
The `rowSums()` function will calculate the total box office for each row of the `star_wars_matrix`, if you supply `star_wars_matrix` as an argument to that function by putting it between the brackets.

*** =sample_code


```r
# Box office Star Wars: In Millions (!)  Construct matrix:
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A new hope", "The empire strikes back", "Return of the Jedi")
col_titles <- c("US", "non-US")
star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, 
    col_titles))

# Your code here
worldwide_vector <- 
# Show me the
worldwide_vector
```


*** =solution


```r
# Box office Star Wars: In Millions (!)  Construct matrix:
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A new hope", "The empire strikes back", "Return of the Jedi")
col_titles <- c("US", "non-US")
star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, 
    col_titles))

# Your code here
worldwide_vector <- rowSums(star_wars_matrix)

# Show me the
worldwide_vector
```


*** =sct


```r
names <- c("star_wars_matrix", "worldwide_vector")
values <- c("star_wars_matrix", "rowSums(star_wars_matrix)")
DM.result <- closed_test(names, values)
```


*** =pre_exercise_code




---

## Adding a column for the Worlwide box office 

In the previous exercise, you calculated the vector that contained the worldwide box office receipt for each of the three Star Wars movies. However, this vector is not yet part of `star_wars_matrix`...

You can add a column or multiple columns to a matrix with the `cbind` function, which merges matrices and/or vectors together by column. For example: `new_combined_matrix <- cbind( matrix1, matrix2, vector1, ... )`.

*** =instructions

1. Add `worldwide_vector` as a new column to the `star_wars_matrix` and assign to `all_wars_matrix`. Use the `cbind()` function.

*** =hint
Bind the `worldwide_vector` to the `star_wars_matrix` with the `cbind()` function, with `cbind( the_correct_matrix, the_correct_vector)` and assign to `all_star_wars_matrix`.

*** =sample_code


```r
# Box office Star Wars: In Millions (!)  Construct matrix
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A new hope", "The empire strikes back", "Return of the Jedi")
col_titles <- c("US", "non-US")
star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, 
    col_titles))

# The worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)

# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- 
# Show me the
all_wars_matrix
```


*** =solution


```r
# Box office Star Wars: In Millions (!)  Construct matrix:
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A new hope", "The empire strikes back", "Return of the Jedi")
col_titles <- c("US", "non-US")
star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, 
    col_titles))

# The worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)

# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)

# Show me the
all_wars_matrix
```


*** =sct


```r
names <- c("star_wars_matrix", "worldwide_vector", "all_wars_matrix")
values <- c("star_wars_matrix", "rowSums(star_wars_matrix)", "cbind(star_wars_matrix,worldwide_vector)")
DM.result <- closed_test(names, values)
```


*** =pre_exercise_code



---

## Adding a row

Just like every action has a reaction, every `cbind()` has a `rbind()`. (Okay, we admit, we are pretty bad with metaphors.) 

Your R workspace ([check out what a workspace is](http://www.statmethods.net/interface/workspace.html)) now contains two matrices, the `star_wars_matrix` we just used (the first trilogy) but also the `star_wars_matrix2` for the second trilogy. Type the name of the matrices in the console and press enter in case you want to have a closer look.

*** =instructions

1. Assign to `all_wars_matrix` a new matrix with `star_wars_matrix` in the first three rows and `star_wars_matrix2` in the next three rows.

*** =hint
Bind the two matrices together in the following way: `rbind( matrix1, matrix2 )` and assign to `all_wars_matrix`.

*** =sample_code


```r
# Box office Star Wars: In Millions (!)

# Matrix containing first trilogy box office
star_wars_matrix

# Matrix containing second trilogy box office
star_wars_matrix2

# Combine the both Star Wars trilogies in one matrix
all_wars_matrix <- 
# Show me the
all_wars_matrix
```


*** =solution



```r
# Box office Star Wars: In Millions (!)

# Matrix containing first trilogy box office
star_wars_matrix

# Matrix containing second trilogy box office
star_wars_matrix2

# Combine the both Star Wars trilogies in one matrix
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)

# Show me the
all_wars_matrix
```


*** =sct


```r
names <- c("star_wars_matrix", "star_wars_matrix2", "all_wars_matrix")
values <- c("star_wars_matrix", "star_wars_matrix2", "rbind(star_wars_matrix,star_wars_matrix2)")
DM.result <- closed_test(names, values)
```


*** =pre_exercise_code


```r
# Construct matrix
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A new hope", "The empire strikes back", "Return of the Jedi")
col_titles <- c("US", "non-US")
star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, 
    col_titles))

# Construct matrix2
box_office_all2 <- c(474.5, 552.5, 310.7, 338.7, 380.3, 468.5)
movie_names2 <- c("The Phantom Menace", "Attack of the Clones", "Revenge of the Sith")
star_wars_matrix2 <- matrix(box_office_all2, nrow = 3, byrow = TRUE, dimnames = list(movie_names2, 
    col_titles))
```



---

## The total box office revenue for the entire saga

Just like every `cbind()` has a `rbind()`, every `colSums()` has a `rowSums()`. Your R workspace contains the `all_wars_matrix` you constructed in the previous exercise (Type `all_wars_matrix` in the console if you don't recall what it contains). Let's now calculate the total box office revenue for the entire saga.

*** =instructions

1. Calculate the total revenue for the US and the non-US region and assign `total_revenue_vector`. You can use the `colSums()` function.

*** =hint
You should use the `colSums()` function with `star_wars_matrix` as argument to find the total box office per region.

*** =sample_code


```r
# Print box office Star Wars: In Millions (!) for 2 trilogies
all_wars_matrix

total_revenue_vector
```


*** =solution


```r
# Print box office Star Wars: In Millions (!) for 2 trilogies
all_wars_matrix

total_revenue_vector <- colSums(all_wars_matrix)
```


*** =sct


```r
names <- c("all_wars_matrix", "total_revenue_vector")
values <- c("all_wars_matrix", "colSums( all_wars_matrix )")
DM.result <- closed_test(names, values)
```


*** =pre_exercise_code


```r
# Construct matrix
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A new hope", "The empire strikes back", "Return of the Jedi")
col_titles <- c("US", "non-US")
star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, 
    col_titles))

# Construct matrix2
box_office_all2 <- c(474.5, 552.5, 310.7, 338.7, 380.3, 468.5)
movie_names2 <- c("The Phantom Menace", "Attack of the Clones", "Revenge of the Sith")
star_wars_matrix2 <- matrix(box_office_all2, nrow = 3, byrow = TRUE, dimnames = list(movie_names2, 
    col_titles))

# Combine the both Star Wars trilogies in one matrix
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)
```



---

## Selection of matrix elements

Similar to vectors, use the square brackets `[ ]` to select one or multiple elements from a matrix. Whereas vectors have 1 dimension, matrices have 2 dimensions, therefore use a comma to separate what to select from the rows and what from the columns. For example: 
- `my_matrix[1,2]` selects from the first row the second element.
- `my_matrix[1:3,2:4]` selects rows 1,2,3 and columns 2,3,4.

If you want to select all elements of a row or column, no number is needed before or after the comma:
- `my_matrix[,1]` selects all elements of the first column.
- `my_matrix[1,]` selects all elements of the first row.

Back to Star Wars with this newly acquired knowledge!

*** =instructions

1. Calculate the average Non-US revenue per movie. Assign this to the `non_us_all` variable (In other words: take the average of all elements of the second column).
2. Same question, but now only for the first two Star Wars movies.

Hint: Use the function `mean()` to compute the average.

*** =hint
You can use the function `mean()` to calculate the average of the inputs to the function. Remember that you can select all rows of a matrix for a specific column x, by typing `my_matrix[,x]`. Non-US is the second column.

*** =sample_code


```r
# Box office Star Wars: In Millions (!)  Construct matrix
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A new hope", "The empire strikes back", "Return of the Jedi")
col_titles <- c("US", "non-US")
star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, 
    col_titles))

star_wars_matrix

# your code here
non_us_all <- # your code here
non_us_some <- 
# Print both averages to console:\
non_us_all
non_us_some
```


*** =solution


```r
# Box office Star Wars: In Millions (!)  Construct matrix:
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A new hope", "The empire strikes back", "Return of the Jedi")
col_titles <- c("US", "non-US")
star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, 
    col_titles))

star_wars_matrix

# your code here
non_us_all <- mean(star_wars_matrix[, 2])
# your code here
non_us_some <- mean(star_wars_matrix[1:2, 2])

# Print to console both averages
non_us_all
non_us_some
```


*** =sct


```r
names <- c("star_wars_matrix", "non_us_all", "non_us_some")
values <- c("star_wars_matrix", "mean( star_wars_matrix[,2] )", "mean( star_wars_matrix[1:2,2] )")
DM.result <- closed_test(names, values)
```


*** =pre_exercise_code



---

## A little arithmetic with matrices

Similar to what you learned with vectors, the standard operators like `+`, `-`, `/`, `*`, etc. work in an element-wise way on matrices in R. 

For example: `2*my_matrix` multiplies each element of `my_matrix` by two. 

As a newly-hired data analyst for Lucasfilm, your job is to find out how many visitors went to each movie for each geographical area. You already have the total revenue figures in `star_wars_matrix`. Assume that the price of a ticket was 5 dollars. Note that box office numbers divided by the ticket price gives you the number of visitors.

*** =instructions

1. Assign to `visitors` the matrix with the estimated number of Non-US and US visitors for the three movies.


*** =hint
The number of visitors is the revenue (which is stored in `star_wars_matrix` ) divided by the price of ticket (assumed to be $5).

*** =sample_code


```r
# Box office Star Wars: In Millions (!)  Construct matrix:
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A new hope", "The empire strikes back", "Return of the Jedi")
col_titles <- c("US", "non-US")
star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, 
    col_titles))

# your code here!
visitors <- 
# Show me (also in millions!) the
visitors
```


*** =solution


```r
# Box office Star Wars: In Millions (!)  Construct matrix:
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A new hope", "The empire strikes back", "Return of the Jedi")
col_titles <- c("US", "non-US")
star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, 
    col_titles))

# your code here!
visitors <- star_wars_matrix/5

# Show me (also in millions!) the
visitors
```


*** =sct


```r
names <- c("star_wars_matrix", "visitors")
values <- c("star_wars_matrix", "star_wars_matrix/5")
DM.result <- closed_test(names, values)
```


*** =pre_exercise_code



--- 

## A little arithmetic with matrices (2) 

Just like `2*my_matrix` multiplied every element of `my_matrix` by two, `my_matrix1 * my_matrix2` creates a matrix where each element is the product of the corresponding elements in `my_matrix1` and `my_matrix2`. 

After looking at the result of the previous exercise, big boss Lucas pointed out that the ticket prices went up over time with one dollar per movie. He asks to redo the analysis based on the prices you can find in `ticket_prices_matrix` (source: imagination). 

(Those familiar with matrices should note this is not the standard matrix multiplication for which you should use `%*%` in R.)

*** =instructions

1. Assign to `visitors` the matrix with your estimated number of Non-US and US visitors for the three movies.
2. Assign to `average_us_visitor` the average number of visitors in the US for a Star Wars movie.
3. Assign to `average_non_us_visitor` the average number of visitors in non-US areas.

*** =hint

- You can use the function `mean()` to calculate the average of the inputs to the function.
- To get the number of visitors in the US, select the first column from `visitors` using `visitors[ ,1]`.

*** =sample_code


```r
# Box office Star Wars: In Millions (!)  Construct matrix:
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A new hope", "The empire strikes back", "Return of the Jedi")
col_titles <- c("US", "non-US")
star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, 
    col_titles))
ticket_prices_matrix <- matrix(c(5, 5, 6, 6, 7, 7), nrow = 3, byrow = TRUE, 
    dimnames = list(movie_names, col_titles))

# Your code below:
visitors <- # Your code below:
average_us_visitor <- # Your code below:
average_non_us_visitor <- 

# Show me the (all in Millions)
visitors
average_us_visitor
average_non_us_visitor
```


*** =solution


```r
# Box office Star Wars: In Millions (!)  Construct matrix:
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A new hope", "The empire strikes back", "Return of the Jedi")
col_titles <- c("US", "non-US")
star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, 
    col_titles))
ticket_prices_matrix <- matrix(c(5, 7, 6, 8, 7, 9), nrow = 3, byrow = TRUE, 
    dimnames = list(movie_names, col_titles))

# Your code here
visitors <- star_wars_matrix/ticket_prices_matrix
# Your code here
average_us_visitor <- mean(visitors[, 1])
# Your code here
average_non_us_visitor <- mean(visitors[, 2])

# Show me the (all in Millions)
visitors
average_us_visitor
average_non_us_visitor
```


*** =sct


```r
names <- c("star_wars_matrix", "ticket_prices_matrix", "visitors", "average_us_visitor", 
    "average_non_us_visitor")
values <- c("star_wars_matrix", "ticket_prices_matrix", "star_wars_matrix/ticket_prices_matrix", 
    "mean( visitors[,1] )", "mean( visitors[,2] )")
DM.result <- closed_test(names, values)
```


*** =pre_exercise_code


