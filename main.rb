require 'yaml/store'
require 'sinatra'
require 'sinatra/reloader'

require_relative 'account'
require_relative 'player'
require_relative 'location'
require_relative 'item'
require_relative 'wildAnimal'
=begin class StoreAccount

	def initialize(file)
		@store = YAML::Store.new(file)
	end

	def save(account)
		@store.transaction do
		@store[account.login] = account
		end
		
	end
end

@store = StoreAccount.new('accounts.yaml')
=end
axe_of_executioner = Item.new('Axe of Executioner', :weapon, 10, {hitpoints: 80, damage: 75})
player = Player.new('Hero')
player.equip_item('axe_of_executioner')
#--------------------------------------------------------------


get '/' do 

			erb :index
end

get '/combat' do
			erb :combat
	end

get '/shop' do
			erb :shop
	end

get '/character' do

			erb :character
end

post '/login' do

	#@account.login = params[:login]
	#@account.password = params[:password]
	#@store.save(@account)
	redirect '/'

end
	