*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/resources.robot    # путь к файлу с ключевыми словами
Variables   ./locators.py
Variables   ./testData.py
Variables   ./browserstack_variables.py

*** Test Cases ***
Sign Up Chrome
    Sign_Up    chrome    Sign Up Chrome

Sign Up Firefox
    Sign_Up    firefox    Sign Up Firefox

Sign Up Safari
    Sign_Up    safari    Sign Up Safari

Log In Chrome
    Log_In    chrome    Log In Chrome

Log In Firefox
    Log_In    firefox    Log In Firefox

Log In Safari
    Log_In    safari    Log In Safari

Buy Product Chrome
    Buy_Product    chrome    Buy Product Chrome

Buy Product Firefox
    Buy_Product    firefox    Buy Product Firefox

Buy Product Safari
    Buy_Product    safari    Buy Product Safari

Log Out Chrome
    Log_Out    chrome    Log Out Chrome

Log Out Firefox
    Log_Out    firefox    Log Out Firefox

Log Out Safari
    Log_Out    safari    Log Out Safari
