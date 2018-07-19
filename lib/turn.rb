def display_board(board)
  puts 
    " #{board[0]} | #{board[1]} | #{board[2]} "
    +"-----------"
    +" #{board[3]} | #{board[4]} | #{board[5]} "
    +"-----------"
    +" #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index?(input)
  index = input.to_i-1
end

def valid_move?(board, index)
  return (board[index] != nil && position_taken?(board[index]) != true)
end

def position_taken?(input)
  if (input == "X" || input == "O")
    true
  elsif (input == "" ||input == " " ||input == nil)
    false
  end
end