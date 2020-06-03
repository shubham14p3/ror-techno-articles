require 'rails_helper'

describe "GET 'login_path'", type: :feature do
  it 'Shows the Login form name field' do
    visit('/login')
    expect(page).to have_content('Name')
  end

  it 'Shows the sign in form name field' do
    visit('/login')
    expect(page).to have_content('LOGIN')
  end
end

describe 'Unsccesfull login', type: :feature do
  it 'Non user creating event' do
    visit '/login'
    fill_in('Name', with: 'wrong user name')
    click_button 'Login'
    expect(page).to have_content('This user does not exist')
  end
end
