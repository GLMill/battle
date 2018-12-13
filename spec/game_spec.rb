require 'game'

describe Game do 
    
    let(:player_1){ double (:player)}
    let(:player_2){ double (:player)}
    let(:game){ Game.new(player_1, player_2)}
    let(:attack_damage) { 10 }


    it '#player _1 and #player_2 should return player  set on #intialize' do
      expect(game.player_1).to eq(player_1)
      expect(game.player_2).to eq(player_2)

    end

  context 'on #intialize' do 
    it 'should respond to #attack with one param' do 
      expect(game).to respond_to(:attack).with(1)
    end
  end

  context ' player #attack another player' do 
      it 'should remove ten lifepoints from a player' do
         expect(player_1).to receive(:update_health).with(attack_damage)
         game.attack(player_1)
      end
  end

end