Feature: Inventory
    As a Test Developer
    I should be able to login into the demo website and interact with it.

    Scenario: Complete Login
        Given I login to SauceDemo with env credentials

    Scenario: Sort Inventory by Price (High to Low)
        Given  I wait on element "#inventory_container" to be displayed
        And I select the option with the value "hilo" for element ".product_sort_container"
        And I pause for 1000ms
        Then the element "#inventory_container > div > div:nth-child(1)" contains the text "49.99"
        And the element "#inventory_container > div > div:nth-child(2)" contains the text "29.99"
        And the element "#inventory_container > div > div:nth-child(3)" contains the text "15.99"
        And the element "#inventory_container > div > div:nth-child(4)" contains the text "15.99"
        And the element "#inventory_container > div > div:nth-child(5)" contains the text "9.99"
        And the element "#inventory_container > div > div:nth-child(6)" contains the text "7.99"

    Scenario: Sort Inventory by Name (Z to A)
        Given  I wait on element "#inventory_container" to be displayed
        And I select the option with the value "za" for element ".product_sort_container"
        And I pause for 1000ms
        Then the element "#inventory_container > div > div:nth-child(1)" contains the text "Test.allTheThings() T-Shirt (Red)"