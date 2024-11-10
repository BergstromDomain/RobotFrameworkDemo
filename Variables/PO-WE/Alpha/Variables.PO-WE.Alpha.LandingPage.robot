*** Settings ***
Documentation                This the the variable file for the page object file Resources.Alpha.PO.LandingPage.robot


*** Variables ***
# "Email" text field
${PO_WE_ALPHA_LANDING_PAGE_EMAIL_TEXT_FIELD_DEV} =                             xpath=//*[@id="email"]
${PO_WE_ALPHA_LANDING_PAGE_EMAIL_TEXT_FIELD_TEST} =                            xpath=//*[@id="email"]
${PO_WE_ALPHA_LANDING_PAGE_EMAIL_TEXT_FIELD_PROD} =                            xpath=//*[@id="email"]
&{PO_WE_ALPHA_LANDING_PAGE_EMAIL_TEXT_FIELD_DICT} =
...    dev=${PO_WE_ALPHA_LANDING_PAGE_EMAIL_TEXT_FIELD_DEV}
...    test=${PO_WE_ALPHA_LANDING_PAGE_EMAIL_TEXT_FIELD_TEST}
...    prod=${PO_WE_ALPHA_LANDING_PAGE_EMAIL_TEXT_FIELD_PROD}



# "Password" text field
${PO_WE_ALPHA_LANDING_PAGE_PASSWORD_TEXT_FIELD_DEV} =                          xpath=//*[@id="password"]
${PO_WE_ALPHA_LANDING_PAGE_PASSWORD_TEXT_FIELD_TEST} =                         xpath=//*[@id="password"]
${PO_WE_ALPHA_LANDING_PAGE_PASSWORD_TEXT_FIELD_PROD} =                         xpath=//*[@id="password"]
&{PO_WE_ALPHA_LANDING_PAGE_PASSWORD_TEXT_FIELD_DICT} =
...    dev=${PO_WE_ALPHA_LANDING_PAGE_PASSWORD_TEXT_FIELD_DEV}
...    test=${PO_WE_ALPHA_LANDING_PAGE_PASSWORD_TEXT_FIELD_TEST}
...    prod=${PO_WE_ALPHA_LANDING_PAGE_PASSWORD_TEXT_FIELD_PROD}



# "Submit" button
${PO_WE_ALPHA_LANDING_PAGE_SUBMIT_BUTTON_DEV} =                                xpath=//*[@id="submit"]
${PO_WE_ALPHA_LANDING_PAGE_SUBMIT_BUTTON_TEST} =                               xpath=//*[@id="submit"]
${PO_WE_ALPHA_LANDING_PAGE_SUBMIT_BUTTON_PROD} =                               xpath=//*[@id="submit"]
&{PO_WE_ALPHA_LANDING_PAGE_SUBMIT_BUTTON_DICT} =
...    dev=${PO_WE_ALPHA_LANDING_PAGE_SUBMIT_BUTTON_DEV}
...    test=${PO_WE_ALPHA_LANDING_PAGE_SUBMIT_BUTTON_TEST}
...    prod=${PO_WE_ALPHA_LANDING_PAGE_SUBMIT_BUTTON_PROD}

