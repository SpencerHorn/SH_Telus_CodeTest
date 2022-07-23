Feature: Implement Search Test for GIPHY WEB app: https://giphy.com/
	Test Description:
		1. Send search request; specify query; offset and limit for pagination
		2. Verify response is correct

Background:
  Given I am on the Giphy homepage

# Test implemented to satisfy challenge requirement for Test Scenarios
# Also satisfies partial requirements for Back-end test requirement - can discuss on call
@search @search_test_1
Scenario: As a user I can search for chihuahua taco
  Given I enter chihuahua taco into the giphy search bar
  When I click search
  Then chihuahua taco gifs are displayed

# Test Not yet implemented - Created to satisfy challenge requirement for Test Scenarios
@search @search_test_2
Scenario: As a user if I enter invalid search character the homepage will reload
  Given I enter invalid search characters
  When I click search
  Then I am on the Giphy homepage

# Test Not yet implemented - Created to satisfy challenge requirement for Test Scenarios
@search @search_test_3
Scenario: As a user if I enter too many characters into the search bar I will redirect to the 404 page
  Given I enter too many characters into the search bar
  When I click search
  Then I am on the Giphy 404 page