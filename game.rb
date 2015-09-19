class Game
	def initialize
		@played = *(1..9)
		@possible_wins = [[0,1,2],[3,4,5],[6,7,8],[0,4,8],[6,4,2]]
	end

	def draw
		puts
		puts "  #{@played[6]} | #{@played[7]} | #{@played[8]} "
		puts "-------------"
		puts "  #{@played[3]} | #{@played[4]} | #{@played[5]}  "
		puts "-------------"
		puts "  #{@played[0]} | #{@played[1]} | #{@played[2]}  "
		puts
		puts "Please enter the number of the place where you would like to play!"
	end

	def player1
		choice = gets.chomp
		@played[choice.to_i - 1] = "X"
	end

	def player2
		choice = gets.chomp
		@played[choice.to_i - 1] = "O"
	end

	def next_turn(player_num)
		puts "Player #{player_num} you're up!"
	end

	def gameover?
			awin = false
			@possible_wins.each do |i|
				if i.all? {|x| @played[x] == "X"}
					awin = true
				end
			end
			awin
	end

	def play(player)
		next_turn((player + 1).to_s)
		choice = gets.chomp
		player == 0 ? @played[choice.to_i - 1] = "X" : @played[choice.to_i - 1] = "O"
		system "clear"
		draw
		gameover?
	end


end

