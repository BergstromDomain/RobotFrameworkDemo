*** Settings ***
Documentation       This file, contains function(s) which are specific for the Test environment.
...                 The "[ENVIRONMENT] - Get decrypted password" functions, reads the encrypted password from the
...                 password file. It imports the Crypto library and uses the environment
...                 specific encryption keys together with their password to decrypt the passwords.

Library             Dialogs
Library             String

Resource            Passwords/Resources.Environments.Test.Passwords.robot


*** Keywords ***
Get DB decrypted password
    [Documentation]    This keyword imports the CryptoLibrary and uses that to get the decrypted password.
    Import Library    CryptoLibrary    variable_decryption=False    key_path=${CURDIR}/Keys
    ${test_db_decrypted_password} =    CryptoLibrary.Get decrypted text  ${TEST_DB_ENCRYPTED_PASSWORD}
    RETURN    ${test_db_decrypted_password}
