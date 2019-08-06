const player = (function () {

	const HP_BONUS_PER_VITALITY = 10;
	const DEFENCE_BONUS_PER_ENDURANCE = 2;
	const DAMAGE_BONUS_PER_STRENGTH = 1;
	const dmgVariations = [0.8, 0.9, 1, 1.1, 1.2, 1.3];

	let name = "Hero";

	let info = {
		exp: 0,
		expTolvlup: 1000,
		gold: 0,
		level: 0,
		freeAttributes: 5,
		enemiesKilled: 0
	}

	let attr = {
		strength: 5,
		endurance: 5,
		vitality: 5
	}
	let stats = { 
		hitpoints: 100, damage: 5, defence: 0, magicDefence: 0, critDamage: 140, critChance: 5
	}
	let inventory = {
		necklace: null, helmet: null, ring: null, weapon: null, armor: null, shield: null, 
		gloves: null, leggins: null, boots: null
	}

	let changeName = function(newName){
		gameSystem.renderText(".info [data-info=name]", newName);
	}	
// передает все данные в view. Не стал делать в gameSystem т.к. данные инкапсулированы и доступа к ним нет.
	let renderAll = function(){
		const extendedObj = {};
		$.extend(extendedObj, info, attr, stats);
	$.each(extendedObj, function(key, value){
		$(`.info [data-info=${key}]`).html(value);
	})
	}

	let addAttribute = function(attribute){
		if(info.freeAttributes <= 0){gameSystem.message("There are no free attributes."); return false;}
		switch(attribute){
			case "strength":
			attr.strength += 1;
			info.freeAttributes -= 1;
			stats.damage += DAMAGE_BONUS_PER_STRENGTH;
			gameSystem.renderText(".info [data-info=damage]", stats.damage);
			gameSystem.incrAttribute("strength");
			break;
			case "endurance":
			attr.endurance += 1;
			info.freeAttributes -= 1;
			stats.defence += DEFENCE_BONUS_PER_ENDURANCE;
			gameSystem.renderText(".info [data-info=defence]", stats.defence);
			gameSystem.incrAttribute("endurance");
			break;
			case "vitality":
			attr.vitality += 1;
			info.freeAttributes -= 1;
			stats.hitpoints += HP_BONUS_PER_VITALITY;
			gameSystem.renderText(".info [data-info=hitpoints]", stats.hitpoints);
			gameSystem.incrAttribute("vitality");			
			break;
		}
			gameSystem.renderText(".info [data-info=freeAttributes]", info.freeAttributes);
	}

	let equipItem = function(item){
		if (inventory[item.type] === null){
			if (item.stengthRequired > attr.strength){
				return gameSystem.message(`This item requires ${item.stengthRequired} strength.`);
			}
			else if (item.enduranceRequired > attr.endurance){
				return gameSystem.message(`This item requires ${item.enduranceRequired} endurance.`);
			}
			else if (item.vitalityRequired > attr.vitality){
				return gameSystem.message(`This item requires ${item.vitalityRequired} vitality.`);
			} else {
			inventory[item.type] = item.name;
			mergeItemStats(item);
			gameSystem.message(`You have equiped ${item.name}.`);
			}
		} else {
			gameSystem.message(`You already have equiped item ${inventory[item.type]}.`);
		}
		
	}

	let unequipItem = function(item){
		if (inventory[item.type] === null){
			return gameSystem.message(`There is no item on ${item.type} slot.`);
		}
		removeItemStats(item);
		inventory[item.type] = null;
		gameSystem.message(`${item.name} has been unequiped.`);
	}

	let levelUp = function(){
		info[exp] = 0;
		info[expTolvlup] = info[expTolvlup] * 2;
		info[freeAttributes] += 3;
		info[level] += 1;
		gameSystem.renderLvlUp(info[level], expTolvlup, freeAttributes);
		gameSystem.message(`You reached character's level ${level}.`);
	}
// слияние статов при одевании вещи
	let mergeItemStats = function(item){
		for(let par in item.parameters){
			stats[par] += item.parameters[par];
		}
	}

	let removeItemStats = function(item){
		for(let par in item.parameters){
			stats[par] -= item.parameters[par];
		}
	}

	let compareItemStats = function(){

	}

	// let battle = function (opponent){
	// 	let tempHpPlayer = stats.hitpoints;
	// 	let tempHpEnemy = opponent.stats.hitpoints;
	// 	while (tempHpPlayer > 0 || tempHpEnemy >0){
	// 		let playerHit = stats.damage - opponent.defence;
	// 		tempHpEnemy -= playerHit;
	// 		gameSystem.message "You hit for #{your_hit} damage. #{name.stats[:name]} got #{tempHpEnemy}hp left."
	// 		enemy_hit = damage(name, self) if tempHpEnemy > 0
	// 		tempHpPlayer -= enemy_hit if tempHpEnemy > 0
	// 		puts "#{name.stats[:name]} hit for #{enemy_hit} damage. You got #{tempHpPlayer}hp left." if tempHpEnemy > 0
	// 		break if tempHpPlayer <= 0 || tempHpEnemy <= 0
	// 	end
	// 		if tempHpPlayer > 0 && tempHpEnemy <= 0
	// 			gold_for_win = par_gained(name.stats[:gold])
	// 			self.gold += gold_for_win
	// 			exp_for_win = par_gained(name.stats[:exp])
	// 			self.exp += exp_for_win
	// 			puts "You earned #{gold_for_win} gold and #{exp_for_win} experience"
	// 			self.lvl_up
	// 		elsif tempHpPlayer <= 0
	// 			puts "You died."
	// 		else puts "Something goes wrong."
	// 	}
	// }

		// def par_gained(parameter_to_gain) # gold or exp
	// 	result = parameter_to_gain * rand(1.0..1.5)
	// 	return result.to_i
	// end

	// def damage(opponent_1, opponent_2) #1st == dmg, 2nd == def
	// 	if  rand(100) < opponent_1.stats[:crit_chance] || 5
	// 		opponent_1.stats[:damage] *= opponent_1.stats[:crit_dmg] || 2
	// 		puts 'Crittical hit!'
	// 	end
	// 	result = opponent_1.stats[:damage] * rand(0.8..1.4) - opponent_2.stats[:defence] / 2
	// 	result = 1 if result < 1
	// 	return result.to_i
	// end
	return{
		changeName: changeName,
		addAttribute: addAttribute,
		renderAll: renderAll
	}

})();