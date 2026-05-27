*** Settings ***
Library    SeleniumLibrary
Resource   ../../locators/articles_locator.robot

*** Keywords ***
Click See All Articles
    [Documentation]    Scrolls to and clicks the "See all articles" button on the homepage
    Wait Until Element Is Visible    ${SEE_ALL_ARTICLES_BUTTON}    20s
    Scroll Element Into View    ${SEE_ALL_ARTICLES_BUTTON}
    Click Element    ${SEE_ALL_ARTICLES_BUTTON}
#    Wait Until Element Is Visible    ${ARTICLES_SECTION}    20s

Click First Article
    [Documentation]    Clicks the first article in the articles list
    Wait Until Element Is Visible    ${FIRST_ARTICLE_LINK}    20s
    Scroll Element Into View    ${FIRST_ARTICLE_LINK}
    Click Element    ${FIRST_ARTICLE_LINK}
    Sleep    5s

