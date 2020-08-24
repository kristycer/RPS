require 'sinatra/base'
require_relative './lib/game.rb'
require_relative './lib/computer.rb'
require_relative './lib/results.rb'

class RPS < Sinatra::Base
  enable :sessions
#   run! if app_file == $0
# end
  # before do
  #   @game = Game.new
  # end 

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @weapon = session[:weapon]
    @computer_weapon = session[:computer_weapon]
    erb :play
  end

  post '/play' do
    session[:weapon] = params[:weapon]
    session[:computer_weapon] = :Rock
    redirect '/play'
  end 
  
  get '/play' do
    @game = session[:game_start]
    erb :play
    end 

    # post '/play' do
    #   session[:weapon] = params[:weapon].downcase.to_sym
    #   session[:computer_weapon] = Computer.new.weapon
    #   redirect '/play'
    # end
#   end 
end 