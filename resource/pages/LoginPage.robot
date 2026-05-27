*** Settings ***
Library    SeleniumLibrary
Resource   ../../locators/locators.robot
Resource   ../../locators/login_locator.robot

*** Keywords ***
Open Practo And Click Login
    [Documentation]    Opens Practo home page, clicks Login/Sign up and then Login
    Open Browser    https://www.practo.com/    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    ${LOGIN_SIGNUP_BUTTON}    15s
    Click Element    ${LOGIN_SIGNUP_BUTTON}
#    Wait Until Element Is Visible    ${LOGIN_ANCHOR}    15s
#    Click Element    ${LOGIN_ANCHOR}

Fill Login Form
    [Arguments]    ${phone}    ${password}
    Wait Until Element Is Visible    ${ph_no_input_field}    15s
    Input Text    ${ph_no_input_field}    ${phone}
    Input Text    ${password_input_field}    ${password}
    Click Element    ${LOGIN_BUTTON}



