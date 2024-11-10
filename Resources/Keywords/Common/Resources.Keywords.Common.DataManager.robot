*** Settings ***
Documentation                This is the common data manager resource file. It is used to extract data from external resources such as CSV
...                          and JSON files. 

Library                      Collections
Library                      JSONLibrary
Library                      OperatingSystem
Library                      String

Resource                     ../../Variables/Global/Common/Variables.Global.Common.robot
Resource                     ../../Variables/Global/Alpha/Variables.Global.Alpha.robot


*** Keywords ***
Get testcase parameter file path
    [Documentation]          The test parameter files are found in the Data folder under each application. 
    ...                      The test case naming convention is [APPLICATION] - [COMPONENT] - [BASE TEST] - [TEST DETAILS]
    ...                      The returned JSON file is the title case version of the test case name without spaces and 
    ...                      with hyphens replaced with dots.
    ...                      - *Details:*
    ...                        - Input(s):
    ...                          - test_name  Data type: String
    ...                        - Output(s):
    ...                          - testcase_file_path  Data type: String

    [Arguments]  ${test_name}
    ${application}  ${component}  ${base_test}  ${test_details} =  Split test case name into parts  ${test_name}
    ${test_file_path} =    Set variable
    ...    Data/${application}/Data.${application}.${component}.${base_test}.${test_details}.json
    RETURN  ${test_file_path}


Load test parameters into dictionary
    [Documentation]          This keyword uses the test name to identify the corresponding test parameter JSON file. It loads the JSON file
    ...                      into a test parameter dictionary.
    ...                      - *Details:*
    ...                        - Input(s):
    ...                          - test_name  Data type: String
    ...                        - Output(s):
    ...                          - test_dictionary  Data type: DotDict
    [Arguments]  ${test_name}

    ${test_file_path} =  Get testcase parameter file path  ${test_name}
    ${test_dictionary} =  JSONLibrary.Load JSON from file  ${test_file_path}
    Convert to dictionary  ${test_dictionary}
    RETURN  ${test_dictionary}


Split test case name into parts
    [Documentation]          This keyword extracts the test application from test case name as well as a test name in which the white spaces
    ...    have been removed.
    ...    - *Details:*
    ...    - Input(s):
    ...    - ${test_name}    Data type: String
    ...    - ${separator}    Data type: String
    ...    - Output(s):
    ...    - ${testcase_application}    Data type: String    
    ...    - ${testcase_filename}    Data type: String
    [Arguments]    ${test_name}

    ${test_name} =  String.Convert to title case  ${test_name}
    ${test_name_list} =  String.Split string  ${test_name}  separator=${HYPHEN}

    ${application} =  Set variable  ${test_name_list}[0]
    ${application} =  String.Remove string  ${application}  ${SPACE}

    ${component} =  Set variable  ${test_name_list}[1]
    ${component} =  String.Remove string  ${component}  ${SPACE}

    ${base_test} =  Set variable  ${test_name_list}[2]
    ${base_test} =  String.Remove string  ${base_test}  ${SPACE}

    ${test_details} =  Set variable  ${test_name_list}[3]
    ${test_details} =  String.Remove string  ${test_details}  ${SPACE}

    RETURN  ${application}  ${component}  ${base_test}  ${test_details}