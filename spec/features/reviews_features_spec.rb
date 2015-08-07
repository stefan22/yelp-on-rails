require 'rails_helper'

feature 'reviewing' do


  def sign_up
    visit '/'
    click_link 'Sign up'
    fill_in 'Email', with: 'test@test.com'
    fill_in 'Password', with: 'passpass'
    fill_in 'Password confirmation', with: 'passpass'
    click_button 'Sign up'
  end

  def create
    visit '/'
    click_link 'Add a restaurant'
    fill_in 'Name', with: 'KFC'
    click_button 'Create Restaurant'
  end

  scenario 'allows users to leave a review using a form' do
     sign_up
     create
     visit '/'
     click_link 'Review KFC'
     fill_in "Thoughts", with: "so so"
     select '3', from: 'Rating'
     click_button 'Leave Review'

     expect(current_path).to eq '/restaurants'
     expect(page).to have_content('so so')
  end

end
