require 'sinatra/base'
# require 'sinatra/reloader'
require './lib/player'

class Battle < Sinatra::Base 
    enable :sessions
    configure :development do
        register Sinatra::Reloader
    end

    get '/' do
        erb(:index)
    end

    post '/names' do
        $player_one = Player.new(params[:player_one])
        $player_two = Player.new(params[:player_two])
        redirect "/play"
    end


    get '/play' do
        @player_one = $player_one.name
        @player_two = $player_two.name
        @player_two_hit_point = session[:player_two_hit_point]
        erb(:play)

    end


    get '/attack' do
        @player_one = $player_one
        @player_two = $player_two
        @player_one.attack(@player_two)
        erb :attack
      end


    # start server if ruby file executed directly
    run! if app_file == $0







end

