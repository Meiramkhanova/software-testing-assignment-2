*** Settings ***
Resource    ../resources/resources.robot

*** Test Cases ***
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
