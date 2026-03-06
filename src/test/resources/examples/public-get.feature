Feature: Test a public GET API with Karate

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: Get a known post and verify response
    Given path 'posts', 1
    When method get
    Then status 200
    And match response.id == 1
    And match response.userId == '#number'
    And match response.title == '#string'

  Scenario Outline: Response id should match requested post id
    Given path 'posts', <postId>
    When method get
    Then status 200
    And match response.id == <postId>
    And match response.userId == '#number'
    And match response.title == '#string'

    Examples:
      | postId |
      | 1      |
      | 50     |
      | 100    |