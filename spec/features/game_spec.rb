require 'spec_helper'
# User can play rock/paper/scissors game: 
# 1 - be presented with the game choices
# 2 - user chooses option
# 3 - pc chooses random option
# 4 - winner is declared

feature 'play a game' do
    before do 
        visit '/'
        fill_in 'name', with: 'John'
        click_button 'Submit'
    end 
    scenario 'see the choices' do
        expect(page).to have_content 'Rock'
        expect(page).to have_content 'Paper'
        expect(page).to have_content 'Scissors'
    end 
end 