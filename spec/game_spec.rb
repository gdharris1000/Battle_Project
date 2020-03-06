require 'game'
require 'player'

describe Game do

    player1 = Player.new('Gareth', true) 
    player2 = Player.new('Sri', false) 
    subject(:game) { Game.new(player1, player2) }

    it 'creates player1 when initialised' do
        expect(game.player1).to eq player1
    end

    it 'creates player2 when initialised' do
        expect(game.player2).to eq player2
    end

    it 'attack recudes player hp' do
        expect{game.attack(player1)}.to change {game.player1.hit_points}.by(-2)
    end

end