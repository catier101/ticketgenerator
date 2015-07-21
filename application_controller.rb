# type 'bundle install' in command line to install any missing gems

# how to run server:
# shotgun -o 0.0.0.0 -p 3000
require 'bundler'
Bundler.require

# import local file to be accessed
require_relative 'models/ticketinfo.rb'

class MyApp < Sinatra::Base

  get '/' do # route
    erb :index
  end
  
  get '/display' do
    @info = TicketInfo.new(params["depart"], params["arrive"], params["oneway"], params["name"])
    @time = Time.new
    #if @oneway == true
       #if role.exists?
    if params[:oneway] == "on"
      oneway = "oneway"
    else
      oneway = "round"
    end
    erb :ticket
  end
end