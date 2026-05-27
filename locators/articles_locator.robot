*** Variables ***
# Locators for Articles / Blog navigation
${SEE_ALL_ARTICLES_BUTTON}    xpath=//button[text()="See all articles"]
${ARTICLES_SECTION}    xpath=//section[contains(translate(@class,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),'article') or contains(translate(@class,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),'blog') or contains(translate(@id,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),'article')]
${FIRST_ARTICLE_LINK}    xpath=(//div[@class="fit-feed-post-image"])[1]/a

