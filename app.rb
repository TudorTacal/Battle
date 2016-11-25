require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'


class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
      # @player_1_name = $game.player_1.name
      # @player_2_name = $game.player_2.name
    erb(:play)
  end

  get '/attack_successful' do
    $game.attack($game.player_2)
    erb(:attack_successful)
    # redirect '/play'
  end

run! if app_file == $0

end
