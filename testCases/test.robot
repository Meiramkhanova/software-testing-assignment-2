*** Settings ***
Resource    ../resources/resources.robot

*** Test Cases ***
Sign Up Chrome
    Sign Up    chrome

Sign Up Firefox
    Sign Up    firefox

Sign Up Safari
    Sign Up    safari

Log In Chrome
    Log In    chrome

Log In Firefox
    Log In    firefox

Log In Safari
    Log In    safari

Buy Product Chrome
    Buy Product    chrome

Buy Product Firefox
    Buy Product    firefox

Buy Product Safari
    Buy Product    safari

Log Out Chrome
    Log Out    chrome

Log Out Firefox
    Log Out    firefox

Log Out Safari
    Log Out    safari
