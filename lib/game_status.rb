# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [ 
[0,1,2], # top_row 
[3,4,5], # middle_row 
[6,7,8], # bottom_row 
[0,3,6], # left_column 
[1,4,7], # center_column 
[2,5,8], # right_column 
[0,4,8], # left_diagonal 
[6,4,2] # right_diagonal 
]

def won?(board)
 WIN_COMBINATIONS.each do |win_combination|
   win_index_1 = win_combination[0]
   win_index_2 = win_combination[1]
   win_index_3 = win_combination[2]
   position_1 = board[win_index_1] # value of board at win_index_1
   position_2 = board[win_index_2] # value of board at win_index_2
   position_3 = board[win_index_3] # value of board at win_index_3
   position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1)
 end
end
