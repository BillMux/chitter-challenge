require 'spec_helper'

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
end
