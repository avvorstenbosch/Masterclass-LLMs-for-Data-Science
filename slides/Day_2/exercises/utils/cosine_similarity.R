cosine_similarity <- function(vector_x, vector_y) {
  # Dot product calculation of cosine similarity, rounded to 3 decimal places
  similarity <- vector_x %*% vector_y
  similarity <- round(similarity[[1]], 3)
  return(similarity)
}
