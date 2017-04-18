require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the scrabble path', {:type => :feature}) do
  it('processes user entry and returns scrabble score') do
    visit('/')
    fill_in('word', :with => 'nice')
    click_button('Show my score!')
    expect(page).to have_content('6')
  end
end
