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

  context 'creating a seveneleven' do
    scenario 'prompts to add a seven eleven then shows you the seven eleven' do
      visit '/sevenelevens'
      click_link 'Add a seven eleven'
      fill_in 'Name', with: 'San Fernando'
      click_button 'Create Seveneleven'
      expect(page).to have_content 'San Fernando'
      expect(current_path).to eq '/sevenelevens'
    end
  end

  context 'showing a seveneleven' do
    let!(:reseda){Seveneleven.create(name:'Reseda')}
    scenario 'let a user view a seveneleven' do
      visit '/sevenelevens'
      click_link 'Reseda'
      expect(page).to have_content 'Reseda'
      expect(current_path).to eq "/sevenelevens/#{reseda.id}"
    end
  end

  context 'editing a seveneleven' do
    before {Seveneleven.create(name: 'Reseda')}

    scenario 'lets users edit sevenelevens' do
        visit '/sevenelevens'
        click_link 'Edit Reseda'
        fill_in 'Name', with: 'Encino'
        click_button 'Update Seveneleven'
        expect(page).to have_content 'Encino'
        expect(current_path).to eq '/sevenelevens'
    end
  end

  context 'deleting a seveneleven' do
    before {Seveneleven.create(name: 'Reseda')}

    scenario 'let users delete sevenelevens' do
        visit '/sevenelevens'
        click_link 'Delete Reseda'
        expect(page).to have_content 'Seveneleven deleted successfully'
        expect(current_path).to eq '/sevenelevens'
    end
  end









end
