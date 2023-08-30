*** Settings ***
Library  SeleniumLibrary

Resource  ../resources/browser_utils.resource
Resource  ../resources/business_actions/search_actions.resource
Resource  ../resources/business_actions/product_actions.resource
Resource  ../resources/business_actions/card_actions.resource

Test Setup  Open App in Chrome
Test Teardown  Close Browser

*** Variables ***
${electronics_depatment}  search-alias=electronics-intl-ship
${product}  Headphones
${high_to_low_price_filter}  price-desc-rank
${expected_amount_of_items}  2

*** Test Cases ***
Amazon Test
    Search Product  ${electronics_depatment}  ${product}
    Sort Results  ${high_to_low_price_filter}
    Add Product To Card By Index  1
    Return To Results Page
    Add Product To Card By Index  2
    Verify Amount Of Items  ${expected_amount_of_items}