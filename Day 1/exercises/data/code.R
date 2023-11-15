data <- readLines("data-puzzle.txt")
numbers <- as.integer(unlist(strsplit(data[1], ",")))

boards <- data[-(1:2)]
boards <- boards[boards != ""]
board_list <- split(boards, ceiling(seq_along(boards)/5))
board_list <- lapply(board_list, function(board_lines) {
  # Split each line into numbers, handling extra spaces
  board_numbers <- unlist(lapply(board_lines, function(line) {
    as.integer(unlist(strsplit(trimws(line), "\\s+")))
  }))
  # Ensure that each board is a 5x5 matrix
  if (length(board_numbers) != 25) {
    stop("Error: Board size is not 5x5.")
  }
  matrix(board_numbers, nrow = 5, byrow = TRUE)
})

boards_filled <- lapply(board_list, function(x) matrix(0, nrow = 5, ncol = 5))

check_winner <- function(boards_filled) {
  for (i in seq_along(boards_filled)) {
    if (any(rowSums(boards_filled[[i]]) == 5) || any(colSums(boards_filled[[i]]) == 5)) {
      return(i)
    }
  }
  return(NULL)
}

for (num in numbers) {
  for (i in seq_along(board_list)) {
    boards_filled[[i]][board_list[[i]] == num] <- 1
  }
  winner <- check_winner(boards_filled)
  if (!is.null(winner)) {
    break
  }
}

if (!is.null(winner)) {
  unmarked <- board_list[[winner]][boards_filled[[winner]] == 0]
  answer <- sum(unmarked) * num
  print(glue::glue("The winner is board {winner} with a score of {answer}!"))
}
