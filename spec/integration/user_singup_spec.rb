require 'rails_helper'

describe 'Signup User', type: :feature do
  it 'Create user on Signup path' do
    visit '/signup'
    fill_in('Name', with: 'Juan Pablo')
    click_button 'Create account'
    expect(page).to have_content('Signup Succesfull')
  end
end
