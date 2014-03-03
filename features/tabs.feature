Feature: Add in-page links for projects show page to open the tabbed contents
  As a user
  So that I may share a link directly to a tabbed page
  I would like the url to reflect the current tab contents in the page
 
  Background:
    Given the following projects exist:
      | title         | description             | status   |
      | hello world   | greetings earthlings    | active   |
      | hello mars    | greetings aliens        | inactive |
    And I am on the "Show" page for project "hello world"

  @javascript
  Scenario: Share the link to documents tab
    When I click "Documents"
    And I should copy current url
    Then I should open new broswer past copies url
    And I should see "documents" tab is active

  @javascript
  Scenario: Share the link to members tab
    When I click "Members"
    And I should copy current url
    Then I should open new broswer past copies url
    And I should see "members" tab is active

  @javascript
  Scenario: Share the link to videos tab
    When I click "Videos"
    And I should copy current url
    Then I should open new broswer past copies url
    And I should see "videos" tab is active
