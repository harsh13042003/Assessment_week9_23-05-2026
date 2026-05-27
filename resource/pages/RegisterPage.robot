*** Settings ***
Library    SeleniumLibrary
Resource   ../../locators/locators.robot

*** Keywords ***
Open Practo And Click Register
    [Documentation]    Opens Practo home page, clicks Login/Sign up and then Register
    Open Browser    https://www.practo.com/    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    ${LOGIN_SIGNUP_BUTTON}    15s
    Click Element    ${LOGIN_SIGNUP_BUTTON}
    Wait Until Element Is Visible    ${REGISTER_LINK}    15s
    Click Element    ${REGISTER_LINK}

Fill Registration Form
    [Arguments]    ${name}    ${phone}    ${password}
    Wait Until Element Is Visible    ${NAME_FIELD}    15s
    Input Text    ${NAME_FIELD}    ${name}
    Input Text    ${PHONE_FIELD}    ${phone}
    Input Text    ${PASSWORD_FIELD}    ${password}
    Click Element    ${SEND_OTP_BUTTON}

Click Login After OTP
    [Documentation]    After OTP / captcha entered manually, click the login button to finish.
    Wait Until Element Is Visible    ${LOGIN_BUTTON}    180s
    Click Element    ${LOGIN_BUTTON}

