
class WildAnimal

	@@bestiary = {}

	attr_reader :name, :hitpoints, :damage, :exp, :gold, :defence, :stats

	def initialize(stats)
		raise StandardError, 'Wrong stats!' if stats[:name] == nil || stats[:hitpoints] == nil

		@name = stats[:name]
		@hitpoints = stats[:hitpoints]
		@damage = stats[:damage]
		@exp = stats[:exp]
		@gold = stats[:gold]
		@def = stats[:defence]
		@@bestiary[stats[:name].downcase.gsub(/\s+/, '_').to_sym] = self
	end

	def self.new_animal(stats)
		WildAnimal.new(stats)
	end

	protected

	def self.bestiary
		@@bestiary
	end

	def self.show_bestiary
		@@bestiary.each {|k,v| p "key: #{k}, value: #{v}"}
	end

	def self.rand_from_bestiary
		values = @@bestiary.values
		values[rand(values.size)]
	end

end