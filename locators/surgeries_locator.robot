*** Variables ***
# Locators for Surgeries flow on Practo
${SURGERIES_LINK}    xpath=(//a[@title="surgery"])[2]
# Surgery type selector (button/input that opens the surgery types list)
${SURGERY_TYPE_FIELD}    xpath=(//span[@class="generalLeadForm-module_text__ElFI0"])[1]
# Specific option for Knee Replacement in the surgery list
${KNEE_REPLACEMENT_OPTION}    xpath=(//div[@class="list-module_sizeSmallItemVl__-Qtix utils-module_borderBottom1SolGray1__gIDgS h-72px flex justify-center content-center"])[2]
# Checkbox for a knee surgery item (right-side checkbox). Generic: finds a label with knee text and its following checkbox
${SURGERY_CHECKBOX}    xpath=(//div[@class="list-module_sizeSmallItemVl__-Qtix utils-module_borderBottom1SolGray1__gIDgS bg-white-1"])[2]
# Location selector
${SURGERY_LOCATION_FIELD}    xpath=(//div[@class="generalLeadForm-module_selectors__oNbtj generalLeadForm-module_value__6WV20"])[2]
# Jaipur checkbox under location filters
${JAIPUR_CHECKBOX}    xpath=(//div[@data-qa-id="city-name-container"])[7]
# Name and phone specific to surgeries form (fallback to generic fields if those exist)
${SURGERY_NAME_FIELD}    xpath=//input[@id="Name-Gen-Lead-Form"]
${SURGERY_PHONE_FIELD}   xpath=//input[@id="Phone-Gen-Lead-Form"]
#${SURGERY_SUBMIT_BUTTON}    xpath=//button[contains(translate(normalize-space(.),'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),'find') or contains(translate(normalize-space(.),'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),'search') or contains(translate(normalize-space(.),'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),'show')]

