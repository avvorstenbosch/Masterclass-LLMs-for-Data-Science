import random

# Function to generate a random bingo board
def generate_bingo_board():
    board = [[0] * 5 for _ in range(5)]  # Initialize an empty 5x5 board
    used_numbers = set()  # Keep track of used numbers

    # Fill the board with unique random numbers between 1 and 99
    for i in range(5):
        for j in range(5):
            while True:
                num = random.randint(1, 99)
                if num not in used_numbers:
                    board[i][j] = num
                    used_numbers.add(num)
                    break

    return board

# Function to print the bingo board with right alignment
def print_bingo_board(board):
    max_digit_width = 2 # Calculate max digit width

    for row in board:
        formatted_row = [f"{num:>{max_digit_width}}" for num in row]  # Right-align and format numbers
        print(" ".join(formatted_row))

# Generate and print a bingo board
bingo_boards = [generate_bingo_board() for i in range(100)]

# Create a list of numbers from 1 to 99
all_numbers = list(range(1, 100))

# Randomly shuffle the list using random.sample()
random_order = random.sample(all_numbers, len(all_numbers))
random_order = [str(num) for num in random_order]

# Print the numbers in random order
print(", ".join(random_order))

with open("input-data-script.txt", "w") as f:
    f.write(", ".join(random_order))
    f.write("\n\n")
    for board in bingo_boards:
        for row in board:
            formatted_row = [f"{num:>{2}}" for num in row]
            f.write(" ".join(formatted_row)+"\n")
        f.write("\n")


