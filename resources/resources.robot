*** Settings ***
Library     SeleniumLibrary
Variables   ./locators.py
Variables   ./testData.py
Variables   ./browserstack_variables.py

*** Keywords ***
Open Browser On BrowserStack
    [Arguments]    ${browserName}  ${testName}
    ${caps}=    Create Dictionary
    ...    browserName=${browserName}
    ...    browserVersion=latest
    ...    os=Windows
    ...    osVersion=11
    ...    name=${testName}
    Open Browser    ${baseUrl}    ${browserName}    remote_url=${REMOTE_URL}    desired_capabilities=${caps}
    Maximize Browser Window


Sign_Up
    [Arguments]    ${browserName}  ${testName}
    Open Browser On BrowserStack    ${browserName}  ${testName}
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

Log_In
    [Arguments]    ${browserName}  ${testName}
    Open Browser On BrowserStack    ${browserName}  ${testName}
    Click Element    ${SignInButton}
    Input Text    ${LoginUser}    ${username}
    Input Password    ${LoginPassword}    ${password}
    Click Button    ${LoginButton}
    Sleep    2s
    Close Browser

Buy_Product
    [Arguments]    ${browserName}  ${testName}
    Open Browser On BrowserStack    ${browserName}  ${testName}
    Click Element    ${FishCategory}
    Click Element    xpath=//a[text()='FI-SW-01']
    Click Element    ${AddToCartButton}
    Click Element    ${ProceedToCheckout}
    Click Button     ${ConfirmButton}
    Sleep    2s
    Close Browser

Log_Out
    [Arguments]    ${browserName}  ${testName}
    Open Browser On BrowserStack    ${browserName}  ${testName}
    Click Element    ${LogOutButton}
    Sleep    2s
    Close Browser
