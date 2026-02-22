*** Settings ***
Library    Browser

*** Variables ***
${URL}           https://www.saucedemo.com/
${USERNAME}      standard_user
${PASSWORD}      secret_sauce

*** Test Cases ***
Login User Successfully
    New Browser    chromium    headless=False
    New Context
    New Page    ${URL}

    Fill Text    id=user-name    ${USERNAME}
    Fill Text    id=password    ${PASSWORD}
    Click        id=login-button

    Wait For Elements State    text="Swag Labs"    visible    timeout=5s

    Close Browser