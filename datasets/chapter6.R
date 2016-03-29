actors      <- c("Jack Nicholson","Shelley Duvall","Danny Lloyd","Scatman Crothers","Barry Nelson")
sources     <- c("IMDb1","IMDb2","IMDb3")
comments    <- c("Best Horror Film I Have Ever Seen","A truly brilliant and scary film from Stanley Kubrick","A masterpiece of psychological horror")
scores      <- c(4.5,4,5)
reviews     <- data.frame(scores,sources,comments)
shining_list <- list(moviename="The Shining",actors=actors, reviews=reviews)

save(shining_list, file = "datasets/shining_list.RData")