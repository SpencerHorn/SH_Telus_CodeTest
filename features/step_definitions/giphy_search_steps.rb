require 'pry'
require 'rspec'

Given('I am on the Giphy homepage') do
  page_title = 'GIPHY - Be Animated'
  @browser.goto 'https://giphy.com'
  expect(@browser.title).to eq page_title
  expect(@browser.text_field(class: 'Input-sc-1rx367t').present?).to be true
end

Given('I enter chihuahua taco into the giphy search bar') do
  @browser.text_field(class: 'Input-sc-1rx367t').set('Chihuahua Taco')
end

When('I click search') do
  @browser.elements(class: /search-button/).first.click
end

Then('chihuahua taco gifs are displayed') do
  Watir::Wait.until { @browser.elements(class: 'giphy-gif').count > 0 }
  expect(@browser.elements(class: 'giphy-gif').count).to be > 0
end