class Item

	attr_reader :name, :type, :stength_required
	attr_reader :parameters

	@@items = {}

	def initialize(name, type, stength_required = 0, parameters)
		@name = name
		@type = type
		@stength_required = stength_required
		@damage = parameters[:damage]
		@defence = parameters[:defence]
		@hitpoints = parameters[:hitpoints]
		@magic_defence = parameters[:magic_defence]
		@parameters = parameters
		@@items[name.downcase.gsub(/\s+/, '_').to_sym] = {name: name, type: type, stength_required: stength_required, parameters: parameters}
	end

	def self.new_item(name, type, stength_required=0, parameters)
		Item.new(name, type, stength_required=0, parameters)
	end

	def self.item_list
		@@items.each {|key, value| p "<<key>>: #{key}, <<value>>: #{value}."}
	end

	def self.get_item(name)
		@@items[name]
	end

	private

end
