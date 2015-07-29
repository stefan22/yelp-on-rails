require 'rails_helper'

feature 'restaurants' do
  context 'no restaurants have been added yet' do
    scenario 'should display a prompt to add a restaurant' do
      visit '/restaurants'
      expect(page).to have_content 'No restaurants have been added yet'
      expect(page).to have_link 'Add a restaurant'
    end
  end

  context 'restaurants have been added' do
    before do
        Restaurant.create(name: 'KFC')
    end

    scenario 'should display restaurants' do
      visit '/restaurants'
      expect(page).to have_content 'KFC'
      expect(page).not_to have_content 'No restaurants have been added yet'    
    end
  end


end
