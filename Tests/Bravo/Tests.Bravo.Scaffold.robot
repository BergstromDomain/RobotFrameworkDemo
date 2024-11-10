*** Settings ***
Documentation                This test suite is just a scaffold for now.
Library                      Dialogs
Resource                     ../../Variables/Global/Common/Variables.Global.Common.robot
         

*** Test Cases *** 
Bravo - Alpha
    [Tags]
    ...    environment: dev
    ...    environment: test
    ...    environment: prod
    ...    test level: system
    ...    version: v1.1.0

    Log  ${test_name}


Bravo - Bravo
    [Tags]
    ...    environment: dev
    ...    environment: test
    ...    environment: prod
    ...    test level: system
    ...    version: v1.1.0

    Skip
    Log  ${test_name}


Bravo - Charlie
    [Tags]
    ...    environment: dev
    ...    environment: test
    ...    environment: prod
    ...    test level: system
    ...    version: v1.1.0

    Log  ${test_name}


Bravo - Delta
    [Tags]
    ...    environment: dev
    ...    environment: test
    ...    environment: prod
    ...    test level: integration
    ...    version: v1.1.0

    Log  ${test_name}
    Log  ${BROWSER}
    IF  "${BROWSER}" == "Chrome"
        Fail
    END


Bravo - Echo
    [Tags]
    ...    environment: dev
    ...    environment: test
    ...    environment: prod
    ...    test level: integration
    ...    version: v1.1.0

    Log  ${test_name}


Bravo - Foxtrot
    [Tags]
    ...    environment: dev
    ...    environment: test
    ...    environment: prod
    ...    test level: integration
    ...    version: v1.1.0

    Log  ${test_name}


Bravo - Golf
    [Tags]
    ...    environment: dev
    ...    environment: test
    ...    test level: system
    ...    version: v1.1.0

    Log  ${test_name}


Bravo - Hotel
    [Tags]
    ...    environment: dev
    ...    environment: test
    ...    test level: system
    ...    version: v1.1.0

    Log  ${test_name}


Bravo - India
    [Tags]
    ...    environment: dev
    ...    environment: test
    ...    test level: system
    ...    version: v1.1.0

    Log  ${test_name}


Bravo - Juliett
    [Tags]
    ...    environment: dev
    ...    environment: test
    ...    test level: integration
    ...    version: v1.1.0

    Log  ${test_name}



Bravo - Kilo
    [Tags]
    ...    environment: dev
    ...    environment: test
    ...    test level: integration
    ...    version: v1.1.0

    Log  ${test_name}


Bravo - Lima
    [Tags]
    ...    environment: dev
    ...    environment: test
    ...    test level: integration
    ...    version: v1.1.0

    Log  ${test_name}


    
Bravo - Mike
    [Tags]
    ...    environment: dev
    ...    test level: system
    ...    version: v1.2.0

    Log  ${test_name}


Bravo - November
    [Tags]
    ...    environment: dev
    ...    test level: system
    ...    version: v1.2.0

    Log  ${test_name}


Bravo - Oscar
    [Tags]
    ...    environment: dev
    ...    test level: system
    ...    version: v1.2.0

    Log  ${test_name}

Bravo - Papa
    [Tags]
    ...    environment: dev
    ...    test level: system
    ...    version: v1.2.0

    Log  ${test_name}


Bravo - Quebec
    [Tags]
    ...    environment: dev
    ...    test level: system
    ...    version: v1.2.0

    Log  ${test_name}


Bravo - Romeo
    [Tags]
    ...    environment: dev
    ...    test level: integration
    ...    version: v1.2.0

    Log  ${test_name}


Bravo - Sierra
    [Tags]
    ...    environment: dev
    ...    test level: integration
    ...    version: v1.2.0

    Log  ${test_name}



Bravo - Tango
    [Tags]
    ...    environment: dev
    ...    test level: integration
    ...    version: v1.2.0

    Log  ${test_name}


Bravo - Uniform
    [Tags]
    ...    environment: dev
    ...    test level: integration
    ...    version: v1.2.0

    Log  ${test_name}


Bravo - Victor
    [Tags]
    ...    environment: dev
    ...    test level: integration
    ...    version: v1.2.0

    Log  ${test_name}

Bravo - Whiskey
    [Tags]
    ...    environment: dev
    ...    test level: integration
    ...    version: v1.2.0

    Log  ${test_name}


Bravo - X-ray
    [Tags]
    ...    environment: dev
    ...    test level: integration
    ...    version: v1.2.0

    Log  ${test_name}


Bravo - Yankee
    [Tags]
    ...    environment: dev
    ...    test level: integration
    ...    version: v1.2.0

    Log  ${test_name}

Bravo - Zulu
    [Tags]
    ...    environment: dev
    ...    test level: integration
    ...    version: v1.2.0

    Log  ${test_name}
