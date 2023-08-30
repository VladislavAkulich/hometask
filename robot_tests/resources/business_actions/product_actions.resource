*** Settings ***
Library  SeleniumLibrary

Resource  ../page_objects/results_page.resource
Resource  ../page_objects/item_page.resource

*** Keywords ***
Add Product To Card By Index
    [Arguments]  ${index}
    ${list}=  Get Results List
    ${index}  evaluate  ${index} - 1
    Click On Item  ${list}[${index}]
    Click Add To Card