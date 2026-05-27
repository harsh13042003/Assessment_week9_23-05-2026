*** Settings ***
Library    SeleniumLibrary
Resource   ../../locators/providers_locator.robot

*** Keywords ***
Open Software For Providers Page
    [Documentation]    Hover over "For Providers" in the navbar and click "Software for providers"
    Wait Until Element Is Visible    ${FOR_PROVIDERS_SPAN}    15s
    Click Element    ${FOR_PROVIDERS_SPAN}
    Wait Until Element Is Visible    ${SOFTWARE_FOR_PROVIDERS_LINK}    15s
    Click Element    ${SOFTWARE_FOR_PROVIDERS_LINK}
    Wait Until Page Contains Element    ${LEARN_MORE_BUTTON}    20s

Click Learn More
    [Documentation]    Scrolls to and clicks the Learn more button on the Software for providers page
    Scroll Element Into View    ${LEARN_MORE_BUTTON}
    Click Element    ${LEARN_MORE_BUTTON}
    Sleep    3s

