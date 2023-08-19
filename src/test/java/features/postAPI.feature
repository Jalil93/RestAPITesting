Feature: Testing POST requests

  Background:
    Given url 'https://gorest.co.in'

  Scenario: Sending POST request
    * def bodyParameter =
    """
    {"id":554154,
    "name":"Gustav Mahler",
    "email":"Mahler1860@invalidemail.com",
    "gender":"male",
    "status":"active"}
    """
    And path 'public/v2/users'
    And header Authorization = 'Bearer 4ecfe37f4bcc5cceba770d1edc443021fb315153ee39699408b4d84f03b93244'
#    And header Connection = 'Keep-Alive'
#    And header Expect = '100-continue'
#    And header Content-Type = 'text/xml;charset=ISO-8859-1'
    And request bodyParameter
    When method POST
    Then status 201
    * print response

  Scenario: Testing if user returned on GET
    When method GET
    And path 'public/v2/users/' + '554154'
    Then status 200
