require 'sinatra'
require 'sinatra/reloader'

require_relative 'account'
require_relative 'player'
require_relative 'location'
require_relative 'item'
require_relative 'wildanimal'

axe_of_executioner = Item.new('Axe of Executioner', :weapon, 10, 9, {hitpoints: 80, damage: 75})
player = Player.new('Hero')
player.equip_item('axe_of_executioner')
#--------------------------------------------------------------

post '/' do
	
		erb :index
end

get '/' do 

		erb :index
end

get '/registration' do 

			erb :registration
end

get '/login' do

	erb :login
end

post '/login' do
	@login = params[:login]
	@password = params[:password]

	hh = { :login => 'Введите логин', :password => 'Введите пароль'}
	@error = hh.select {|key,_| params[key] == ""}.values.join(", ")

	if @error.length <= 1
	erb "Login is #{@login}. Password is #{@password}.#{@error}"
	else return erb :login
	end
end

get '/combat' do
			erb :combat
	end

get '/shop' do
			erb :shop
	end

post '/character' do
	@player = player
			erb :character
end

	
