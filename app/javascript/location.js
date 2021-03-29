const locations = {};
let currentLocation = "Enterance";

export default class Location {

	constructor(name){
	this.name = name;
	}

	static listAll(){
		console.log("Listing locations...");
		let i = 0;
		for ( let key of Object.keys(locations) ) {
			i++;
			console.log(`${i}: ${key}`);
		}
	}

	static changeLocation(location){
		if(locations[location]){
			currentLocation = location;
			document.querySelector("#currentLocation span").innerHTML(location);
			gameSystem.message(`You are in ${location}.`);
		} else {
			throw new Error(`There is no location ${location}`);
		}
	}

	static currentLocation(){
		gameSystem.message(`Current location is ${currentLocation}.`);
	}

	static newLocation(name){
		locations[name] = new Location(name);
	}
}
//
//Haunted Castle <   >  Steep Mountains   <   >	 Haunted Castle		
//		^			          ^					      ^
//Frozen Valley  <   >  Marvelous Forest  <   >  Black Lake
// 		^		              ^			              ^
//Endless Plains <   >    Enterance       <   >  Twisted Meadows 
//							  ~
//					    Border Outpost
//
Location.newLocation("Enterance");
Location.newLocation("Marvelous Forest");
Location.newLocation("Endless Plains");
Location.newLocation("Twisted Meadows");
Location.newLocation("Steep Mountains");
Location.newLocation("Frozen Valley");
Location.newLocation("Black Lake");
Location.newLocation("Haunted Castle");
Location.newLocation("Border Outpost");
