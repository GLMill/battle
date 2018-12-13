require 'player'

describe Player do 
    let(:name) {'Pickachu'}
    let(:player_1) { Player.new(name) }
    context 'on #intialize' do 
      it 'should return name on #name' do 
        expect(player_1.name).to eq(name)
      end
    end
end