*** Settings ***
Library    SeleniumLibrary
Resource   ../../locators/find_doctors_locator.robot

*** Keywords ***
Click Find Doctors
    [Documentation]    Clicks on Find Doctors link in the navbar
    Wait Until Element Is Visible    ${FIND_DOCTORS_LINK}    15s
    Click Element    ${FIND_DOCTORS_LINK}

Fill Doctor Search Form
    [Arguments]    ${location}    ${doctors}
    [Documentation]    Fills location and doctors fields and clicks search
    Wait Until Element Is Visible    ${LOCATION_FIELD}    15s
    Input Text    ${LOCATION_FIELD}    ${location}
    Wait Until Element Is Visible    ${DOCTORS_FIELD}    15s
    Input Text    ${DOCTORS_FIELD}    ${doctors}
    Wait Until Element Is Visible    xpath=(//span[@class="c-omni-suggestion-item__content"])[1]
    Click Element    xpath=(//span[@class="c-omni-suggestion-item__content"])[1]

    Sleep    10s


