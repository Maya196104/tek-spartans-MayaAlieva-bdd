Feature: This feature is security test scenario

  Scenario: validate sign in functionality with valid credential
    When user click on sign in link
    Then validate user is in sign in page
    When user enter "maya23@gmail.com" and "Alijon23@" and click on login
    # When user enter username and password and click on login

    Then user should be able to see account link