*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${RESULTS_FILTER_DROPDOWN}  id:s-result-sort-select
${PRODUCT_ITEMS}  css:[data-component-type='s-product-image'] a

*** Keywords ***
Sort Dropdown Select Option
    [Arguments]  ${order}
    Wait Until Element Is Visible  ${RESULTS_FILTER_DROPDOWN}
    Select From List By Value  ${RESULTS_FILTER_DROPDOWN}  ${order}

Get Results List
    Wait Until Element Is Visible  ${PRODUCT_ITEMS}
    ${list}=  Get WebElements  ${PRODUCT_ITEMS}
    [Return]  ${list}

Click On Item
    [Arguments]  ${item}
    Click Element  ${item}