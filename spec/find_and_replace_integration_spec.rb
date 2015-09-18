require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('find_and_replace path', {:type=>:feature}) do
  it('will spit out a new string with a replaced word') do
    visit('/')
    fill_in('sentence', :with => 'In the beginning')
    fill_in('target', :with => 'beginning')
    fill_in('replacement', :with => 'end')
    click_button('Submit')
    expect(page).to have_content("In the end")
  end
end
