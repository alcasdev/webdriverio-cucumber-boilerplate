Feature: Env Login
    As a Test Developer
    I should be able to login into the demo website and interact with it.

    Scenario: Complete Login
        # Given I login to "https://www.saucedemo.com/" with username "standard_user" and password "secret_sauce"
        Given I login to SauceDemo with env credentials
        And I pause for 1000ms

    Scenario: Inventory page is displayed correctly
        Given  I wait on element "#inventory_container" to be displayed
        And   I wait on element "#react-burger-menu-btn" to be displayed
        And   I wait on element "#shopping_cart_container" to be displayed
        And   I wait on element ".product_sort_container" to be displayed