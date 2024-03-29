@area
Feature: User is able to convert area units

  Background:
    Given I land on help popup
    When I click on Got it button


  Scenario: User is able to dismiss help
    Then I land on Area screen


  Scenario: User is able to swap value
    Given I see "Sq Kilometre" in From header
    And I see "Sq Metre" in To header
    When I click on Swap button
    Then I see "Sq Metre" in From header
    And I see "Sq Kilometre" in To header

  Scenario Outline: User is able to convert default units
    Given I click on clear it button
    When I enter "<target>" to From field
    Then I get "<result>" in To field

    Examples:
      | target | result  |
      | 1      | 1000000 |
      | 2      | 2000000 |
      | 3      | 3000000 |


  Scenario: User is able to use soft keyboard to enter values
    Given I click on clear it button
    When I click on From field
    And I press "123111" jy soft keyboard
    Then I get "123111000000" in To field


  @wip2
  Scenario Outline: User is able convert in Area
    Given I clear pole
    And I enter "5" to From field
    When I click on "<button>" in To field
    Then I get "<result>" area in To field

    Examples:
      | button  | result |

      | Sq Mile | 1.9305 |
      | Sq Kilometre  | 5          |
      | Hectare       | 500        |
      | Sq Centimetre | 5000000000 |