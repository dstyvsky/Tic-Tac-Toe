
require_relative 'game.rb'

game = Game.new
system "clear"
game.draw

win = false
flip = 0
while(win == false)
	if flip == 0
		win = game.play(0)
		puts "Player 1 wins!" if win
		flip = 1
	else
		win = game.play(1)
		puts "Player 2 wins!" if win
		flip = 0
	end
end



