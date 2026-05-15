*** Settings ***
Resource    ../../resources/keywords/browser_keywords.resource

Suite Setup       Open Browser To Base URL
Suite Teardown    Close Browser Session

*** Test Cases ***
Verify The Internet Home Page Loads
    Get Title    ==    The Internet
