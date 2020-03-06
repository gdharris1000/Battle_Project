require 'player'

describe Player do

subject(:gareth) { Player.new('Gareth', true) }

it "returns name" do
  expect(gareth.name).to eq 'Gareth'
end

it 'returns turn' do
  expect(gareth.turn).to eq true
end

end
