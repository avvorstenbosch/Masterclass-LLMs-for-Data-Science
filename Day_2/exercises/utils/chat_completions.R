# some helper functions for the api call below
#-------------------------------------------------------------------------------

value_between <- function(x, lower, upper) {
  x >= lower && x <= upper
}

assertthat::on_failure(value_between) <- function(call, env) {
  paste0(
    deparse(call$x),
    " is not between ",
    deparse(call$lower),
    " and ",
    deparse(call$upper)
  )
}

#-------------------------------------------------------------------------------

both_specified <- function(x, y) {
  x != 1 && y != 1
}

#-------------------------------------------------------------------------------

length_between <- function(x, lower, upper) {
  length(x) >= lower && length(x) <= upper
}

assertthat::on_failure(length_between) <- function(call, env) {
  paste0(
    "Length of ",
    deparse(call$x),
    " is not between ",
    deparse(call$lower),
    " and ",
    deparse(call$upper)
  )
}

#-------------------------------------------------------------------------------

n_characters_between <- function(x, lower, upper) {
  nchar(x) >= lower && nchar(x) <= upper
}

assertthat::on_failure(n_characters_between) <- function(call, env) {
  paste0(
    "Number of characters of ",
    deparse(call$x),
    " is not between ",
    deparse(call$lower),
    " and ",
    deparse(call$upper)
  )
}

#-------------------------------------------------------------------------------

is_false <- function(x) {
  !x
}

assertthat::on_failure(is_false) <- function(call, env) {
  paste0(deparse(call$x), " is not yet implemented.")
}

#-------------------------------------------------------------------------------

is_null <- function(x) {
  is.null(x)
}

assertthat::on_failure(is_null) <- function(call, env) {
  paste0(deparse(call$x), " is not yet implemented.")
}

create_chat_completion <- function(model,
                                   messages = NULL,
                                   temperature = 1,
                                   top_p = 1,
                                   n = 1,
                                   stream = FALSE,
                                   stop = NULL,
                                   max_tokens = NULL,
                                   presence_penalty = 0,
                                   frequency_penalty = 0,
                                   logit_bias = NULL,
                                   user = NULL,
                                   format = NULL,
                                   openai_api_key = Sys.getenv("OPENAI_API_KEY"),
                                   openai_organization = NULL) {
  #---------------------------------------------------------------------------
  # Validate arguments

  assertthat::assert_that(
    assertthat::is.string(model),
    assertthat::noNA(model)
  )

  if (!is.null(messages)) {
    assertthat::assert_that(
      is.list(messages)
    )
  }
  if (!is.null(format)) {
    assertthat::assert_that(
      is.list(format)
    )
  }

  assertthat::assert_that(
    assertthat::is.number(temperature),
    assertthat::noNA(temperature),
    value_between(temperature, 0, 2)
  )

  assertthat::assert_that(
    assertthat::is.number(top_p),
    assertthat::noNA(top_p),
    value_between(top_p, 0, 1)
  )

  if (both_specified(temperature, top_p)) {
    warning(
      "It is recommended NOT to specify temperature and top_p at a time."
    )
  }

  assertthat::assert_that(
    assertthat::is.count(n)
  )

  assertthat::assert_that(
    assertthat::is.flag(stream),
    assertthat::noNA(stream),
    is_false(stream)
  )

  if (!is.null(stop)) {
    assertthat::assert_that(
      is.character(stop),
      assertthat::noNA(stop),
      length_between(stop, 1, 4)
    )
  }


  if (!is.null(max_tokens)) {
    assertthat::assert_that(
      assertthat::is.count(max_tokens)
    )
  }

  assertthat::assert_that(
    assertthat::is.number(presence_penalty),
    assertthat::noNA(presence_penalty),
    value_between(presence_penalty, -2, 2)
  )

  assertthat::assert_that(
    assertthat::is.number(frequency_penalty),
    assertthat::noNA(frequency_penalty),
    value_between(frequency_penalty, -2, 2)
  )

  if (!is.null(logit_bias)) {
    assertthat::assert_that(
      is.list(logit_bias)
    )
  }

  if (!is.null(user)) {
    assertthat::assert_that(
      assertthat::is.string(user),
      assertthat::noNA(user)
    )
  }

  assertthat::assert_that(
    assertthat::is.string(openai_api_key),
    assertthat::noNA(openai_api_key)
  )

  if (!is.null(openai_organization)) {
    assertthat::assert_that(
      assertthat::is.string(openai_organization),
      assertthat::noNA(openai_organization)
    )
  }

  #---------------------------------------------------------------------------
  # Build path parameters

  task <- "chat/completions"

  base_url <- glue::glue("https://api.openai.com/v1/{task}")

  headers <- c(
    "Authorization" = paste("Bearer", openai_api_key),
    "Content-Type" = "application/json"
  )

  if (!is.null(openai_organization)) {
    headers["OpenAI-Organization"] <- openai_organization
  }

  #---------------------------------------------------------------------------
  # Build request body

  body <- list()
  body[["model"]] <- model
  body[["messages"]] <- messages
  body[["response_format"]] <- format
  body[["temperature"]] <- temperature
  body[["top_p"]] <- top_p
  body[["n"]] <- n
  body[["stream"]] <- stream
  body[["stop"]] <- stop
  body[["max_tokens"]] <- max_tokens
  body[["presence_penalty"]] <- presence_penalty
  body[["frequency_penalty"]] <- frequency_penalty
  body[["logit_bias"]] <- logit_bias
  body[["user"]] <- user

  #---------------------------------------------------------------------------
  # Make a request and parse it

  response <- httr::POST(
    url = base_url,
    httr::add_headers(.headers = headers),
    body = body,
    encode = "json"
  )

  parsed <- response %>%
    httr::content(as = "text", encoding = "UTF-8") %>%
    jsonlite::fromJSON(flatten = TRUE)

  #---------------------------------------------------------------------------
  # Check whether request failed and return parsed

  if (httr::http_error(response)) {
    paste0(
      "OpenAI API request failed [",
      httr::status_code(response),
      "]:\n\n",
      parsed$error$message
    ) %>%
      stop(call. = FALSE)
  }

  parsed
}

generate_completion <- function(system = system_prompt,
                                prompt = user_prompt,
                                messages = NULL,
                                t = 1,
                                n = 1,
                                max_tokens = NULL,
                                model = "gpt-3.5-turbo-1106",
                                format = NULL,
                                openai_api_key = OPENAI_API_KEY,
                                verbose=TRUE) {
  #' Flexible API Request Function with Integrated Glue Functionality
  #'
  #' This function sends a request to a specified API, integrating the 'glue' function to allow
  #' dynamic insertion of context documents into the user_prompt.
  #'
  #' @param system the system prompt provided to the model The URL of the API to which the request is being sent, defaults to system_prompt object.
  #' @param prompt the user prompt provided to the model, defaults to user_prompt object.
  #' @param messages the user provides a messages list directly, overrides system and prompt
  #' @param t the temperature setting for the mode, defaults to 1.
  #' @param n the number of completions to generate, defaults to 1.
  #' @param max_tokens the maximum model response length, defaults to 500 tokens.
  #' @param model the model to invoke for chat completion.
  #' @param format specification of the output format for Json mode. 
  #' @param openai_api_key your private API key.
  #' @param verbose if FALSE, the model will not print outputs.
  #'
  #' @return
  #' The response object from the chat_completion api
  if (is.null(messages)){
    messages = list(
      list(
        "role" = "system",
        "content" = glue(system)
      ),
      list(
        "role" = "user",
        "content" = glue(prompt)
      )
    )
  }
  response <- create_chat_completion(
    model = model,
    messages = messages,
    format = format, # Set the response format for JSON mode
    temperature = t, # The randomness setting of the model: 0 is deterministic, 2 is most random
    n = n, # How many completions do we want the model to generate
    max_tokens = max_tokens, # How many tokens is the model allowed to use,
    openai_api_key = openai_api_key # Your secret key to the API
  )
  if (verbose){
    for (choice_num in 1:length(response$choice[["index"]])) {
      cat(glue('**Response {choice_num}**:\n\n {response$choices[[choice_num, "message.content"]]}\n\n\n\n'))
    }
  }
  return(response)
}
