Feature: Search movies with title and imdbID

  Background:
    Given url baseUrl
    And param apiKey = myKey

  Scenario: Search movies with title and verify by using imdbID
    * def movies = call read('classpath:callers/SearchWithName.feature'){seriesName:'Harry Potter'}
    * def title = 'Harry Potter and the Chamber of Secrets'
    * def func = function(x){ return x.Title == title }
    * def movieList = get movies.response.Search[*]
    * def result = karate.filter(movieList, func)
    * def movieID = result[0].imdbID
    Given url baseUrl
    And param apiKey = myKey
    And param i = movieID
    When method GET
    Then status 200
    And match response.Title == '#present'
    And match response.Released == '#present'
    And match response.Year == '#present'






    


