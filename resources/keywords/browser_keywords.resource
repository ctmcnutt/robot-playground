*** Settings ***
Library    Browser

Resource    ../variables/env.resource

*** Keywords ***
Open Browser To Base URL
    New Browser    browser=${BROWSER}    headless=${HEADLESS}
    New Context
    New Page    ${BASE_URL}

Close Browser Session
    Close Browser
