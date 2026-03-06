*** Settings ***
Library    Browser

*** Variables ***
${URL}           https://www.saucedemo.com/
${USERNAME}      blocked_user
${PASSWORD}      secret_sauce

*** Test Cases ***
SWAG-27 Login compte bloqué
    New Browser    chromium    headless=False
    New Context
    New Page    ${URL}

    Fill Text    id=user-name    ${USERNAME}
    Fill Text    id=password    ${PASSWORD}
    Click        id=login-button

    Wait For Elements State    css=[data-test="error"]    visible    timeout=5s

    ${addToCart}=    Get Element Count    css=[data-test="shopping-cart-link"]
    Should Be Equal As Integers    ${addToCart}    0

    Close Browser