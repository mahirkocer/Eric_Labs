Feature:Search movie with name

  Scenario: Search movie with name
    Given url baseUrl
    And param apiKey = '8565127a'
    And param s = seriesName
    When method GET
    Then status 200



