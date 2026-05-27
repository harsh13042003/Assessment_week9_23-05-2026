*** Settings ***
Documentation    Simple Robot Framework test to register on Practo. It will pause for 30s for manual OTP/captcha entry.
Library    SeleniumLibrary
Resource   ../../locators/locators.robot
Resource   ../../resource/pages/RegisterPage.robot

*** Test Cases ***
Register New User On Practo
    [Tags]    smoke
    Open Practo And Click Register
    Fill Registration Form    Niteesh    6376531813    abcd
    Sleep    30s    # Pause so you can enter OTP and captcha manually
    Click Login After OTP
    [Teardown]    Close All Browsers

