require 'spec_helper'

feature 'index page' do

  scenario 'contains a header' do
    visit '/peep'
    expect(page).to have_content 'Your Peep:'
  end
end
