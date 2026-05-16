*** Settings ***
Resource    ../../resources/keywords/browser_keywords.resource
Resource    ../../resources/pages/login_page.resource
Resource    ../../resources/pages/secure_page.resource

Suite Setup       Open Browser To Base URL
Suite Teardown    Close Browser Session

*** Test Cases ***
Success Banner Closes Upon Clicking X Button
    Open Login Page
    Login With Credentials    tomsmith    SuperSecretPassword!
    Login Success Banner Should Be Visible

    Click Banner Close Button Should Remove Banner

Error Banner Closes Upon Clicking X Button
    Open Login Page
    Login With Credentials    invalid    invalid
    Login Error Banner Should Be Visible

    Click Banner Close Button Should Remove Banner


Logout Success Banner Closes Upon Clicking X Button
    Open Login Page
    Login With Credentials    tomsmith    SuperSecretPassword!
    Click Logout Button
    Logout Success Banner Should Be Visible

    Click Banner Close Button Should Remove Banner