class Player{
constructor(name="Player"){
	this.name = name;
	this.HP_BONUS_PER_VITALITY = 10;
	this.DEFENCE_BONUS_PER_ENDURANCE =2;
	this.DAMAGE_BONUS_PER_STRENGTH = 1;
	this.dmg_variations = [0.8, 0.9, 1, 1.1, 1.2, 1.3];
	this.defaults = {
		name: "Player",
		exp: 0,
		exp_to_lvlup: 1000,
		gold: 0,
		level: 0,
		free_attributes: 0,
		enemies_killed: 0
	}
	this.attr = {
		strength: 10,
		endurance: 10,
		vitality: 10
	}
	this.stats = { 
		hitpoints: 100, damage: 10, defence: 0, magic_defence: 0, crit_dmg: 2, crit_chance: 5
	}
	this.inventory = {
		necklace: null, helmet: null, ring: null, weapon: null, armor: null, shield: null, 
		gloves: null, leggins: null, boots: null
	}
}

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
		
	equip_item(item){
		item = Item.get_item
	}
	
}