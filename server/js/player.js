export * from "./player";
import Item from "./item";

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

export	let changeName = function(newName){
		gameSystem.renderText(".charWrap__mainInfo_basic-info [data-info=name]", newName);
	}	

export	let levelUp = function(){
		info[exp] = 0;
		info[expTolvlup] = info[expTolvlup] * 2;
		info[freeAttributes] += 3;
		info[level] += 1;
		gameSystem.renderLvlUp(info[level], expTolvlup, freeAttributes);
		gameSystem.message(`You reached character's level ${level}.`);
	}
// передает все данные в view. Не стал делать в gameSystem т.к. данные инкапсулированы и доступа к ним нет.
export	let renderAll = function(){
		const extendedObj = {};
		$.extend(extendedObj, info, attr, stats);
	$.each(extendedObj, function(key, value){
		$(`.charWrap__mainInfo [data-info=${key}]`).html(value);
	})
	}

export	let addAttribute = function(attribute){
		if(info.freeAttributes <= 0){gameSystem.message("There are no free attributes."); return false;}
		switch(attribute){
			case "strength":
			attr.strength += 1;
			info.freeAttributes -= 1;
			stats.damage += DAMAGE_BONUS_PER_STRENGTH;
			gameSystem.renderText(".charWrap__mainInfo_stats [data-info=damage]", stats.damage);
			gameSystem.incrAttribute("strength");
			break;
			case "endurance":
			attr.endurance += 1;
			info.freeAttributes -= 1;
			stats.defence += DEFENCE_BONUS_PER_ENDURANCE;
			gameSystem.renderText(".charWrap__mainInfo_stats [data-info=defence]", stats.defence);
			gameSystem.incrAttribute("endurance");
			break;
			case "vitality":
			attr.vitality += 1;
			info.freeAttributes -= 1;
			stats.hitpoints += HP_BONUS_PER_VITALITY;
			gameSystem.renderText(".charWrap__mainInfo_stats [data-info=hitpoints]", stats.hitpoints);
			gameSystem.incrAttribute("vitality");			
			break;
		}
			gameSystem.renderText(".charWrap__mainInfo_attributes [data-info=freeAttributes]", info.freeAttributes);
	}

export	let equipItem = function(thing){
		let item = Item.getItem(thing);
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

export	let unequipItem = function(item){
		if (inventory[item.type] === null){
			return gameSystem.message(`There is no item on ${item.type} slot.`);
		}
		removeItemStats(item);
		inventory[item.type] = null;
		gameSystem.message(`${item.name} has been unequiped.`);
	}

// слияние статов при одевании вещи
export	let mergeItemStats = function(item){
		for(let par in item.parameters){
			stats[par] += item.parameters[par];
		}
	}

export	let removeItemStats = function(item){
		for(let par in item.parameters){
			stats[par] -= item.parameters[par];
		}
	}

export	let compareItemStats = function(){

	}
