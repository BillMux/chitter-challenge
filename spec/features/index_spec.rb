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
end
