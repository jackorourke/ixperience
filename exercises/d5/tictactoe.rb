# returns Boolean. Tests if input is a valid integer 0-8
def input_valid?(input)
	if input.to_i.to_s != input
		false
	elsif input.to_i < 0 || input.to_i > 8
		false
	else
		true
	end
end

def print_board(board) #board is an array of length 9
	puts " #{board[0]} | #{board[1]} | #{board[2]}"
	puts "---+---+---"
	puts " #{board[3]} | #{board[4]} | #{board[5]}"
	puts "---+---+---"
	puts " #{board[6]} | #{board[7]} | #{board[8]}"
end	

puts "Let's play tic-tac-toe!"

game_won = false
game_over = false
player_one_turn = true
winner = ""

game_board = []
for i in 0..8
	game_board[i] = " "
end

while (game_over == false) && (game_won ==false)
	if player_one_turn == true   #player 1's turn
		puts "Player 1: "
		move = gets.strip
		if !(input_valid?(move))
			puts "Invalid input!"
		else
			move = move.to_i
			if game_board[move] == " "
				game_board[move] = 1
				player_one_turn = false
				print_board game_board
			else
				puts "Error! Square already taken"
			end
		end
	else		#player 2's turn
		puts "Player 2: "
		move = gets.strip
		if !(input_valid?(move))
			puts "Invalid input!"
		else
			move = move.to_i
			if game_board[move] == " "
				game_board[move] = 2
				player_one_turn = true
				print_board game_board
			else
				puts "Error! Square already taken"
			end
		end
	end
	

	player_1_moves = []
	game_board.each_with_index do |square, index|
		if square == 1
			player_1_moves << index
		end
	end

	player_2_moves = []
	game_board.each_with_index do |square, index|
		if square == 2
			player_2_moves << index
		end
	end

	winning_combos = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
	winning_combos.each do |set|
		if (set - player_1_moves).empty?
			game_won = true
			winner = "Player 1"
			puts "Congrats, Player 1 won!"
			break
		end
	end

	winning_combos.each do |set|
		if (set - player_2_moves).empty?
			game_won = true
			winner = "Player 2"
			puts "Congrats, Player 2 won!"
			break
		end
	end

	if !(game_board.include? " ")    #checks to see if board is full
		game_over = true
		puts "Cats game!" unless game_won
	end

end
