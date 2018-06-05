require 'sinatra'

get '/' do 

@title = 'Contacts'
			erb :index
end

post '/login' do
	@login = params[:login]
	@password = params[:password]
	erb :login
	end
	