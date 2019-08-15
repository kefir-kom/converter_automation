@llaa
Feature: User is able to convert Volume units

  Background:
#    Given I land on help popup
    When I click on Got it button


  Scenario: User is able to call menu by swiping
    When I swipe in the menu
    Then I see app menu

  @wip
  Scenario Outline:
    When I swipe in the menu
    And I select "<target>" from menu
    Then I land on "<target>" screen

    Examples:
      | target   |
      | Speed    |
      | Energy   |
      | Volume   |
      | Currency |