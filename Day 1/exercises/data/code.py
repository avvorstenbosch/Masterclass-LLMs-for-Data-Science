import numpy as np
import re

with open('data-puzzle.txt', 'r') as f:
    data = f.read().strip().split('\n')
    numbers = [int(num) for num in re.split(',', data[0].strip())]
    boards = []
    board = []
    for i in range(2, len(data)):
        if not data[i]:
            boards.append(board)
            board = []
        else:
            board.append([int(num) for num in re.split('\\s+', data[i].strip())])
    boards=np.array(boards)

boards_filled = np.zeros_like(boards)

def return_winner():
    vert = (boards_filled.sum(axis=1)==5)
    hor = (boards_filled.sum(axis=2)==5)
    if np.any(vert):
        winner = np.where(boards_filled.sum(axis=1)==5)[0]
    elif np.any(hor):
        winner = np.where(boards_filled.sum(axis=2)==5)[0]
    else:
        return None
    print("we have a winner!")
    return winner

for num in numbers:
    int(num)
    mask = (boards == num)
    boards_filled[mask] = 1
    vert = (boards_filled.sum(axis=1)==5)
    hor = (boards_filled.sum(axis=2)==5)
    winner = return_winner()
    if winner is not None:
        break

if np.any(vert):
    winner = np.where(boards_filled.sum(axis=1)==5)[0]
else:
    winner = np.where(boards_filled.sum(axis=2)==5)[0]
    
unmarked = (boards_filled[winner]==0)
answer = boards[winner][unmarked].sum()*num
print(f"The winner is board {winner} with a score of {answer}!")