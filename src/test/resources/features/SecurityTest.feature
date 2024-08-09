Feature: This feature is security test scenario

  Scenario: validate sign in functionality with valid credential
    When user click on sign in link
    Then validate user is in sign in page
    When user enter "maya23@gmail.com" and "Alijon23@" and click on login
    # When user enter username and password and click on login
    Then user should be able to see account link

     #Task First implement this below scenarios and then Apply Scenario Outline

  Scenario: Validate sign in with invalid username valid password
    When user click on sign in link
    Then validate user is in sign in page
    When user enter "invalid@gmail.com" and "Password@123" and click on login
    Then user should see error "wrong username or password"

  Scenario: Validate sign in with invalid username valid password
    When user click on sign in link
    Then validate user is in sign in page
    When user enter "maya23@gmail.com" and "WrongUserName" and click on login
    Then user should see error "wrong username or password"

  Example:

  | username               | password      |
  | invalid@gmail.com      | Password@2023 |
  | maya23@gmail.com       | WrongPassword |
  | invalid@gmail.com      | WrongPassword |