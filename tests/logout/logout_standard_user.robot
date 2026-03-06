*** Settings ***
Library    Browser

*** Variables ***
${URL}           https://www.saucedemo.com/
${USERNAME}      standard_user
${PASSWORD}      secret_sauce

*** Keywords ***
Connect user
    New Browser    chromium    headless=False
    New Context
    New Page    ${URL}

    Fill Text    id=user-name    ${USERNAME}
    Fill Text    id=password    ${PASSWORD}
    Click        id=login-button

    Wait For Elements State    text="Swag Labs"    visible    timeout=5s

*** Test cases ***
SWAG-28 - Déconnexion réussie
    Connect user

    Click   id=react-burger-menu-btn
    Click   css=[data-test="logout-sidebar-link"]

    Close Browser