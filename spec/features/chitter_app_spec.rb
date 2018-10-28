require 'spec_helper'

feature 'index page' do

  scenario 'contains a header' do
    visit '/'
    expect(page).to have_content 'Chitter'
  end

  scenario 'has link to beep page' do
    visit '/'
    expect(page).to have_link('Beep!', href: '/beep')
  end

end
