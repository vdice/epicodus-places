require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the place name path", {:type => :feature}) do
  it("prints out the place name") do
    visit("/")
    fill_in("name", :with => "denver")
    click_button("Add Place")
    expect(page).to have_content("The place has been successfully submitted!")
  end
end

describe("the return path", {:type => :feature}) do
  it("can return to the index page") do
    visit("/")
    fill_in("name", :with => "denver")
    click_button("Add Place")
    click_link('Back')
    expect(page).to have_content("Here are all places you have been to")
    expect(page).to have_content("denver")
  end
end
