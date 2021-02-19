require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
 configure(:development) { set :session_secret, "something" }
  enable :sessions


    get '/' do
        erb :index
    end

    post '/names' do
        $player_1 = Player.new(params[:player_1_name])
        $player_2 = Player.new(params[:player_2_name])
        redirect '/play'
    end

    get '/play' do
        @player_1_name = $player_1.name
        @player_2_name = $player_2.name
        erb :play
    end

    get '/attack' do
        $player_2.recieve_damage
        @player_1_hit_points = $player_1.hp
        @player_2_hit_points = $player_2.hp
        @player_1_name = $player_1.name
        @player_2_name = $player_2.name
        erb :attack
    end


run! if app_file == $0
end
