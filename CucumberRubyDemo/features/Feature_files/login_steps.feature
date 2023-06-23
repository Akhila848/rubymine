Feature: verify login page
#  Scenario: verify user is able to login
  Scenario Outline: verify user is able to login

    Given user is on login page

    When user enters username"<username>"
    When user enters password "<password>"
    Then click on login button
    When user navigates to home page

    Examples:
      | username |  | password |
      | akhi     |  | 12345    |
      | deepu    |  | 12345    |