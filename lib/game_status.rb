# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [2, 5, 8], [1, 4, 7], [0, 4, 8], [2, 4, 6]]

def won?(board)
  win = false
  WIN_COMBINATIONS.each |set|
    set.each |pos|
      x_counter = 0
      o_counter = 0
      if board[pos] == "X"
        x_counter += 1
      elsif board[pos] == "O"
        o_counter += 1
      end
      if x_counter == 3 || o_counter == 3
        win = true
      end
    end
  return win
end
