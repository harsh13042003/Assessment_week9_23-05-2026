*** Settings ***
Library    SeleniumLibrary
Resource   ../../locators/logout_locator.robot

*** Keywords ***
Logout the user
    Wait Until Element Is Visible    ${profile_user}
    Click Element    ${profile_user}
    Wait Until Element Is Visible    ${logout_user_button}
    Click Element    ${logout_user_button}
    Sleep    5s
