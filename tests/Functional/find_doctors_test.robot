*** Settings ***
Documentation    Robot Framework test for Find Doctors functionality on Practo
Library    SeleniumLibrary
Resource   ../../locators/find_doctors_locator.robot
Resource   ../../resource/pages/FindDoctorsPage.robot

*** Test Cases ***
Find Doctors By Location And Specialty
    [Tags]    smoke
    Open Browser    https://www.practo.com/    chrome
    Maximize Browser Window
    Click Find Doctors
    Fill Doctor Search Form    Jaipur    Dentist
    [Teardown]    Close All Browsers

