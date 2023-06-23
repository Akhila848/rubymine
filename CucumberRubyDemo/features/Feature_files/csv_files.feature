Feature: Read CSV File

  Scenario: Read CSV data
    Given I have a CSV file named "samples.csv"
    When I read the CSV file
#    Then I should see the following data:
#      | Name | Age | Gender |
#      | peter | 25 | male|
#      | stella | 30 | female|
#      | paul | 35 | male |