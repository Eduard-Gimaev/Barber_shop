require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrgem install sinatra-reloaderap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end

get '/about' do
	erb :about
end

get '/visit' do
	erb :visit
end

get '/contacts' do
	erb :contacts
end

post '/visit' do

	@username = params[:username]
	@phone = params[:phone]
	@datetime = params[:datetime]
	@barber = params[:barber]

	hh = {	:username => "enter your name",
			:phone => "enter your phone",
			:datetime => "enter a datetime",
			}

		hh.each do |key, value|
			if params[key] == ''
				@error = hh[key]
				return erb :visit
			end
		end
	erb "Ok, username is #{@username}, #{@phone}, #{@datetime}, #{@barber}"
	#The form has been complited"
end