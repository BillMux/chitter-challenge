require 'spec_helper'

feature 'index page' do
  before(:each) do
    visit '/'
  end

  scenario 'contains a header' do
    expect(page).to have_content('Chitter')
  end

  scenario 'has link to peep page' do
    expect(page).to have_link('Peep!', href: '/peep')
  end

  scenario 'shows peeps on index page' do
    # fill_in "peep-text", with: 'test'
    # click_button('Peep')
    expect(page).to have_content('test')
    expect(page).to have_content('test, again')
  end
end
