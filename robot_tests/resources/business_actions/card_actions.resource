*** Settings ***
Library  SeleniumLibrary

Resource  ../page_objects/header_element.resource

*** Keywords ***
Verify Amount Of Items
    [Arguments]  ${expected_items_amount}
    ${actual_items_amout}=  Get Card Items Number Text
    Should Be Equal  ${expected_items_amount}  ${actual_items_amout}  "Card doesn't contains expected amount of items"