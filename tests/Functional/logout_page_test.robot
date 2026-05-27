*** Settings ***
Library    SeleniumLibrary
Resource   ../../locators/lab_tests_locator.robot
Resource   ../../resource/pages/LogoutPage.robot
Resource    ../../resource/pages/LogoutPage.robot
Resource    ../../resource/pages/LoginPage.robot

*** Test Cases ***
Logout User From Practo
    Open Practo And Click Login
    Fill Login Form    951820234    Niteesh@123Kumar
    Logout the user

    Sleep    2s
