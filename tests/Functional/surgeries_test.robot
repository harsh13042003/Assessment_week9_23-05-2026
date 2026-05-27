*** Settings ***
Documentation    Test that automates Surgeries flow: select knee replacement, Jaipur, fill details and submit
Library    SeleniumLibrary
Resource   ../../locators/surgeries_locator.robot
Resource   ../../resource/pages/SurgeriesPage.robot

*** Test Cases ***
Surgeries Flow - Knee Replacement
    [Tags]    smoke
    Open Browser    https://www.practo.com/    chrome
    Maximize Browser Window
    Open Surgeries Page
    Select Knee Replacement Surgery
    Select Location Jaipur
    Fill Patient Details    Niteesh    6376531813
#    Submit Surgeries Form
    [Teardown]    Close All Browsers

