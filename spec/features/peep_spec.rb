require 'spec_helper'

feature 'peep page' do
  before(:each) do
    visit '/peep'
  end

  scenario 'contains a header' do
    visit '/peep'
    expect(page).to have_content 'Your Peep:'
  end
end
