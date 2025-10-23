*** Settings ***
Library     SeleniumLibrary
Variables   ./locators.py
Variables   ./testData.py

*** Keywords ***
Sign Up
    Open Browser    ${baseUrl}    chrome
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
    Open Browser    ${baseUrl}    chrome
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
