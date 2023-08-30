*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ADD_TO_CARD_BUTTON}  id:add-to-cart-button

*** Keywords ***
Click Add To Card
    Click Button  ${ADD_TO_CARD_BUTTON}

Return To Results Page
    Go Back
    Go Back