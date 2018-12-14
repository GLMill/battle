require 'game'

describe Game do 
    
    let(:player_1){ double('player',:dead => true)}
    let(:player_2){ double('player',:dead => true )}
    let(:opponent){ player_2}
    let(:game){ Game.new(player_1, player_2)}
    let(:attack_damage) { 10 }


    it '#player _1 and #player_2 should return player  set on #intialize' do
      expect(game.player_1).to eq(player_1)
      expect(game.player_2).to eq(player_2)

    end

  context 'on #intialize' do 
    it 'should respond to #attack ' do 
      expect(game).to respond_to(:attack)
    end
  end

  context ' player #attack another player' do 
      it 'should remove ten lifepoints from a player' do
         expect(opponent).to receive(:update_health).with(attack_damage)
         game.attack
      end
  end

  describe '#turn' do 
    
    it 'swaps turns setting @opponet to equal @turn and @turn to equla @opponent' do 
      expect{ game.turn }.to change{ game.opponent }.to(player_1)
    end 
  end

  describe '#game_over' do 
   it' checking that @opponent.game_over calls opponent.dead' do 
     expect(opponent).to receive(:dead)
     game.game_over
   end
  end

end