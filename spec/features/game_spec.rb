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
        expect(page).to have_button 'Rock'
        expect(page).to have_button 'Paper'
        expect(page).to have_button 'Scissors'
    end 

    scenario 'clicks on the option' do
        click_button 'Rock'
        expect(page).to have_content 'Your weapon is Rock'
    end 

    scenario 'pc chooses a random weapon' do
        click_button 'Rock'
    
        expect(page).to have_content 'Computer chose Rock'
    end 

#     def various_messages
#         [:Rock, :Paper, :Scissors].map { |weapon| 'Computer chose #{weapon}'}
# end 
end 