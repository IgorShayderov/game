const bestiary = {};

export default class WildAnimal{
	constructor(stats){
		this.stats = stats;
	}

	static listAll(){
		console.log("Listing animals...");
		let i = 0;
		for ( let key of Object.keys(bestiary) ) {
			i++;
			console.log(`${i}: ${key}`);
		}
	}

	static getStats(animal){
		let animalObj = bestiary[animal];
		if (animalObj){
			for ( let [par, value] of Object.entries(animalObj.stats) ) {
				console.log(`${par}: ${value}`);
			}
		} else console.log("There is no such an animal.")
	}

	static newAnimal(stats){
		bestiary[stats.name] = new WildAnimal(stats);
	}

}

WildAnimal.newAnimal({name: "Little Rat",	 	hitpoints: 60,  damage:	3,   def: 0,    exp:	20,  gold:	5});
WildAnimal.newAnimal({name: "Pholcidae", 		hitpoints: 50,  damage:	7,   def: 3,	exp:	35,  gold:	8});
WildAnimal.newAnimal({name: "Weak Skeleton",   hitpoints: 110, damage:	8,   def: 0,    exp:	45,  gold:	13});
WildAnimal.newAnimal({name: "Young Wolf", 	hitpoints: 100, damage:	10,  def: 5,    exp:	50,	 gold:	15});
WildAnimal.newAnimal({name: "Rotten Zombie", 	hitpoints: 185, damage:	5, 	 def: 10,   exp:	80,  gold:	21});
WildAnimal.newAnimal({name: "Lame Bear",   	hitpoints: 250, damage:	15,  def: 12,   exp:	110, gold:	33});
WildAnimal.newAnimal({name: "Rhino",			hitpoints: 400, damage: 30,  def: 60,   exp: 	480, gold: 165});
WildAnimal.newAnimal({name: "Stone Giant", 	hitpoints: 700, damage:	70,  def: 90,   exp:	850,gold:	270});
