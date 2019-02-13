require_relative '../spec_helper'
require 'pg'

feature 'peep page' do
  before(:each) do
    visit('/peep')
  end

  scenario 'contains a header' do
    expect(page).to have_content('Your Peep:')
  end

  scenario 'contains an empty text field to enter peep text' do
    expect(page).to have_field('peep-text')
  end

  scenario 'contains a submit button to post peep' do
    expect(page).to have_button('Peep')
  end

  scenario 'shows peeps on index page' do
    fill_in "peep-text", with: 'test123'
    click_button('Peep')
    expect(page).to have_content('test123')
  end

  scenario 'shows multiple peeps' do
    fill_in "peep-text", with: 'test1'
    click_button('Peep')
    click_link('Peep!')
    fill_in "peep-text", with: 'test2'
    expect(page).to have_content('test1')
    expect(page).to have_content('test2')
  end
end
