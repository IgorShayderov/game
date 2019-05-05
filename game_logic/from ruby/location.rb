class Location

	@@important_data = {current_location: nil}
	@@locations_list = {}

	attr_reader :name
	attr_accessor :locations_list

	def initialize(name)
		@name = name
		@@locations_list[name.downcase.gsub(/\s+/, '_').to_sym] = self
	end

	def self.new_loc(name)
		Location.new(name)
	end

	def self.change_location(location)
		if @@locations_list.key?(location)
		@@important_data [:current_location] = location
		end
	end

	def self.current_location
		puts "Current location is: #{@@important_data[:current_location].to_s.gsub(/_/, ' ').split.map(&:capitalize).join(' ')}."
	end

protected

	def self.important_data
		@@important_data.each {|key, value| p "#{key}, #{value}."}
	end

	def self.locations_list
		@@locations_list.each {|key, value| p "#{key}, #{value}."}
	end

end