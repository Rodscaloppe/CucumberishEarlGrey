Feature: Testing Login

@NoResults
Scenario: Login blibli

    Given Blibli login page
    When I login
    Then I should see my username