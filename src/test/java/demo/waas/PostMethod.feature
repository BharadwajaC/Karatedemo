Feature: Post API

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

  # Simple Post Request
  Scenario: Post Demo
    Given url 'https://reqres.in/api/users'
    And request {"name": "Karan","job": "Automation tester"}
    When method POST
    Then status 201
    And print response

  #Post with Background
  Scenario: Post Demo with background
    Given path 	'/users'
    And request {"name": "Karan","job": "Automation tester"}
    When method POST
    Then status 201
    And print response

#Post with Assertions
  Scenario: Post Demo with Assertions
    Given path 	'/users'
    And request {"name": "Karan","job": "Automation tester"}
    When method POST
    Then status 201
    And match response == {"name": "Karan","job": "Automation tester","id": "#string","createdAt": "#ignore"}
    And print response
