require 'player'

describe Player do
    subject(:monaliza) { Player.new('Monaliza') }

    describe '#name' do
        it 'Player name is returned' do
            expect(monaliza.name).to eq 'Monaliza'
         end
    end
end