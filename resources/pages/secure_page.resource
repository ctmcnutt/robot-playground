*** Settings ***
Library     Browser

Resource    ../locators/secure_locators.resource

*** Keywords ***
Secure Area Should Be Visible
    Get Text    ${SECURE_AREA_HEADER}    contains    Secure Area

Login Success Banner Should Be Visible
    Get Text    ${BANNER}    contains    You logged into a secure area!

Logout Button Should Be Visible
    Get Element States    ${LOGOUT_BUTTON}    contains    visible

Click Logout Button
    Click    ${LOGOUT_BUTTON}