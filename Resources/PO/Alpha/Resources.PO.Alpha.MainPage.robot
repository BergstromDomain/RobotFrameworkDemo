*** Settings ***
Documentation                These page object keywords are for the main page of the demo application
...                          Thinking Tester.

Library                      Browser

Resource                     ../../Variables/PO-WE/Alpha/Variables.PO-WE.Alpha.MainPage.robot


*** Keywords *** 
Click on the "Add contact" button
    [Documentation]          This keyword clicks on the add a new contact button.
    ...                      - *Details:*
    ...                        - Input(s):
    ...                          - environment  Data type: String
    ...                        - Output(s):
    ...                          - None

    [Arguments]  ${environment} 

    Browser.Click  ${PO_WE_ALPHA_MAIN_PAGE_ADD_CONTACT_BUTTON_DICT.${environment}}


Click on the "Logout" button
    [Documentation]          This keyword clicks on the logout button.
    ...                      - *Details:*
    ...                        - Input(s):
    ...                          - environment  Data type: String
    ...                        - Output(s):
    ...                          - None

    [Arguments]  ${environment} 

    Browser.Click  ${PO_WE_ALPHA_MAIN_PAGE_LOGOUT_BUTTON_DICT.${environment}}


Confirm contact exists in table  
    [Documentation]          This keyword confirms that the contact exists in the contact table .
    ...                      - *Details:*
    ...                        - Input(s):
    ...                          - environment  Data type: String
    ...                          - contact  Data type: String
    ...                        - Output(s):
    ...                          - None

    [Arguments]  ${environment}  ${contact}

    Browser.Wait For Condition    Text    ${PO_WE_ALPHA_MAIN_PAGE_CONTACTS_TABLE_DICT.${environment}}   contains    ${contact}


