# Construct matrix
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
col_titles <- c("US","non-US")
star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, col_titles))

# Construct matrix2
box_office_all2 <- c(474.5, 552.5, 310.7, 338.7, 380.3, 468.5)
movie_names2 <- c("The Phantom Menace", "Attack of the Clones", "Revenge of the Sith")
star_wars_matrix2 <- matrix(box_office_all2, nrow = 3, byrow = TRUE, dimnames = list(movie_names2, col_titles))

# Combine both Star Wars trilogies in one matrix
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)

# remove all except all_wars_matrix
rm(box_office_all)
rm(movie_names)
rm(col_titles)
rm(star_wars_matrix)
rm(box_office_all2)
rm(movie_names2)
rm(star_wars_matrix2)

save(all_wars_matrix, file = "datasets/all_wars_matrix.RData")
