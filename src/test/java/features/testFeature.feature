Feature: print hello world feature

  Scenario Outline: Pre Test
    * print 'Scenario Started'
    Examples:
      |  |


  Scenario: Hello world scenario
    * print 'hello world'
    * print 'hello world Jalil Muhammad'

  Scenario: declare and print variables
    * def balance = 200
    * def fee = 20
    * def tax = 10
    * print 'total amount --> ' + (balance + fee + tax)

    Scenario: multiplication
      * def a = 20
      * def b = 40
      * print 'product --> ' + (a * b)
