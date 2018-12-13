require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base
  
  enable  :sessions
 

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  
  end

  get '/play' do 
    erb :play, locals: {
      player_1: $player_1.name,
      player_2: $player_2.name,
      player_1_hp: $player_1.hitpoints,
      player_2_hp: $player_2.hitpoints
    }
  end 

  get '/attack' do
     $player_2.hitpoints -= 10
     p $player_2.hitpoints
     erb :attack, locals: {
      player_1: $player_1.name,
      player_2: $player_2.name,
      player_1_hp: $player_1.hitpoints,
      player_2_hp: $player_2.hitpoints
  }
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
