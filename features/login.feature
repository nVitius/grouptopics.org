 Feature: Login
  In order to discover new groups
  As a visitor
  I need to create an account and log in

 Scenario: Register successfully
  Given I am on the homepage
  And I follow "Signup"
  When I fill in "name" with "Mauricio Walters"
  And I fill in "email" with "nvitius@grouptopics.org"
  And I fill in "password" with "0bfusc4t3dg00d"
  And I fill in "password_confirmation" with "0bfusc4t3dg00d"
  And I press "Sign up!"
  Then I should be on "/account"
  And I should see "Hola Mauricio Walters!"

 Scenario: Successfully log in
  Given I am on the homepage
  And I follow "Login"
  When I fill in email
  And I fill in "password" with "0bfusc4t3dg00d"
  And I press "Login"
  Then I should be on "/account"

 Scenario: Users atttempts to register with duplicate email
  Given I am on the homepage
  And I follow "Signup"
  When I fill in "name" with "Mauricio Walters"
  And I fill in "email" with "nvitius@grouptopics.org"
  And I fill in "password" with "0bfusc4t3dg00d"
  And I fill in "password_confirmation" with "0bfusc4t3dg00d"
  And I press "Sign up!"
  Then I should see "The email has already been taken."
