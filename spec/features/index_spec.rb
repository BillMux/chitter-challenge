require_relative '../spec_helper'
require 'pg'

feature 'index page' do
  before(:each) do
    @time = Time.now.strftime("%l:%M%P, %a %e %b")
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

  scenario 'shows peeps in reverse chronological order' do
    click_link('Peep!')
    post_two_peeps
    expect(page).to have_content("test2  - #{@time} test1")
  end

  scenario 'displays time of peeps' do
    click_link 'Peep!'
    post_one_peep
    expect(page).to have_content(@time)
  end
end
