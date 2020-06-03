require 'rails_helper'

describe 'Create category', type: :feature do
  it 'Create user on Signup path' do
    User.create(name: 'Juan Pablo')
    visit '/login'
    fill_in('Name', with: 'Juan Pablo')
    click_button 'Login'
    visit '/new_category'
    fill_in('Name', with: 'New Category')
    fill_in('Priority (1 - 5)', with: 1)
    click_button 'Create Category'

    expect(page).to have_content('created succesfully')
  end
end
