*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${DEPARTMENTS_DROPBOX}  id:searchDropdownBox
${SEARCH_INPUT}  id:twotabsearchtextbox
${SEARCH_BUTTON}  id:nav-search-submit-button
${NUMBER_OF_CARD_ITEMS}  id:nav-cart-count

*** Keywords ***
Select Item in Department Dropdown
    [Arguments]  ${value}
    Select From List By Value  ${DEPARTMENTS_DROPBOX}  ${value}

Fill Search Input
    [Arguments]  ${product}
    Wait Until Element Is Visible  ${SEARCH_INPUT}
    Input Text  ${SEARCH_INPUT}  ${product}

Click Search Button
    Wait Until Element Is Visible  ${SEARCH_BUTTON}
    Click Element  ${SEARCH_BUTTON}

Get Card Items Number Text
    Wait Until Element Is Visible  ${NUMBER_OF_CARD_ITEMS}
    ${number_of_items}=  Get Text  ${NUMBER_OF_CARD_ITEMS}
    [Return]  ${number_of_items}