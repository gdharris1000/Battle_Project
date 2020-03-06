require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
   erb(:index)
  end

  post '/names' do
    @game = Game.create(Player.new(params[:player1], true), Player.new(params[:player2], false))
    redirect '/play'
  end

  get '/play' do
   @game = Game.instance
    erb(:play)
  end

  get '/attack' do
    if params[:hitPlayer2]
      @game = Game.instance
      @game.attack(@game.player2)
      @game.player1.turn = false
      @game.player2.turn = true
      erb(:attack)
    elsif params[:hitPlayer1]
      @game = Game.instance
      @game.attack(@game.player1)
      @game.player1.turn = true
      @game.player2.turn = false
      erb(:attack)
    end
  end

  run! if app_file == $0
end
