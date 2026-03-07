*** Settings ***
Library    Browser
Resource    ../../../keywords.resource

*** Variables ***
${WRONGUSERNAME}    wrong_username
${WRONGPASSWORD}    wrong_password

*** Test Cases ***
Login identifiants valides
    [Tags]  SWAG-25
    Log     Execution SWAG-25 Login identifiants valides
    Open Login Page

    Fill Text    id=user-name    ${USERNAME}
    Fill Text    id=password    ${PASSWORD}
    Click        id=login-button

    Wait For Elements State    text="Swag Labs"    visible    timeout=5s

    Close Browser

Login nom d'utilisateur invalide
    [Tags]  SWAG-26
    Log     Execution SWAG-26 Login nom d'utilisateur invalide
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

Login mot de passe invalide
    [Tags]  SWAG-30
    Log     Exécution SWAG-30 Login mot de passe invalide
    Open Login Page

    Fill Text    id=user-name    ${USERNAME}
    Fill Text    id=password    ${WRONGPASSWORD}
    Click        id=login-button

    Wait For Elements State    css=[data-test="error"]    visible    timeout=5s

    ${addToCart}=    Get Element Count    css=[data-test="shopping-cart-link"]
    Should Be Equal As Integers    ${addToCart}    0

    Close Browser
