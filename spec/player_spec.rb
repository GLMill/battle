require 'player'

describe Player do 
    let(:name) {'Pikachu'}
    let(:start_hp) { 100 }
    let(:player_1) { Player.new(name) }
    context 'on #intialize' do 
        it 'should return name on #name' do 
          expect(player_1.name).to eq(name)
        end
        it 'should return Hit Points on #hitpoints start at 100' do 
        expect(player_1.hp).to eq(start_hp)
      end

    end

    context 'on game.attack' do 
      it'should #update_health to reduce @hp by 10' do 
       expect{ player_1.update_health(10) }.to change{ player_1.hp }.by(-10)
      end
    end

    describe '#check_health' do
      it 'respond to check_health' do 
        expect(player_1).to respond_to(:check_health)
      end 
      it 'should set player @dead to true' do 
        expect { player_1.update_health(100) }.to change{ player_1.dead }.from(false).to(true)
      end
    end



end