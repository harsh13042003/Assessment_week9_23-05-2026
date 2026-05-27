*** Settings ***
Documentation    Robot Framework test for user login on Practo
Library    SeleniumLibrary
Resource   ../../locators/locators.robot
Resource   ../../resource/pages/LoginPage.robot

*** Test Cases ***
Login User On Practo
    [Tags]    smoke
    Open Practo And Click Login
    Fill Login Form    9518205334    Niteesh@123Kumar
    [Teardown]    Close All Browsers

