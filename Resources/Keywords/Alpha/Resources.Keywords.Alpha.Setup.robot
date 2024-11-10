*** Settings ***
Documentation                These keywords are for the setup and tear down of the test suites and the test cases for the Alpha application.

Library                      Browser


*** Keywords *** 
Alpha Suite Setup
    [Documentation]          This keyword opens up a browser and navigates to the application URL.
    ...                      - *Details:*
    ...                        - Input(s):
    ...                          - None
    ...                        - Output(s):
    ...                          - None

#    Browser.New page
    Browser.Open Browser  browser=${BROWSER}
    Browser.Go to  ${APP_URL}


Alpha Test Setup
    [Documentation]          This keyword is just a scaffolding for now.
    ...                      - *Details:*
    ...                        - Input(s):
    ...                          - None
    ...                        - Output(s):
    ...                          - None

    Log  Performing test setup before executing the test case


Alpha Test Teardown
    [Documentation]          This keyword is just a scaffolding for now.
    ...                      - *Details:*
    ...                        - Input(s):
    ...                          - None
    ...                        - Output(s):
    ...                          - None

    Log  Performing test teardown after the test case has been executed


Alpha Suite Teardown
    [Documentation]          This keyword closes the browser.
    ...                      - *Details:*
    ...                        - Input(s):
    ...                          - None
    ...                        - Output(s):
    ...                          - None

    Browser.Close Page





