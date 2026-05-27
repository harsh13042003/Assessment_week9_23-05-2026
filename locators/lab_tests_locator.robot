*** Variables ***
# Locators for Lab Tests booking flow
${LAB_TESTS_LINK}    xpath=//a[@title="tests"]

${loc_field_enter}      xpath=//input[@placeholder="Search for city"]
${loc_field_selct}      xpath=//ul[@class="u-br-rule u-marginb--std-half u-pointer u-padb--dbl o-flex o-flex__justify--between"]/li[2]
# First booked test option
${FIRST_BOOKED_TEST}    xpath=(//a[@class="u-pad--std u-border--std"])[1]
# Book Now button
${BOOK_NOW_BUTTON}    xpath=//div[text()="Book Now"]

${PATIENT_NAME_FIELD}    xpath=//input[@data-aid="patient-name"]
${AGE_FIELD}    xpath=//input[@data-aid="patient-age"]
${GENDER_MALE_CHECKBOX}    xpath=//div[@data-aid="patient-gender-selected-MALE"]
${MOBILE_NUMBER_FIELD}    xpath=//input[@data-aid="patient-mobile"]
${EMAIL_FIELD}    xpath=//input[@data-aid="patient-email"]
${FIRST_CONTINUE_BUTTON}    xpath=//input[@value="Continue"]
${LOCATION_TEXT_FIELD}    xpath=//input[@placeholder="Search any town/city..."]
${FIRST_LOCATION_SUGGESTION}    xpath=(//div[@class="c-result"])[1]
${PIN_CODE_FIELD}    xpath=//input[@data-aid="patient-address-pincode"]
${HOUSE_NO_FIELD}    xpath=//input[@data-aid="patient-street-address"]
${LANDMARK_FIELD}    xpath=//input[@data-aid="patient-address-landmark"]
${WORK_CHECKBOX}    xpath=//input[@value="Other"]
${FINAL_CONTINUE_BUTTON}    xpath=//input[@value="Save & Continue"]

