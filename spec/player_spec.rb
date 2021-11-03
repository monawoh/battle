require 'player'

describe Player do
    subject(:monaliza) { Player.new('Monaliza') }
    subject(:adam) { Player.new('Adam') }

    describe '#name' do
        it 'Player name is returned' do
            expect(monaliza.name).to eq 'Monaliza'
         end
    end

    describe '#hit_points' do
        it 'Returns hit points' do
            expect(monaliza.hit_points).to eq described_class::DEFAULT_HIT_POINTS
        end
    end 

    describe '#attack' do
        it 'Damages the player' do
            expect(adam).to receive(:receive_damage)
            monaliza.attack(adam)
        end
    end

    describe '#receive_damage' do
        it 'Reduces player hit points' do
            expect { adam.receive_damage }.to change { adam.hit_points }.by(-10)
        end
    end
    

end