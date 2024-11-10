*** Settings ***
Library   Browser


*** Variables *** 
${BROWSER} =  Chromium


*** Test Cases *** 
Add contact
    ${first_name} =  Set variable  Jerry
    Open Browser  browser=${BROWSER}
    Go to  https://thinking-tester-contact-list.herokuapp.com/
    Sign in 
    Click  xpath=//*[@id="add-contact"]
    Fill text  xpath=//*[@id="firstName"]  ${first_name}
    Fill text  xpath=//*[@id="lastName"]  Seinfeld
    Fill text  xpath=//*[@id="street1"]  129 West 81st Street, apartment 5A
    Click  xpath=//*[@id="submit"]


*** Keywords *** 
Sign in 
    Fill text  xpath=//*[@id="email"]  JerrySeinfeld@Testing.com
    Fill text  xpath=//*[@id="password"]  HelloNewman
    Click  xpath=//*[@id="submit"]
