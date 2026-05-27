*** Settings ***
Documentation    Test that opens Software for providers page and clicks Learn more
Library    SeleniumLibrary
Resource   ../../locators/providers_locator.robot
Resource   ../../resource/pages/ProvidersPage.robot

*** Test Cases ***
Open Software For Providers And Learn More
    [Tags]    smoke
    Open Browser    https://www.practo.com/    chrome
    Maximize Browser Window
    Open Software For Providers Page
    Click Learn More
    [Teardown]    Close All Browsers

