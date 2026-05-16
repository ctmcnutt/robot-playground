*** Settings ***
Library     Browser

Resource    ../locators/login_locators.resource

*** Keywords ***
Open Login Page
    New Page    https://the-internet.herokuapp.com/login

Enter Username
    [Arguments]    ${username}
    Fill Text    ${USERNAME_INPUT}    ${username}

Enter Password
    [Arguments]    ${password}
    Fill Text    ${PASSWORD_INPUT}    ${password}

Submit Login
    Click    ${LOGIN_BUTTON}

Login With Credentials
    [Arguments]    ${username}    ${password}

    Enter Username    ${username}
    Enter Password    ${password}
    Submit Login

Get Banner Text
    Get Text    ${BANNER}

Login Error Banner Should Be Visible
    Get Text    ${BANNER}    contains    Your username is invalid!

Logout Success Banner Should Be Visible
    Get Text    ${BANNER}    contains    You logged out of the secure area!

Click Banner Close Button Should Remove Banner
    Click   ${BANNER_CLOSE}
    Wait For Elements State    ${BANNER}    hidden
    Get Element States    ${BANNER}    contains    detached