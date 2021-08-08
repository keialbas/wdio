Feature: The Internet Guinea Pig Website

  Scenario Outline: As a user, I can log into the secure area

    Given I am on the login page
    When I login with <username> and <password>
    Then I should see a flash message saying <message>

    Examples:
      | username | password             | message                        |
      | tomsmith | SuperSecretPassword! | You logged into a secure area! |
      | foobar   | barfoo               | Your username is invalid!      |

  @test
  Scenario Outline: As a user. I can search for items
    
    Given I am on the home page
    When I search for <item>

    Examples:
      | item | 
      |go pro|
      |not go pro|