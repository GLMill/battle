require 'sinatra/base'

class Battle < Sinatra::Base
  
  enable  :sessions
  START_HP = 100

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    session[:start_hp] =  START_HP
    redirect '/play'
  
  end

  get '/play' do 
    erb :play, locals: {
      player_1: session[:player_1],
      player_2: session[:player_2],
      start_hp: session[:start_hp]
    }
  end 

  post '/attack' do
     erb :attack, locals: {
      player_1: session[:player_1],
      player_2: session[:player_2]
  }
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
