*** Settings ***
Resource    ../../resources/keywords/browser_keywords.resource
Resource    ../../resources/pages/login_page.resource
Resource    ../../resources/pages/secure_page.resource

Suite Setup       Open Browser To Base URL
Suite Teardown    Close Browser Session

*** Test Cases ***
Successful User Login Displays Success Banner
    Open Login Page
    Login With Credentials    tomsmith    SuperSecretPassword!

    Login Success Banner Should Be Visible

Failed User Login Displays Error Banner
    Open Login Page
    Login With Credentials    invalid_user    invalid_password

    Login Error Banner Should Be Visible

Logout Button Logs User Out And Displays Banner
    Open Login Page
    Login With Credentials    tomsmith    SuperSecretPassword!
    Click Logout Button

    Logout Success Banner Should Be Visible
