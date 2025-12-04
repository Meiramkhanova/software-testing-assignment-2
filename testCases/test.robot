*** Settings ***
Resource    ../resources/resources.robot

*** Variables ***
@{BROWSERS}    Chrome    Firefox    Edge


*** Test Cases ***
ALL_TESTS
    FOR    ${browser}    IN    @{BROWSERS}
        Set Suite Variable    ${BROWSER}    ${browser}
        Log To Console    Running in ${browser}
        Sign Up Test
        Log In Test
        Buy Product Test
        Log Out Test
    END


