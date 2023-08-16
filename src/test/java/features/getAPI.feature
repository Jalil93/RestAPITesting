Feature: Testing GET api
  Scenario: Testing GET API on GoRest.Co.In
    * def baseUrl = 'https://gorest.co.in/'
    * def targetUrl = baseUrl + "public/v1/users"
    * print "target Url is --> " + targetUrl

  Scenario: Get user details
    Given url 'https://gorest.co.in/public/v2/users'
    And path '4461722'
    When method GET
    Then status 200
    * print response
    * def jsonResponse = response
    * print jsonResponse
    * def name = jsonResponse.name
    * print name
    * match name == 'Niranjan Guneta'
    * match name != 'Jalil'
#  "name": "Niranjan Guneta",

  Scenario: Get user details user not found
    Given url 'https://gorest.co.in/public/v2/users'
    And path '30'
    When method GET
    Then status 404