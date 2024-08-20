Feature: Account profile feature

  Background: Login to account and setups
    Given user click on "Sign in" link
    Then validate user is in sign in page
    When user enter "maya23@gmail.com" on "Email" field
    When user enter "Alijon23@" on "Password" field
    When user click on "Login" button
    Then user should be able to see account link
    Given user click on "Account" link

  @UserStory5
  Scenario: Change Name and phone number and validate
    Then validate user is in account page
    When user enter "Maya" on "Name" field
    When user enter "8322740670" on "Phone Number" field
    When user click on "Update" button
    Then validate Toast Displayed
    When wait for 5 seconds
    Then validate account name is "Maya"
    When user enter "Mariela" on "Name" field
    When user enter "2819482106" on "Phone Number" field
    When user click on "Update" button
    Then validate Toast Displayed