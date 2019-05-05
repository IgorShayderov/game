class Item{
	constructor(options){
		this.name = name;
		this.type = type;
		this.stength_required = stength_required;
		this.parameters = parameters;
		this.power = power; // class from 1 to 9
	}
	defaults = {

	}
	$.extend(options, defaults);

	@@items = {}

	def initialize(name, type, stength_required = 0, power=1, parameters)
		@name = name
		@type = type
		@stength_required = stength_required
		@power = power
		@damage = parameters[:damage]
		@defence = parameters[:defence]
		@hitpoints = parameters[:hitpoints]
		@magic_defence = parameters[:magic_defence]
		@parameters = parameters
		@@items[name.downcase.gsub(/\s+/, '_').to_sym] = {
		name: name, type: type, stength_required: stength_required, power: power, parameters: parameters}
	end

	def self.new_item(name, type, stength_required=0, power=1, parameters)
		Item.new(name, type, stength_required, power, parameters)
	end

	def self.item_list
		@@items.each {|key, value| p "<<key>>: #{key}, <<value>>: #{value}."}
	end

	def self.get_item(name)
		@@items[name]
	end

	private

}