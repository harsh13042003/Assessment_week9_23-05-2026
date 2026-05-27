*** Settings ***
Documentation    Test for Lab Tests booking flow on Practo
Library    SeleniumLibrary
Resource   ../../locators/lab_tests_locator.robot
Resource   ../../resource/pages/LabTestsPage.robot
Resource    ../../resource/pages/LoginPage.robot

*** Test Cases ***
Book Lab Test Complete Flow
    [Tags]    smoke
#    Open Browser    https://www.practo.com/    chrome
#    Maximize Browser Window
    Open Practo And Click Login
    Fill Login Form    9518204568    Niteesh@123Kumar
    Open Lab Tests
    Select First Booked Test
    Click Book Now
    Fill Patient Details    Niteesh    30    niteesh@example.com
    Click First Continue
#    Enter Location And Select First Suggestion    Jaipur
#    Fill Address Details    302001    123 B    Near City Center
#    Select Work Checkbox
#    Click Final Continue

#    Sleep    50s
    [Teardown]    Close All Browsers

