
require "player"

describe Player do
    subject(:charlotte) { Player.new("Charlotte")}

    describe "#name" do
        it 'returns the name' do
            expect(charlotte.name).to eq "Charlotte"
        end
      end
    describe "#recieve_damage" do
        it 'substract attack from attacked players HP' do
          charlotte.recieve_damage
          expect(charlotte.hp).to eq 50
        end
      end
  end
