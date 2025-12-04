*** Settings ***
Library     SeleniumLibrary
Variables   ./locators.py
Variables   ./testData.py
Variables  ./browserstack_variables.py

*** Variables ***
${REMOTE_URL}    https://${BROWSERSTACK_USER}:${BROWSERSTACK_KEY}@hub-cloud.browserstack.com/wd/hub


*** Keywords ***
OpenBrowserStackBrowser
    [Arguments]    ${browser}
    &{capabilities}=    Create Dictionary
    ...    browserName=${browser}
    ...    browserVersion=latest
    ...    os=Windows
    ...    osVersion=11
    ...    name=RobotFrameworkTests (${browser})
    Open Browser    about:blank    remote_url=${REMOTE_URL}    desired_capabilities=${capabilities}
    Maximize Browser Window

Sign Up
    OpenBrowserStackBrowser    ${BROWSER}
    Go To    ${baseUrl}
    Maximize Browser Window
    Click Element    ${SignInButton}
    Click Element    ${RegisterNow}
    Input Text    ${UserID}    ${username}
    Input Text    ${NewPassword}    ${password}
    Input Text    ${RepeatPassword}    ${password}
    Input Text    ${FirstName}    ${firstName}
    Input Text    ${LastName}    ${lastName}
    Input Text    ${Email}    ${email}
    Input Text    ${Phone}    ${phone}
    Input Text    ${Address1}    ${address}
    Input Text    ${City}    ${city}
    Input Text    ${State}    ${state}
    Input Text    ${Zip}    ${zip}
    Input Text    ${Country}    ${country}
    Click Button    ${SaveAccountButton}
    Sleep    2s
    Close Browser

Log In
    OpenBrowserStackBrowser    ${BROWSER}
    Go To    ${baseUrl}
    Click Element    ${SignInButton}
    Input Text    ${LoginUser}    ${username}
    Input Password    ${LoginPassword}    ${password}
    Click Button    ${LoginButton}
    Sleep    2s

Buy Product
    Click Element    ${FishCategory}
    Click Element    xpath=//a[text()='FI-SW-01']
    Click Element    ${AddToCartButton}
    Click Element    ${ProceedToCheckout}
    Click Button     ${ConfirmButton}
    Sleep    2s

Log Out
    Click Element    ${LogOutButton}
    Sleep    2s
    Close Browser



Sign Up Test
    Sign Up

Log In Test
    Log In

Buy Product Test
    Log In
    Buy Product

Log Out Test
    Log In
    Log Out