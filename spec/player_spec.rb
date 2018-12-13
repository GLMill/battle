require 'player'

describe Player do 
    let(:name) {'Pickachu'}
    let(:start_hp) { 100 }
    let(:player_1) { Player.new(name) }
    context 'on #intialize' do 
      it 'should return name on #name' do 
        expect(player_1.name).to eq(name)
      end
      it 'should return Hit Points on #hitpoints start at 100' do 
      expect(player_1.hitpoints).to eq(start_hp)
    end
    end
end