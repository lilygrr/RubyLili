class Player
	@vida=nil
	
  def play_turn(warrior)

	@vida=warrior.health unless @vida
	
		if warrior.feel.empty?
			if warrior.health<@vida
				warrior.walk!
			elseif
			 warrior.health<7
				warrior.rest!
				else
				warrior.walk!
				end
			
		else
			if warrior.feel.captive?	
			warrior.rescue!
			else
			warrior.attack!
				end
				
		end
	@vida=warrior.health
 end
end
