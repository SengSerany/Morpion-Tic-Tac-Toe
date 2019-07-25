class Index
	
require_relative '../app/game.rb'

	def page_accueil
		system "clear"
		puts "\n"
		puts '░'*57
		puts '
	 __     ___            ___            ___ 
	|__) | |__  |\ | \  / |__  |\ | |  | |__  
	|__) | |___ | \|  \/  |___ | \| \__/ |___ 
	                                          '
	    print '	 __             __           ___ 
	|  \  /\  |\ | /__`    |    |__  
	|__/ /~~\ | \| .__/    |___ |___ 
		                                 '
	    puts '
	      __   __   __     __       
	|\/| /  \ |__) |__) | /  \ |\ | 
	|  | \__/ |  \ |    | \__/ | \| 
		                                 '
		puts "\n"
		puts '░'*57
		puts "\n"
		sleep(1)
		puts "	Le Morpion, également appelé Tic-Tac-Toe,"
		sleep(2)
		puts "	se joue sur une grille carrée de 3x3 cases."
		sleep(2)
		puts "	Deux joueurs, vous et un autre s'affrontent."
		sleep(2)
		puts "	Ils doivent remplir chacun à leur tour une"
		sleep(2)
		puts "	case de la grille avec le symbole"
		sleep(2)
		puts "	qui leur est attribué : O ou X.
		\n"

		sleep(2)

		puts "	Le gagnant est celui qui arrive à aligner" 
		sleep(2)
		puts "	trois symboles identiques, horizontalement,"
		sleep(2)
		puts "	verticalement ou en diagonale."
		sleep(4)
		
		system "clear"
		
		puts '
	      __   __            ___     __        __  
	 /\  |__) |__) |  | \ / |__     /__` |  | |__) 
	/~~\ |    |    \__/  |  |___    .__/ \__/ |  \ 
	                                               '
	  	puts '
		 ___      ___  __   ___  ___ 
		|__  |\ |  |  |__) |__  |__  
		|___ | \|  |  |  \ |___ |___ '
		puts "
			pour jouer"

		puts "\n		Appuyez sur n'importe quelles\n		autres touches + ENTREE pour non"
		
		choix_menu = gets

		if choix_menu == "\n"
			game1 = Game.new.perform
		else
			puts "\n		A plus, dans le bus ! ;)"
			sleep(1)
		end
	end

	def perform
		page_accueil
	end

end

