Feature: Login

  @loginPositive
  Scenario:  Login correct data
    Given User launches Chrome browser
    When User opens ilcarro HomePage
    And User clicks on Login link
    And User enters correct data
    And User clicks on Yalla button
    Then User verifies Success message is displayed
    And User quits browser

    @wrongPassword
    Scenario Outline:  Login with correct email and wrong password
      Given User launches Chrome browser
      When User opens ilcarro HomePage
      And User clicks on Login link
      And User enters correct email and wrong password
      |email   | password  |
      |<email> | <password>|
      And User clicks on Yalla button
      Then User verifies Error message is displayed
      And User quits browser
      Examples:
        | email                | password  |
        |ruslanmayuk@gmail.com |qqqqWWWW2$ |
        |ruslanmayuk@gmail.com |qqqqWWWW1  |
        |ruslanmayuk@gmail.com |QQQQWWWW1$ |
        |ruslanmayuk@gmail.com |ййййЦЦЦЦ1$ |
