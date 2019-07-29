const items = {};
class Item {
	constructor(params){
		this.params = params;
	}

	static newItem(params){
		items[params.name] = new Item(params);
	}

}
