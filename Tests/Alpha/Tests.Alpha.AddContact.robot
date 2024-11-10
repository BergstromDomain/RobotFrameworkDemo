*** Settings ***
Library   Browser

*** Test Cases *** 
Add contact
    Open Browser  browser=Chromium
    Go to  https://thinking-tester-contact-list.herokuapp.com/
    Fill text  xpath=//*[@id="email"]  JerrySeinfeld@Testing.com
    Fill text  xpath=//*[@id="password"]  HelloNewman
    Click  xpath=//*[@id="submit"]
    Click  xpath=//*[@id="add-contact"]
    Fill text  xpath=//*[@id="firstName"]  Jerry
    # Fill text  xpath=//body/div/form/p[1]/input[1]  Jerry
    Fill text  xpath=//*[@id="lastName"]  Seinfeld
    Fill text  xpath=//*[@id="street1"]  129 West 81st Street, apartment 5A
    Click  xpath=//*[@id="submit"]