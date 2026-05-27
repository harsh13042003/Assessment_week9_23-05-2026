*** Settings ***
Library    SeleniumLibrary
Resource   ../../locators/surgeries_locator.robot

*** Keywords ***
Open Surgeries Page
    [Documentation]    Clicks the Surgeries link in the navbar to open surgeries search
    Wait Until Element Is Visible    ${SURGERIES_LINK}    20s
    Click Element    ${SURGERIES_LINK}
    # Allow page to load
    Wait Until Page Contains Element    ${SURGERY_TYPE_FIELD}    20s

Select Knee Replacement Surgery
    [Documentation]    Opens surgery type list, selects Knee Replacement and checks the corresponding checkbox
    Wait Until Element Is Visible    ${SURGERY_TYPE_FIELD}    15s
    Click Element    ${SURGERY_TYPE_FIELD}
    Wait Until Element Is Visible    ${KNEE_REPLACEMENT_OPTION}    15s
    Scroll Element Into View    ${KNEE_REPLACEMENT_OPTION}
    Click Element    ${KNEE_REPLACEMENT_OPTION}
    # After selecting the type, a list of surgeries may appear with checkboxes on the right
    Wait Until Element Is Visible    ${SURGERY_CHECKBOX}    15s
    Click Element    ${SURGERY_CHECKBOX}

Select Location Jaipur
    [Documentation]    Opens location selector and selects Jaipur checkbox
    Wait Until Element Is Visible    ${SURGERY_LOCATION_FIELD}    15s
    Click Element    ${SURGERY_LOCATION_FIELD}
    Wait Until Element Is Visible    ${JAIPUR_CHECKBOX}    15s
    Click Element    ${JAIPUR_CHECKBOX}

Fill Patient Details
    [Arguments]    ${name}    ${phone}
    [Documentation]    Fills name and phone fields in the surgeries form
    Wait Until Element Is Visible    ${SURGERY_NAME_FIELD}    15s
    Input Text    ${SURGERY_NAME_FIELD}    ${name}
    Input Text    ${SURGERY_PHONE_FIELD}   ${phone}

#Submit Surgeries Form
#    [Documentation]    Clicks the submit/find button to search for hospitals or surgeons
#    Wait Until Element Is Visible    ${SURGERY_SUBMIT_BUTTON}    15s
#    Click Element    ${SURGERY_SUBMIT_BUTTON}
#    Sleep    5s

