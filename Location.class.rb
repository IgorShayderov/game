class Location

	@@current_location = {}
	attr_reader :name

	def initialize(name)
		@name = name
	end

	def self.change_location(location)
		@@current_location[location] = location.name
	end
end