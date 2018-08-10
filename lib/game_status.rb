# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [2, 5, 8], [1, 4, 7], [0, 4, 8], [2, 4, 6]]

def won?(board)
  WIN_COMBINATIONS.each do |win_pos|
    board_pos = []
    win_pos.each do |pos|
      board_pos << board.pos
    end
    if board_pos.all? {|pos| pos == "X"}
      return true
    elsif board_pos.all? {|pos| pos == "O"}
      return true
    end
  end
  return false
end
