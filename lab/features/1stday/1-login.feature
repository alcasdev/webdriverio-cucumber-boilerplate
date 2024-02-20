Feature: Sauce Demo Login
    As a Test Developer
    I should be able to see the login page in the demo website and interact with it.

    Scenario: Demo Login Page is Displayed
        Given I open the url "https://www.saucedemo.com/"
        And I expect that the url is "https://www.saucedemo.com/"
        When I pause for 1000ms
        Then the element "#user-name" is displayed
        And the element "#password" is displayed
        And the element "#login-button" is displayed
        And the title is "Swag Labs"