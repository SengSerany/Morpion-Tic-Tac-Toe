
require_relative '../views/board.rb'

class Game

	def intro_game
		system "clear"
		puts "\n	Comme je te l'ai dis précedemment,\n	le morpion se joue sur un terrain carré 3 X 3.\n"
		sleep(3)
		puts "\n	De gauche à droite,\n	les colonnes sont respectivement nommées:\n	A, B et C.\n\n"
		sleep(3)
		puts "	De haut en bas,\n	les rangées sont respectivement nommées:\n	1, 2 et 3."
		sleep(3)
		puts "\n 	Appuye sur entree pour continuer.."
		gets.chomp

		board1 = Board.new.perform
	end

		def perform
		intro_game
	end
end