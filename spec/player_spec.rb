
require 'player'

describe Player do
  subject(:player) { described_class.new('John') }

  it 'Remembers name' do
    expect(player.name).to eq 'John'
  end

  it 'Remembers move' do
    player.make_move('Rock')
    expect(player.move).to eq 'Rock'
  end
end