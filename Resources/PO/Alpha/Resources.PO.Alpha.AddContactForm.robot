*** Settings ***
Documentation                These page object keywords are for the add contacts form of the demo application Thinking Tester.

Library                      Browser

Resource                     ../../Variables/PO-WE/Alpha/Variables.PO-WE.Alpha.AddContactForm.robot



*** Keywords *** 
Click on the "Submit" button
    [Documentation]          This keyword clicks on the submit button.
    ...                      - *Details:*
    ...                        - Input(s):
    ...                          - environment  Data type: String
    ...                        - Output(s):
    ...                          - None

    [Arguments]  ${environment} 

    Browser.Click  ${PO_WE_ALPHA_ADD_CONTACT_FORM_SUBMIT_BUTTON_DICT.${environment}}


Enter "First name" in the text field
    [Documentation]          This keyword enters a username in the text field.
    ...                      - *Details:*
    ...                        - Input(s):
    ...                          - environment  Data type: String
    ...                          - first_name  Data type: String
    ...                        - Output(s):
    ...                          - None

    [Arguments]  ${environment}  ${first_name}

    Browser.Fill Text  ${PO_WE_ALPHA_ADD_CONTACT_FORM_FIRST_NAME_TEXT_FIELD_DICT.${environment}}  ${first_name}


Enter "Last name" in the text field
    [Documentation]          This keyword enters a username in the text field.
    ...                      - *Details:*
    ...                        - Input(s):
    ...                          - environment  Data type: String
    ...                          - last_name  Data type: String
    ...                        - Output(s):
    ...                          - None

    [Arguments]  ${environment}  ${last_name}

    Browser.Fill Text  ${PO_WE_ALPHA_ADD_CONTACT_FORM_LAST_NAME_TEXT_FIELD_DICT.${environment}}  ${last_name}


Enter "Street address" in the text field
    [Documentation]          This keyword enters a street address in the text field.
    ...                      - *Details:*
    ...                        - Input(s):
    ...                          - environment  Data type: String
    ...                          - street_address  Data type: String
    ...                        - Output(s):
    ...                          - None

    [Arguments]  ${environment}  ${street_address}

    Browser.Fill Text  ${PO_WE_ALPHA_ADD_CONTACT_FORM_STREET_ADDRESS_TEXT_FIELD_DICT.${environment}}  ${street_address}
