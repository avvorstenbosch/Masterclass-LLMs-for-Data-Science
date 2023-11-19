cosine_similarity <- function(vector_x, vector_y){
    similarity <- vector_x %*% vector_y
    similarity <- round(similarity[[1]],3)
    return(similarity)
}