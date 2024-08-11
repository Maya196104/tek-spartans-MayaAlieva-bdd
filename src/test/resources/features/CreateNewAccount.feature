Feature: Create new account functionality

  Scenario: Create valid account with random email
    Given user click on "Sign in" link
    Then validate user is in sign in page
    Given user click on "Create New Account" link
    When user enter "Maya" and "random" and "Alijon23@"
    When user click on "Sign Up" button
    Then validate user is in account page
    Then validate email address in account page match

    Scenario: Create account with existing email
      Given user click on "Sign in" link
      Then validate user is in sign in page
      Given user click on "Create New Account" link
      When user enter "Maya" and "maya23@gmail.com" and "Alijon23@"
      When user click on "Sign Up" button
      Then user should see error "this email is already exist, please use another email address"

