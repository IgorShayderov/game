const bestiary = {};
class WildAnimal{
	constructor(stats){
		this.stats = stats;
	}

	static getAnimals(){
	$.each(bestiary, function(key, value){
		console.log(`There is ${key} with ${value.stats.damage} damage and ${value.stats.hitpoints} hitpoints!`);
	});
	}

	static newAnimal(stats){
		bestiary[stats.name] = new WildAnimal(stats);
	}

}
