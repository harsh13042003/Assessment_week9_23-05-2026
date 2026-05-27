*** Settings ***
Library    SeleniumLibrary
Resource   ../../locators/lab_tests_locator.robot

*** Keywords ***
Open Lab Tests
    [Documentation]    Clicks on Lab Tests link
    Wait Until Element Is Visible    ${LAB_TESTS_LINK}    15s
    Click Element    ${LAB_TESTS_LINK}

Select First Booked Test
    [Documentation]    Selects the first available booked test
#    Wait Until Element Is Visible    ${loc_field_enter}
#    Input Text    ${loc_field_enter}    Jaipur
    Wait Until Element Is Visible    ${loc_field_selct}
    Click Element    ${loc_field_selct}
    Wait Until Element Is Visible    ${FIRST_BOOKED_TEST}    20s
    Scroll Element Into View    ${FIRST_BOOKED_TEST}
    Click Element    ${FIRST_BOOKED_TEST}

Click Book Now
    [Documentation]    Clicks the Book Now button
    Wait Until Element Is Visible    ${BOOK_NOW_BUTTON}    15s
    Click Element    ${BOOK_NOW_BUTTON}

Fill Patient Details
    [Arguments]    ${patient_name}    ${age}       ${email}
    [Documentation]    Fills patient name, age, gender (male), mobile and email
    Wait Until Element Is Visible    ${PATIENT_NAME_FIELD}    15s
#    Input Text    ${PATIENT_NAME_FIELD}    ${patient_name}
    Input Text    ${AGE_FIELD}    ${age}
    Click Element    ${GENDER_MALE_CHECKBOX}
#    Input Text    ${MOBILE_NUMBER_FIELD}    ${mobile}
    Input Text    ${EMAIL_FIELD}    ${email}

Click First Continue
    [Documentation]    Clicks the first continue button after patient details
    Wait Until Element Is Visible    ${FIRST_CONTINUE_BUTTON}    15s
    Scroll Element Into View    ${FIRST_CONTINUE_BUTTON}
    Click Element    ${FIRST_CONTINUE_BUTTON}
    Wait Until Element Is Visible    xpath=//button[text()="Continue"]
    Click Element    xpath=//button[text()="Continue"]



#Click Final Continue
#    [Documentation]    Clicks the final continue button to complete booking
#    Wait Until Element Is Visible    ${FINAL_CONTINUE_BUTTON}    15s
#    Scroll Element Into View    ${FINAL_CONTINUE_BUTTON}
#    Click Element    ${FINAL_CONTINUE_BUTTON}
#    Sleep    3s

