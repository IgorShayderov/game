require 'sinatra'

get '/' do
	
end

not_found do
     status 404
     "Something wrong! Try to type URL correctly or call to UFO."
end