*** Settings ***
Documentation    Test that navigates to See all articles and opens the first article
Library    SeleniumLibrary
Resource   ../../locators/articles_locator.robot
Resource   ../../resource/pages/ArticlesPage.robot

*** Test Cases ***
Open First Article From Articles
    [Tags]    smoke
    Open Browser    https://www.practo.com/    chrome
    Maximize Browser Window
    Click See All Articles
    Click First Article
    [Teardown]    Close All Browsers

