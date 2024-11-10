*** Settings ***
Documentation                These keywords are for the contact list of the demo application Thinking Tester.

Library                      Browser

Resource                     ../../Resources/PO/Alpha/Resources.PO.Alpha.AddContactForm.robot
Resource                     ../../Resources/PO/Alpha/Resources.PO.Alpha.LandingPage.robot
Resource                     ../../Resources/PO/Alpha/Resources.PO.Alpha.MainPage.robot


*** Keywords *** 
Add a contact and enter a street address
    [Documentation]          This keyword adds a new contact and enters a street address.
    ...                      - *Details:*
    ...                        - Input(s):
    ...                          - environment  Data type: String
    ...                          - test_set  Data type: DotDict
    ...                        - Output(s):
    ...                          - None

    [Arguments]  ${environment}  ${test_set}

    Resources.PO.Alpha.MainPage.Click on the "Add contact" button  ${environment}
    Resources.PO.Alpha.AddContactForm.Enter "First name" in the text field  ${environment}  ${test_set}[Inputs][First name]
    Resources.PO.Alpha.AddContactForm.Enter "Last name" in the text field  ${environment}  ${test_set}[Inputs][Last name]
    Resources.PO.Alpha.AddContactForm.Enter "Street address" in the text field  ${environment}  ${test_set}[Inputs][Street address]
    Resources.PO.Alpha.AddContactForm.Click on the "Submit" button  ${environment}


Confirm that the new contact exists on the webpage
    [Documentation]          This keyword confirms that the contact exists in the contact table on the main page.
    ...                      - *Details:*
    ...                        - Input(s):
    ...                          - environment  Data type: String
    ...                          - test_set  Data type: DotDict
    ...                        - Output(s):
    ...                          - None

    [Arguments]  ${environment}  ${test_set}
    
    ${first_name} =  Set variable  ${test_set}[Inputs][First name]
    ${last_name} =  Set variable  ${test_set}[Inputs][Last name]
    ${full_name} =  Catenate   ${first_name}  ${last_name}  
    Resources.PO.Alpha.MainPage.Confirm contact exists in table  ${environment}  ${full_name}


Sign in to the Alpha application
    [Documentation]          This keyword signs in to the Alpha application.
    ...                      - *Details:*
    ...                        - Input(s):
    ...                          - environment  Data type: String
    ...                          - test_set  Data type: DotDict
    ...                        - Output(s):
    ...                          - None

    [Arguments]  ${environment}  ${test_set}

    Resources.PO.Alpha.LandingPage.Enter "Username"  ${environment}  ${test_set}[Auth][Username]
    Resources.PO.Alpha.LandingPage.Enter "Password"  ${environment}  ${test_set}[Auth][Password]
    Resources.PO.Alpha.LandingPage.Click on the "Submit" button  ${environment}


Sign out from the Alpha application
    [Documentation]          This keyword signs out from the Alpha application.
    ...                      - *Details:*
    ...                        - Input(s):
    ...                          - environment  Data type: String
    ...                          - test_set  Data type: DotDict
    ...                        - Output(s):
    ...                          - None

    [Arguments]  ${environment}  ${test_set}

    Resources.PO.Alpha.MainPage.Click on the "Logout" button  ${environment}
