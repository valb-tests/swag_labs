*** Settings ***
Library    Browser

*** Variables ***
${URL}           https://www.saucedemo.com/
${USERNAME}      standard_user
${PASSWORD}      secret_sauce

*** Keywords ***
Open Login Page
    New Browser    chromium    headless=False
    New Context
    New Page    ${URL}

*** Test Cases ***
Login User Wright Credentials
    Open Login Page

    Fill Text    id=user-name    ${USERNAME}
    Fill Text    id=password    ${PASSWORD}
    Click        id=login-button

    Wait For Elements State    text="Swag Labs"    visible    timeout=5s

    Close Browser

Login User Wrong Password Failed
    Open Login Page

    Fill Text    id=user-name    ${USERNAME}
    Fill Text    id=password    wrongpassword
    Click        id=login-button

    Wait For Elements State    css=[data-test="error"]    visible    timeout=5s

    Close Browser