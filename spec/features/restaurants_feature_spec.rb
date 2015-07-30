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

  context 'creating restaurants on the front end' do
    scenario 'user is prompt to add a restaurant then restaurant is display' do
      visit '/restaurants'
      click_link 'Add a restaurant'
      fill_in 'Name', with: 'KFC'
      click_button 'Create Restaurant'
      expect(page).to have_content 'KFC'
      expect(current_path).to eq '/restaurants'
    end
  end


end
