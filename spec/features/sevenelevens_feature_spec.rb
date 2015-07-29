require 'rails_helper'

feature 'seven elevens' do
  context 'no seven elevens have been added yet' do
    scenario 'should show a prompt to add a seven eleven' do
      visit '/sevenelevens'
      expect(page).to have_content 'No seven elevens have been added yet'
      expect(page).to have_link 'Add a seven eleven'
    end
  end

  context 'seven elevens have been added' do
    before do
      Seveneleven.create(name: 'San Fernando')
    end
    scenario 'should show all seven elevens' do
      visit '/sevenelevens'
      expect(page).to have_content 'San Fernando'
      expect(page).not_to have_content 'No seven elevens have been added yet'
    end
  end



end
