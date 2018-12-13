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

    context 'on Fight.attack' do 
      it'should #update_health to reduce @hp by 10' do 
       expect{ player_1.update_health(10) }.to change{ player_1.hp }.by(-10)
      end
    end
end