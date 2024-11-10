*** Settings ***
Documentation                This test suite contains test(s) for Creating, Reading, Updating and Deleting contacts for the demo 
...                          application Thinking Tester.

Library                      Browser
Library                      Dialogs
Library                      JSONLibrary

Resource                     ../../Resources/Keywords/Alpha/Resources.Keywords.Alpha.Contacts.robot
Resource                     ../../Resources/Keywords/Alpha/Resources.Keywords.Alpha.Setup.robot
Resource                     ../../Resources/Keywords/Common/Resources.Keywords.Common.DataManager.robot
Resource                     ../../Variables/Global/Common/Variables.Global.Common.robot
Resource                     ../../Variables/Global/Alpha/Variables.Global.Alpha.robot

Suite Setup                  Resources.Keywords.Alpha.Setup.Alpha Suite Setup
Test Setup                   Resources.Keywords.Alpha.Setup.Alpha Test Setup
Test Teardown                Resources.Keywords.Alpha.Setup.Alpha Test Teardown
Suite Teardown               Resources.Keywords.Alpha.Setup.Alpha Suite Teardown

          

*** Test Cases *** 
Alpha - Contact list - Create contacts - Include street address
    [Documentation]          This test case adds new contacts together with street addresses.
    [Tags]
    ...    test level: system
    ...    test type: regression
    ...    environment: dev
    ...    environment: test
    ...    environment: prod
    ...    version: v1.1.0
    ...    latest

    &{test_parameters} =  Resources.Keywords.Common.DataManager.Load test parameters into dictionary  ${test_name}

    FOR  ${key}  IN  @{test_parameters}
        Resources.Keywords.Alpha.Contacts.Sign in to the Alpha application  ${ENVIRONMENT}  ${test_parameters}[${key}]
        Resources.Keywords.Alpha.Contacts.Add a contact and enter a street address  ${ENVIRONMENT}  ${test_parameters}[${key}]
        Resources.Keywords.Alpha.Contacts.Confirm that the new contact exists on the webpage  ${ENVIRONMENT}  ${test_parameters}[${key}]
        Resources.Keywords.Alpha.Contacts.Sign out from the Alpha application  ${ENVIRONMENT}  ${test_parameters}[${key}]
    END


Alpha - Contact list - Read contacts
    [Documentation]          This test case is just a scaffold for now
    [Tags]
    ...    test level: system
    ...    test type: smoke
    ...    environment: dev
    ...    environment: test
    ...    environment: prod
    ...    version: v1.1.0


    Log  ${test_name}


Alpha - Contact list - Update contacts
    [Documentation]          This test case is just a scaffold for now
    [Tags]
    ...    test level: system
    ...    environment: dev
    ...    environment: test
    ...    environment: prod
    ...    version: v1.1.0

    Log  ${test_name}


Alpha - Contact list - Delete contacts
    [Documentation]          This test case is just a scaffold for now
    [Tags]
    ...    test level: system
    ...    environment: dev
    ...    environment: test
    ...    environment: prod
    ...    version: v1.1.0

    Log  ${test_name}
