require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'


class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
      @player_1_name = $player_1.name
      @player_2_name = $player_2.name
    erb(:play)
  end

  get '/attack_successful' do
    game = Game.new
    game.attack($player_2)
    erb(:attack_successful)
    # redirect '/play'
  end

run! if app_file == $0

end
