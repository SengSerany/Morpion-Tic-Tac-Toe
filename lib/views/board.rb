require_relative '../app/game.rb'
require_relative '../app/player.rb'

class Board

	def creation_board

case_1 = 
"	|               |               |               |
	|               |               |               |
	|               |               |               |
	|               |               |               |"
case_2 = 
"	|               |               |               |
	|               |               |               |
	|               |               |               |
	|               |               |               |"
case_3 = 
"	|               |               |               |
	|               |               |               |
	|               |               |               |
	|               |               |               |"


line = 
"	 --------------- --------------- ---------------"

@arr_2 = [] << line << case_1 << line << case_2 << line << case_3 << line

	end

	def display_board
		puts "\n 		 C'est l'heure... du DU DU DU DU DUEEEL !\n"
		puts @arr_2
	end

	def update_player_name
			system "clear"
			puts "\n	Pour commencer, quel sont vos nom ?"
			puts "	Joueur 1 :"
			print "	> "
			@player_1_name = gets.chomp

			puts "\n	Joueur 2 :"
			print "	> "
			@player_2_name = gets.chomp
			
			puts "\n	#{@player_1_name}, #{@player_2_name}, vous êtes prêt?."
			puts "	    Appuyez sur entree"
			gets.chomp	

			system "clear"
			puts "\n"*5
		puts '
   __        ___          ___          ___      
  /  \ |  | |__     |    |__        | |__  |  | 
  \__X \__/ |___    |___ |___    \__/ |___ \__/ 
                                              '
    sleep(1)
    puts '
	 __   __               ___       __   ___      /
	/  ` /  \  |\/|  |\/| |__  |\ | /  ` |__      / 
	\__, \__/  |  |  |  | |___ | \| \__, |___    .  
	                                              '
 	  sleep(1)
	end

	def turn
		number_turn = 5
			while number_turn > 0 
				number_turn -= 1
				system "clear"
				self.display_board
				puts "	C'est à #{@player_1_name} de jouer avec les 'X'\n 	Choisis une lettre (majuscule) et un chiffre."
				puts "\n	    Attention, si tu joues a un deja marqué,\n	TU PERD TON TOUR."
				print "	> "
				choice_player_1 = gets.chomp
					if choice_player_1 == "A1"
						self.play_A_1("X")
					elsif 
						choice_player_1 == "A2"
						self.play_A_2("X")
					elsif 
						choice_player_1 == "A3"
						self.play_A_3("X")
					elsif 
						choice_player_1 == "B1"
						self.play_B_1("X")
					elsif 
						choice_player_1 == "B2"
						self.play_B_2("X")
					elsif 
						choice_player_1 == "B3"
						self.play_B_3("X")
					elsif 
						choice_player_1 == "C1"
						self.play_C_1("X")
					elsif 
						choice_player_1 == "C2"
						self.play_C_2("X")
					elsif 
						choice_player_1 == "C3"
						self.play_C_3("X")
						
					end
					system "clear"
				self.display_board
				break if victory_?("X") == true
				puts "	C'est à #{@player_2_name} de jouer avec les 'X'\n	Choisis une lettre (majuscule) et un chiffre."
				puts "\n		Attention, si tu joues a un deja marqué,\n	TU PERD TON TOUR."
				print "	> "
				choice_player_2 = gets.chomp
					if choice_player_2 == "A1"
						self.play_A_1("O")
					elsif 
						choice_player_2 == "A2"
						self.play_A_2("O")
					elsif 
						choice_player_2 == "A3"
						self.play_A_3("O")
					elsif 
						choice_player_2 == "B1"
						self.play_B_1("O")
					elsif 
						choice_player_2 == "B2"
						self.play_B_2("O")
					elsif 
						choice_player_2 == "B3"
						self.play_B_3("O")
					elsif 
						choice_player_2 == "C1"
						self.play_C_1("O")
					elsif 
						choice_player_2 == "C2"
						self.play_C_2("O")
					elsif 
						choice_player_2 == "C3"
						self.play_C_3("O")
					end
					system "clear"
					self.display_board
					break if victory_?("O") == true
					
			end

			if number_turn == 0
			puts "	MATCH NUL \n\n	Voulez-vous refaire une partie?\n\n 		Appuyez sur ENTREE pour oui\n\n		Appuyez sur n'importe quelles\n		autres touche + ENTREE pour non\n"	
				print "		> "
				chx = gets
				if chx == "\n"
					Index.new.perform
				else
					puts "\n A plus, dans le bus !"
				end
			else 
			puts "	Voulez-vous refaire une partie?\n\n 		Appuyez sur ENTREE pour oui\n\n		Appuyez sur n'importe quelles\n		autres touches + ENTREE pour non\n"
				print "		> "
				chx = gets
				if chx == "\n"
					Index.new.perform
				else
					puts "\n	A plus, dans le bus !"
				end
			end
	end

	def play_A_1(symbol)
	# CASE A1
		@arr_2[1][58] = "#{symbol}"
		@arr_2[1][108] = "#{symbol}"
	end

	def play_A_2(symbol)
	# CASE A2
		@arr_2[3][58] = "#{symbol}"
		@arr_2[3][108] = "#{symbol}"	
	end

	def play_A_3(symbol)
	# CASE A3
		@arr_2[5][58] = "#{symbol}"
		@arr_2[5][108] = "#{symbol}"
	end

	def play_B_1(symbol)
	# CASE B1+
		@arr_2[1][74] = "#{symbol}"
		@arr_2[1][124] = "#{symbol}"
	end

	def play_B_2(symbol)
	# CASE B2
		@arr_2[3][74] = "#{symbol}"
		@arr_2[3][124] = "#{symbol}"
	end

	def play_B_3(symbol)
	# CASE B3
		@arr_2[5][74] = "#{symbol}"
		@arr_2[5][124] = "#{symbol}"
	end

	def play_C_1(symbol)
	# CASE C1
		@arr_2[1][90] = "#{symbol}"
		@arr_2[1][140] = "#{symbol}"
	end

	def play_C_2(symbol)
	# CASE C2
		@arr_2[3][90] = "#{symbol}"
		@arr_2[3][140] = "#{symbol}"
	end

	def play_C_3(symbol)
	# CASE C3
		@arr_2[5][90] = "#{symbol}"
		@arr_2[5][140] = "#{symbol}"	
	end

	def victory_?(symbol)
		#VICTOIRE : A1 - A2 - A3
		if @arr_2[1][58] == "#{symbol}" && @arr_2[3][58] == "#{symbol}" && @arr_2[5][58] == "#{symbol}"
			puts "	'#{symbol}' WIN."
			return true
		#VICTOIRE : B1 - B2 - B3
		elsif @arr_2[1][74] == "#{symbol}" && @arr_2[3][74] == "#{symbol}" && @arr_2[5][74] == "#{symbol}"
			puts "	'#{symbol}' WIN."
			return true
		#VICTOIRE : C1 - C2 - C3
		elsif @arr_2[1][90] == "#{symbol}" && @arr_2[3][90] == "#{symbol}" && @arr_2[5][90] == "#{symbol}"
			puts "	'#{symbol}' WIN."
			return true
		#VICTOIRE : A1 - B1 - C1
		elsif @arr_2[1][58] == "#{symbol}" && @arr_2[1][74] == "#{symbol}" && @arr_2[1][90] == "#{symbol}"
			puts "	'#{symbol}' WIN."
			return true
		#VICTOIRE : A2 - B2 - C2
		elsif @arr_2[3][58] == "#{symbol}" && @arr_2[3][74] == "#{symbol}" && @arr_2[3][90] == "#{symbol}"
			puts "	'#{symbol}' WIN."
			return true
		#VICTOIRE : A3 - B3 - C3
		elsif @arr_2[5][58] == "#{symbol}" && @arr_2[5][74] == "#{symbol}" && @arr_2[5][90] == "#{symbol}"
			puts "	'#{symbol}' WIN."
			return true
		#VICTOIRE : A1 - B2 - C3
		elsif @arr_2[1][58] == "#{symbol}" && @arr_2[3][74] == "#{symbol}" && @arr_2[5][90] == "#{symbol}"
			puts "	'#{symbol}' WIN."
			return true
		#VICTOIRE : A3 - B2 - C1
		elsif @arr_2[5][58] == "#{symbol}" && @arr_2[3][74] == "#{symbol}" && @arr_2[1][90] == "#{symbol}"
			puts "	'#{symbol}' WIN."
			return true
		else
			return false
		end
	end

	def perform
		creation_board
		update_player_name
		turn
	end
end
