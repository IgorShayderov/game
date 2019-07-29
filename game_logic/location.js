const locations = {};
class Location {
	constructor(name){
	this.name = name;
	Location.curLoc = "Enterance";
	}

	static changeLocation(location){
		if(locations[location]){
			Location.curLoc = location;
			$("#currentLocation span").html(location);
			gameSystem.message(`You are in ${Location.curLoc}.`);
		} else {
			console.log(`There is no location ${location}`);
		}
	}

	static currentLocation(){
		gameSystem.message(`Current location is ${Location.curLoc}.`);
	}


	static newLocation(name){
		locations[name] = new Location(name);
	}
}

