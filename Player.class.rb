class Player
	
	attr_reader :name
	attr_accessor :hp, :dmg1, :dmg2, :exp, :gold
# 					slot1	  slot2   slot3   slot4		   slot5   slot6         slot7	   slot8    slot9
	attr_accessor :necklace, :helmet, :ring, :first_hand, :chest, :second_hand, :gloves, :leggins, :boots

	def initialize(name, hp=100, dmg1=1, dmg2=2, exp=0, gold=0)
		@name = name
		@hp = hp
		@dmg1 = dmg1
		@dmg2 = dmg2
		@exp = exp
		@gold = gold
	end

	private

	def fight(name) # имя того с кем бьешься
		while true
			temporary_hp_player = player.hp
			temporary_hp_enemy = name.hp
			#sleep(rand(3..5))
			your_hit = rand(player.dmg1..player.dmg2)
			temporary_hp_enemy -= your_hit
			#sleep(rand(3..5))
			puts "You hit for #{your_hit} damage. #{name.name} got #{temporary_hp_enemy}hp left."
			enemy_hit = rand(name.dmg1..name.dmg2)
			temporary_hp_player -= enemy_hit
			puts "{name.name} hit for #{enemy_hit} damage. You got #{temporary_hp_player}hp left."
			break if temporary_hp_player <= 0 || temporary_hp_enemy <= 0
		end
			if player.hp > 0 && name.hp <= 0
				gold_earned = rand(name.gold1..name.gold2)
				player.gold += gold_earned
				player.exp += name.exp
				puts "You earned #{gold_earned} gold and #{name.exp} experience"
			if player.hp <= 0
				puts "You died."
			else puts "Something wrong."
			end
	end


end

=begin  necklace 		# slot1
		 helmet 			#slot2
		ring = ring 				#slot3
		first_hand = first_hand	#slot4
		chest = chest 				#slot5
		second_hand = second_hand  #slot6
		gloves = gloves			#slot7
		boots = boots				#slot9
=end