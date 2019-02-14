def post_two_peeps
  fill_in "peep-text", with: 'test1'
  click_button('Peep')
  click_link('Peep!')
  fill_in "peep-text", with: 'test2'
  click_button('Peep')
end
