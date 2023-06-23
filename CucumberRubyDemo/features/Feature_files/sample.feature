Feature: verify user able to launch registration page
  Scenario: verify user is on registration page
    Given user is on registration page
    Then user enters full name
    When user enters email
    When user enter telephone number
    When user selects gender
    When user selects years of experience
    When user clicks skills
    Then user clicks on submit button
    And user able to view home button

