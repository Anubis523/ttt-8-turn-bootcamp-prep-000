def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i-1
end

def valid_move?(board, index)
  index = index.to_i 
  return (index.between?(0,8) && !position_taken?(board[index]))
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken? (input)
  if (input == "X" || input == "O")
    return true
  elsif (input == "" ||  input == " " ||  input == nil)
    return false
  end
end

def move (board, index, xo)
  board[index] = xo
end