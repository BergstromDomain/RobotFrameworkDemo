*** Settings ***
Documentation                This the the variable file for the page object file Resources.PO.Alpha.AddContactForm.robot


*** Variables ***
# "First name" text field
${PO_WE_ALPHA_ADD_CONTACT_FORM_FIRST_NAME_TEXT_FIELD_DEV} =                    xpath=//*[@id="firstName"]
${PO_WE_ALPHA_ADD_CONTACT_FORM_FIRST_NAME_TEXT_FIELD_TEST} =                   xpath=//*[@id="firstName"]
${PO_WE_ALPHA_ADD_CONTACT_FORM_FIRST_NAME_TEXT_FIELD_PROD} =                   xpath=//*[@id="firstName"]
&{PO_WE_ALPHA_ADD_CONTACT_FORM_FIRST_NAME_TEXT_FIELD_DICT} =
...    dev=${PO_WE_ALPHA_ADD_CONTACT_FORM_FIRST_NAME_TEXT_FIELD_DEV}
...    test=${PO_WE_ALPHA_ADD_CONTACT_FORM_FIRST_NAME_TEXT_FIELD_TEST}
...    prd=${PO_WE_ALPHA_ADD_CONTACT_FORM_FIRST_NAME_TEXT_FIELD_PROD}


# "Last name" text field
${PO_WE_ALPHA_ADD_CONTACT_FORM_LAST_NAME_TEXT_FIELD_DEV} =                     xpath=//*[@id="lastName"]
${PO_WE_ALPHA_ADD_CONTACT_FORM_LAST_NAME_TEXT_FIELD_TEST} =                    xpath=//*[@id="lastName"]
${PO_WE_ALPHA_ADD_CONTACT_FORM_LAST_NAME_TEXT_FIELD_PROD} =                    xpath=//*[@id="lastName"]
&{PO_WE_ALPHA_ADD_CONTACT_FORM_LAST_NAME_TEXT_FIELD_DICT} =
...    dev=${PO_WE_ALPHA_ADD_CONTACT_FORM_LAST_NAME_TEXT_FIELD_DEV}
...    test=${PO_WE_ALPHA_ADD_CONTACT_FORM_LAST_NAME_TEXT_FIELD_TEST}
...    prd=${PO_WE_ALPHA_ADD_CONTACT_FORM_LAST_NAME_TEXT_FIELD_PROD}


# "Street address" text field
${PO_WE_ALPHA_ADD_CONTACT_FORM_STREET_ADDRESS_TEXT_FIELD_DEV} =                xpath=//*[@id="street1"]
${PO_WE_ALPHA_ADD_CONTACT_FORM_STREET_ADDRESS_TEXT_FIELD_TEST} =               xpath=//*[@id="street1"]
${PO_WE_ALPHA_ADD_CONTACT_FORM_STREET_ADDRESS_TEXT_FIELD_PROD} =               xpath=//*[@id="street1"]
&{PO_WE_ALPHA_ADD_CONTACT_FORM_STREET_ADDRESS_TEXT_FIELD_DICT} =
...    dev=${PO_WE_ALPHA_ADD_CONTACT_FORM_STREET_ADDRESS_TEXT_FIELD_DEV}
...    test=${PO_WE_ALPHA_ADD_CONTACT_FORM_STREET_ADDRESS_TEXT_FIELD_TEST}
...    prd=${PO_WE_ALPHA_ADD_CONTACT_FORM_STREET_ADDRESS_TEXT_FIELD_PROD}


# "Submit" button
${PO_WE_ALPHA_ADD_CONTACT_FORM_SUBMIT_BUTTON_DEV} =                            xpath=//*[@id="submit"]
${PO_WE_ALPHA_ADD_CONTACT_FORM_SUBMIT_BUTTON_TETS} =                           xpath=//*[@id="submit"]
${PO_WE_ALPHA_ADD_CONTACT_FORM_SUBMIT_BUTTON_PROD} =                           xpath=//*[@id="submit"]
&{PO_WE_ALPHA_ADD_CONTACT_FORM_SUBMIT_BUTTON_DICT} =
...    dev=${PO_WE_ALPHA_ADD_CONTACT_FORM_SUBMIT_BUTTON_DEV}
...    test=${PO_WE_ALPHA_ADD_CONTACT_FORM_SUBMIT_BUTTON_TETS}
...    prd=${PO_WE_ALPHA_ADD_CONTACT_FORM_SUBMIT_BUTTON_PROD}

