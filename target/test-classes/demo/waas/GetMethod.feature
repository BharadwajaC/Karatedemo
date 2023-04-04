Feature: GET API

  Scenario: GET Demo 1
    Given url 'https://reqres.in/api/unknown'
    When method GET
    Then status 200
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies
