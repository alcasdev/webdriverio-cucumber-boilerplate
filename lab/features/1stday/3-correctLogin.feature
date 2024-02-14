Feature: Sauce Demo Login
    As a Test Developer
    I should be able to see the login page in the demo website and interact with it.

    Scenario: Demo Login Page is Displayed
        Given I open the url "https://www.saucedemo.com/"
        And I expect that the url is "https://www.saucedemo.com/"
        And the element "#user-name" is displayed
        And the element "#password" is displayed
        And the element "#login-button" is displayed
        Then the title is "Swag Labs"

    Scenario: Demo Login Page accepts the correct credentials
        Given the element ".error-button" is not displayed
        And I set "standard_user" to the inputfield "#user-name"
        And I set "secret_sauce" to the inputfield "#password"
        When I click on the element "#login-button"
        And I pause for 1000ms
        Then  I wait on element "#inventory_container" to be displayed