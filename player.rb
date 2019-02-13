require_relative 'wildanimal'

class Player
	
	HP_BONUS_PER_VITALITY = 10
	DEFENCE_BONUS_PER_ENDURANCE = 2
	DAMAGE_BONUS_PER_STRENGTH = 1

	attr_accessor :name, :exp, :exp_to_lvlup, :gold, :level

	attr_accessor :inventory, :stats, :attributes, :free_attributes, :enemies_killed

	def initialize(name)
# 	slot1	    	slot2   	slot3   		slot4		   slot5   		slot6         		slot7	   slot8   		   slot9
	@inventory = {
	:necklace => nil, :helmet => nil, :ring => nil, :weapon => nil, :armor => nil, :shield => nil, 
	:gloves => nil, :leggins => nil, :boots => nil
	}
	@stats = { hitpoints: 100, damage: 10, defence: 0, magic_defence: 0, crit_dmg: 2, crit_chance: 5
	}
	@attributes = {
		strength: 10,
		endurance: 10,
		vitality: 10
	}
	@dmg_variations = [0.8, 0.9, 1, 1.1, 1.2]
		@name = name
		@exp = 0
		@exp_to_lvlup = 1000
		@gold = 0
		@level = 1 
		@free_attributes = 0
		@enemies_killed = 0
	end

	def equip_item(item)
		item = Item.get_item(item.to_sym)
		if self.inventory[item[:type]] == nil
			if self.attributes[:strength] >= item[:stength_required]
			self.inventory[item[:type]] ||= item[:name]
			add_item_stats(item)
			puts "#{self.name} has equiped #{item[:name]}."
			else puts "You have no enough strenth."
			end
		else puts "You already have equiped item: #{self.inventory[item[:type]]}"
		end
	end


	def unequip_item(item)
		item = Item.get_item(item.to_sym)
		if self.inventory[item[:type]] != nil
			rem_item_stats(item)
			self.inventory[item[:type]] = nil
			puts "#{self.name} has unequiped #{item[:name]}."
		else
			puts "You don't have weared item."
		end

	end

	def lvl_up
		if self.can_lvlup?
		@exp_to_lvlup *= 2
		@level += 1
		@free_attributes += 4
		puts "#{self.name} has reached level @#{@level}."
		else
		end
	end

	def use_attribute(choice)
		@attributes[:choice] += 1
	end

	def hunt
		if rand(100) < 50
			sudden_attack
		else puts "You found something."
		end
	end

	#private

	def add_item_stats(item)
		self.stats.merge!(item[:parameters]) {|key, stats, parameters| stats + parameters}
	end

	def rem_item_stats(item)
		self.stats.merge!(item[:parameters]) {|key, stats, parameters| stats - parameters}
	end

	def sudden_attack
		animal = WildAnimal.rand_from_bestiary
		puts "You got attacked by #{animal.stats[:name]}!"
		fight(animal)
		raise
	  	rescue => error
	  		puts error.message
	end

	def fight(name)
		temporary_hp_player = self.stats[:hitpoints]
		temporary_hp_enemy = name.stats[:hitpoints]
		p "You got #{self.exp} experience."
		while true			
			#sleep(rand(3..5))
			your_hit = damage(self, name)
			temporary_hp_enemy -= your_hit
			#sleep(rand(3..5))
			puts "You hit for #{your_hit} damage. #{name.stats[:name]} got #{temporary_hp_enemy}hp left."
			enemy_hit = damage(name, self) if temporary_hp_enemy > 0
			temporary_hp_player -= enemy_hit if temporary_hp_enemy > 0
			puts "#{name.stats[:name]} hit for #{enemy_hit} damage. You got #{temporary_hp_player}hp left." if temporary_hp_enemy > 0
			break if temporary_hp_player <= 0 || temporary_hp_enemy <= 0
		end
			if temporary_hp_player > 0 && temporary_hp_enemy <= 0
				gold_for_win = par_gained(name.stats[:gold])
				self.gold += gold_for_win
				exp_for_win = par_gained(name.stats[:exp])
				self.exp += exp_for_win
				puts "You earned #{gold_for_win} gold and #{exp_for_win} experience"
				self.lvl_up
			elsif temporary_hp_player <= 0
				puts "You died."
			else puts "Something goes wrong."
			end
	end

	def par_gained(parameter_to_gain) # gold or exp
		result = parameter_to_gain * rand(1.0..1.5)
		return result.to_i
	end

	def damage(opponent_1, opponent_2) #1st == dmg, 2nd == def
		if  rand(100) < opponent_1.stats[:crit_chance] || 5
			opponent_1.stats[:damage] *= opponent_1.stats[:crit_dmg] || 2
			puts 'Crittical hit!'
		end
		result = opponent_1.stats[:damage] * rand(0.8..1.4) - opponent_2.stats[:defence] / 2
		result = 1 if result < 1
		return result.to_i
	end

	def can_lvlup?
		if self.exp >= self.exp_to_lvlup
		true 
		else false
		end
	end

end
