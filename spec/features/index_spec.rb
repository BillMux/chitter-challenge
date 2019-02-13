require_relative '../spec_helper'
require 'pg'

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

  scenario 'shows peeps' do
    click_link('Peep!')
    fill_in "peep-text", with: 'test'
    click_button('Peep')
    expect(page).to have_content('test')
  end
end
