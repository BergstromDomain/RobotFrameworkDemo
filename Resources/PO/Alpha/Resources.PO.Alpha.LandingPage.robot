*** Settings ***
Documentation                These page object keywords are for the landing page of the demo application Thinking Tester.

Library                      Browser

Resource                     ../../../Variables/PO-WE/Alpha/Variables.PO-WE.Alpha.LandingPage.robot


*** Keywords *** 
Click on the "Submit" button
    [Documentation]          This keyword clicks on the submit button.
    ...                      - *Details:*
    ...                        - Input(s):
    ...                          - environment  Data type: String
    ...                        - Output(s):
    ...                          - None

    [Arguments]  ${environment} 

    Browser.Click  ${PO_WE_ALPHA_LANDING_PAGE_SUBMIT_BUTTON_DICT.${environment}}


Enter "Password"
    [Documentation]          This keyword enters a password in the text field.
    ...                      - *Details:*
    ...                        - Input(s):
    ...                          - environment  Data type: String
    ...                          - password  Data type: String
    ...                        - Output(s):
    ...                          - None

    [Arguments]  ${environment}  ${password}

    Browser.Fill Text  ${PO_WE_ALPHA_LANDING_PAGE_PASSWORD_TEXT_FIELD_DICT.${environment}}  ${password}


Enter "Username"
    [Documentation]          This keyword enters a username in the text field.
    ...                      - *Details:*
    ...                        - Input(s):
    ...                          - environment  Data type: String
    ...                          - email  Data type: String
    ...                        - Output(s):
    ...                          - None

    [Arguments]  ${environment}  ${email}

    Browser.Fill Text  ${PO_WE_ALPHA_LANDING_PAGE_EMAIL_TEXT_FIELD_DICT.${environment}}  ${email}


