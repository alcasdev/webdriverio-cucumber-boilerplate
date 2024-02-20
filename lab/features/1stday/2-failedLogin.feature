Feature: Sauce Demo Failed Login
    As a Test Developer
    I should be able to see the login page in the demo website and interact with it.

    Scenario: Demo Login Page is Displayed
        Given I open the url "https://www.saucedemo.com/"
        And I expect that the url is "https://www.saucedemo.com/"
        And I pause for 1000ms
        And the element "#user-name" is displayed
        And the element "#password" is displayed
        And the element "#login-button" is displayed
        Then the title is "Swag Labs"

    Scenario: Demo Login Page displays an error message when prompted with incorrect username/password
        Given the element ".error-button" is not displayed
        And I set "errorName" to the inputfield "#user-name"
        And I set "Incorrect" to the inputfield "#password"
        And I click on the element "#login-button"
        Then the element ".error-button" is displayed