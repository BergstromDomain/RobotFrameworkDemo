*** Settings ***
Documentation                This the the variable file for the page object file Resources.Alpha.PO.MainPage.robot


*** Variables ***
# "Add contact" button
${PO_WE_ALPHA_MAIN_PAGE_ADD_CONTACT_BUTTON_DEV} =                              xpath=//*[@id="add-contact"]
${PO_WE_ALPHA_MAIN_PAGE_ADD_CONTACT_BUTTON_TEST} =                             xpath=//*[@id="add-contact"]
${PO_WE_ALPHA_MAIN_PAGE_ADD_CONTACT_BUTTON_PRD} =                              xpath=//*[@id="add-contact"]
&{PO_WE_ALPHA_MAIN_PAGE_ADD_CONTACT_BUTTON_DICT} =
...    dev=${PO_WE_ALPHA_MAIN_PAGE_ADD_CONTACT_BUTTON_DEV}
...    test=${PO_WE_ALPHA_MAIN_PAGE_ADD_CONTACT_BUTTON_TEST}
...    prd=${PO_WE_ALPHA_MAIN_PAGE_ADD_CONTACT_BUTTON_PRD}


# "Contact" table
${PO_WE_ALPHA_MAIN_PAGE_CONTACTS_TABLE_DEV} =                                  xpath=//*[@id="myTable"]
${PO_WE_ALPHA_MAIN_PAGE_CONTACTS_TABLE_TEST} =                                 xpath=//*[@id="myTable"]
${PO_WE_ALPHA_MAIN_PAGE_CONTACTS_TABLE_PROD} =                                 xpath=//*[@id="myTable"]
&{PO_WE_ALPHA_MAIN_PAGE_CONTACTS_TABLE_DICT} =
...    dev=${PO_WE_ALPHA_MAIN_PAGE_CONTACTS_TABLE_DEV}
...    test=${PO_WE_ALPHA_MAIN_PAGE_CONTACTS_TABLE_TEST}
...    prd=${PO_WE_ALPHA_MAIN_PAGE_CONTACTS_TABLE_PROD}


# "Add contact" button
${PO_WE_ALPHA_MAIN_PAGE_LOGOUT_BUTTON_DEV} =                                   xpath=//*[@id="logout"]
${PO_WE_ALPHA_MAIN_PAGE_LOGOUT_BUTTON_TEST} =                                  xpath=//*[@id="logout"]
${PO_WE_ALPHA_MAIN_PAGE_LOGOUT_BUTTON_PROD} =                                  xpath=//*[@id="logout"]
&{PO_WE_ALPHA_MAIN_PAGE_LOGOUT_BUTTON_DICT} =
...    dev=${PO_WE_ALPHA_MAIN_PAGE_LOGOUT_BUTTON_DEV}
...    test=${PO_WE_ALPHA_MAIN_PAGE_LOGOUT_BUTTON_TEST}
...    prd=${PO_WE_ALPHA_MAIN_PAGE_LOGOUT_BUTTON_PROD}
