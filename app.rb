require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base
  
  enable  :sessions
  START_HP = 100

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    session[:start_hp] =  START_HP
    redirect '/play'
  
  end

  get '/play' do 
    erb :play, locals: {
      player_1: $player_1.name,
      player_2: $player_2.name,
      start_hp: session[:start_hp]
    }
  end 

  get '/attack' do
     erb :attack, locals: {
      player_1: $player_1.name,
      player_2: $player_2.name
  }
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
