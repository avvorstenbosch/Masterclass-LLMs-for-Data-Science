get_embedding <- function(string = NULL,
                          embedding_model = "text-embedding-ada-002") {
  #' Flexible API Request Function with Integrated Glue Functionality
  #'
  #' This function sends a request to a specified API, integrating the 'glue' function to allow
  #' dynamic insertion of context documents into the user_prompt.
  #'
  #' @param string The input string to convert to an embedding
  #' @param embedding_model which model is used embedding
  #'
  #' @return
  #' The response object from the chat_completion api
  response <- create_embedding(
    model = embedding_model,
    input = string,
    openai_api_key = OPENAI_API_KEY
  )
  embedding <- as.vector(response$data$embedding[[1]])
  return(embedding)
}
