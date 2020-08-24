require 'spec_helper'
require 'results'

describe Results do
    let(:results) { described_class.new }

    it 'declares who is the winner or if it is a draw' do
        expect(results.declare('Scissors', 'Paper')).to eq 'Player 1'
    end 
end 