Feature: verify user able to do pagination
  Scenario: verify pagination
    When user selects number of entries
#    When user selects page number
    When I modify an ingredient on first page
      | Name | Position | Office | Age | Start date | Salary |
   | Prescott Bartlett|	Technical Author| London	|27	| 2011-05-07	|$145,000|