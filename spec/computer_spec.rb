require 'spec_helper'
require 'computer'


describe Computer do

    let(:computer) { described_class.new }
    
    it 'chooses randomly from the 3 weapons' do
        expect(computer.move).to eq('Rock').or eq('Paper').or eq('Scissors')
    end 
    end 
