Feature: Allow a user to pay their registration fees 
 
  As a user
  So that I can finish my registration
  I want to be able to pay my registration fees.

  #If forms not done, button not there
  #If forms are done, button is there
  #If button pressed redirects to proper site
  #Once payment done make sure no button there and only statement 
  #Rspec for checking payment complete using ID/username/...
  #RSpec is has paid/amount paid check if updated 

Background: users have been added to database
  
  Given the following users exist: 
  | email               | password         | admin   |
  | user2@hostname.com  | user1234         | false   |


  Given user john doe exist in the database
  And john doe has an incomplete vendor application
  And john doe has logged in
  And I am on the "profile" page for "johndoe@gmail.com"

Scenario: I cannot pay when my application is incomplete.
  Then I should see "Please take survey"
	# Wait for iteration4-1 for payment verification

Scenario: I can pay when my application is complete
  Then I should see "Please take survey"
	# Wait for iteration4-1 for payment verification

