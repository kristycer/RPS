require 'spec_helper'


# I would like to register my name before playing an online game

feature 'registering a name' do
    scenario 'register to see my name' do
        visit '/'
        fill_in 'name', with: "John"
        click_button 'Submit'
        expect(page).to have_content 'John'
    end 
end 
