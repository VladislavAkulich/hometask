*** Settings ***
Library  SeleniumLibrary
Library  BuiltIn
Library  ../libraries/DriverLibrary.py

*** Variables ***
${BROWSER}  chrome
${URL}   https://www.amazon.com/
${timeout}  5 seconds

*** Keywords ***
Open App in Chrome
    Set Selenium Implicit Wait  ${timeout}
    ${chrome_options}=  Get Chrome Options
    Create Webdriver  Chrome  options=${chrome_options}
    Go To  ${URL}
    Log  Amazon site is opened!