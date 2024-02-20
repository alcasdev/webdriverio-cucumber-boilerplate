Feature: E2E
    As a Test Developer
    I should be able to login into the demo website and interact with the complete flow.

    Scenario: Complete Login
        Given I login to SauceDemo with env credentials

    Scenario: Inventory page is displayed correctly
        Then  I wait on element "#inventory_container" to be displayed

    Scenario: Add 2 items to cart and click on cart icon
        Given I click on the element "#add-to-cart-sauce-labs-backpack"
        And I click on the element "#add-to-cart-sauce-labs-bolt-t-shirt"
        When I click on the element "#shopping_cart_container"

    Scenario: Verify cart page is displayed and click checkout
        Then  I wait on element ".cart_list" to be displayed

    Scenario: Introduce customer information and click continue

    Scenario: Verify overview and final price is displayed, and click finish