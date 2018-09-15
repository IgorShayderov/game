
class WildAnimal

	@@bestiary = {}

	attr_reader :name, :hp, :dmg, :exp, :gold, :def

	def initialize(options)
		raise StandardError, 'Wrong options!' if options[:name] == nil || options[:hp] == nil

		@name = options[:name]
		@hp = options[:hp]
		@dmg = options[:dmg]
		@exp = options[:exp]
		@gold = options[:gold]
		@def = options[:def]
		@@bestiary[options[:name].downcase.gsub(/\s+/, '_').to_sym] = options
	end

	def self.new_animal(options)
		WildAnimal.new(options)
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