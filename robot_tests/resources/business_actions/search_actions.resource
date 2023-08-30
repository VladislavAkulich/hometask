*** Settings ***
Library  SeleniumLibrary

Resource  ../page_objects/item_page.resource
Resource  ../page_objects/header_element.resource
Resource  ../page_objects/results_page.resource

*** Keywords ***
Search Product
    [Arguments]  ${department}  ${product}
    Select Item in Department Dropdown  ${department}
    Fill Search Input  ${product}
    Click Search Button

Sort Results
    [Arguments]  ${order}
    Sort Dropdown Select Option  ${order}