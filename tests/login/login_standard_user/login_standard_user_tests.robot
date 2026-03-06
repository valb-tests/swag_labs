*** Settings ***
Library    Browser

*** Variables ***
${URL}           https://www.saucedemo.com/
${USERNAME}      standard_user
${PASSWORD}      secret_sauce
${WRONGUSERNAME}    wrong_username
${WRONGPASSWORD}    wrong_password

*** Keywords ***
Open Login Page
    New Browser    chromium    headless=False
    New Context
    New Page    ${URL}

*** Test Cases ***
SWAG-25 Login identifiants valides
    Open Login Page

    Fill Text    id=user-name    ${USERNAME}
    Fill Text    id=password    ${PASSWORD}
    Click        id=login-button

    Wait For Elements State    text="Swag Labs"    visible    timeout=5s

    Close Browser

SWAG-26 Login nom d'utilisateur invalide
    Open Login Page

    Fill Text    id=user-name    ${WRONGUSERNAME}
    Fill Text    id=password    ${PASSWORD}
    Click        id=login-button

    Wait For Elements State    css=[data-test="error"]    visible    timeout=5s

    ${productsText}=    Get Element Count    text="Products"
    Should Be Equal As Integers    ${productsText}    0

    ${addToCart}=    Get Element Count    css=[data-test="add-to-cart-sauce-labs-backpack"]
    Should Be Equal As Integers    ${addToCart}    0

    Close Browser

SWAG-30 Login mot de passe invalide
    Open Login Page

    Fill Text    id=user-name    ${USERNAME}
    Fill Text    id=password    ${WRONGPASSWORD}
    Click        id=login-button

    Wait For Elements State    css=[data-test="error"]    visible    timeout=5s

    ${addToCart}=    Get Element Count    css=[data-test="shopping-cart-link"]
    Should Be Equal As Integers    ${addToCart}    0

    Close Browser
