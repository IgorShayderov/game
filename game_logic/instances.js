//Locations
Location.newLocation("Enterance");
Location.newLocation("Marvelous Forest");
Location.newLocation("Endless Plains");
Location.newLocation("Twisted Meadows");
Location.newLocation("Steep Mountains");
Location.newLocation("Frozen Valley");
Location.newLocation("Black Lake");
Location.newLocation("Haunted Castle");
Location.newLocation("Border Outpost");
//
//Haunted Castle <   >  Steep Mountains   <   >	 Haunted Castle		
//		^			          ^					      ^
//Frozen Valley  <   >  Marvelous Forest  <   >  Black Lake
// 		^		              ^			              ^
//Endless Plains <   >    Enterance       <   >  Twisted Meadows 
//							  ~
//					    Border Outpost
//
// //Monsters
WildAnimal.newAnimal({name: "Little Rat",	 	hitpoints: 60,  damage:	3,   def: 0,    exp:	20,  gold:	5});
WildAnimal.newAnimal({name: "Pholcidae", 		hitpoints: 50,  damage:	7,   def: 3,	exp:	35,  gold:	8});
WildAnimal.newAnimal({name: "Weak Skeleton",   hitpoints: 110, damage:	8,   def: 0,    exp:	45,  gold:	13});
WildAnimal.newAnimal({name: "Young Wolf", 	hitpoints: 100, damage:	10,  def: 5,    exp:	50,	 gold:	15});
WildAnimal.newAnimal({name: "Rotten Zombie", 	hitpoints: 185, damage:	5, 	 def: 10,   exp:	80,  gold:	21});
WildAnimal.newAnimal({name: "Lame Bear",   	hitpoints: 250, damage:	15,  def: 12,   exp:	110, gold:	33});
WildAnimal.newAnimal({name: "Rhino",			hitpoints: 400, damage: 30,  def: 60,   exp: 	480, gold: 165});
WildAnimal.newAnimal({name: "Stone Giant", 	hitpoints: 700, damage:	70,  def: 90,   exp:	850,gold:	270});
//
//Items
//weapon


Item.newItem({name: "Axe of Executioner", type: "weapon", hitpoints: 80, damage: 75, critChance: 10, url:"./images/items/weapon/AxeofExecutioner.jpg", description: "Legendary weapon of the executioner who has killed his own son during execution. It makes his owner incredibly strong."});
Item.newItem({name: "Makarov Pistol", type: "weapon", damage: 50, critChance: 15, critDamage: 100, url:"./images/items/weapon/MakarovPistol.png", description: "Reliable and easy in maintain pistol."});
Item.newItem({name: "Iron Axe", type: "weapon", damage: 7, url:"./images/items/weapon/IronAxe.png", description: "Simple weapon. Low damage."});
//armor
Item.newItem({name: "Decrepit helmet", type: "helmet", hitpoints: 10, defence: 5});
Item.newItem({name: "Dulle Dagger", type: "weapon", damage: 5});
Item.newItem({name: "Metal Cuirass", type: "chest", hitpoints: 50, defence: 25});
Item.newItem({name: "Shining Shield", type: "shield", hitpoints: 150, defence: 50, magicDefence: 30, damage: 10});