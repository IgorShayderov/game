const items = {
	necklace: new Map(),
	helmet: new Map(),
	ring: new Map(),
	weapon: new Map(),
	armor: new Map(),
	shield: new Map(),
	gloves: new Map(),
	leggins: new Map(),
	boots: new Map(),
	none: new Map()
};
// example
// items = {
// 	weapon: {"nunjucks": itemInstance.params{
// damage: 5, hitpoints: 3
// }}
// }

var itemList = function(){
	console.log(items);
}

export default class Item {
	constructor(params){
		this.params = params;
	}

	static getAll(){
		for ( let [name, map] of Object.entries(items) ) {
			map.forEach(function(itemInst, key){
				console.log(`${key}: ${itemInst.params.type}`);
			})
		}		
	}

	static newItem(params){
		if (!items[params.type]){
			console.log("There is no such type. " + params.name);
		}

		items[params.type].set(params.name, new Item(params));
	}

}

//weapon
Item.newItem({name: "Axe of Executioner", type: "weapon", hitpoints: 80, damage: 75, critChance: 10, url:"./images/items/weapon/AxeofExecutioner.jpg", description: "Legendary weapon of the executioner who has killed his own son during execution. It makes his owner incredibly strong."});
Item.newItem({name: "Makarov Pistol", type: "weapon", damage: 50, critChance: 15, critDamage: 100, url:"./images/items/weapon/MakarovPistol.png", description: "Reliable and easy in maintain pistol."});
Item.newItem({name: "Iron Axe", type: "weapon", damage: 7, url:"./images/items/weapon/IronAxe.png", description: "Simple weapon. Low damage."});
//armor
Item.newItem({name: "Decrepit helmet", type: "helmet", hitpoints: 10, defence: 5});
Item.newItem({name: "Dulle Dagger", type: "weapon", damage: 5});
Item.newItem({name: "Metal Cuirass", type: "armor", hitpoints: 50, defence: 25});
Item.newItem({name: "Shining Shield", type: "shield", hitpoints: 150, defence: 50, magicDefence: 30, damage: 10});

