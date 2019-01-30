require 'spec_helper'

feature 'peep page' do
  before(:each) do
    visit('/peep')
  end

  scenario 'contains a header' do
    expect(page).to have_content('Your Peep:')
  end

  scenario 'contains an empty text field' do
    expect(page).to have_field('peep-text')
  end
end
