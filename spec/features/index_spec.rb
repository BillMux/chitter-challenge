require 'spec_helper'

feature 'index page' do
  scenario 'contains a header' do
    visit '/'
    expect(page).to have_content 'Chitter'
  end

  scenario 'has link to peep page' do
    visit '/'
    expect(page).to have_link('Peep!', href: '/peep')
  end
end
