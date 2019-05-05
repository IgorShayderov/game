class Account

	attr_reader :login, :password

	@@accounts = Hash.new
	
	def initialize(login, password)
		@login = login
		@password = password
	end

	def self.accounts
	p @@accounts
	end
end