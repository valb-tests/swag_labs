*** Settings ***
Library    Browser
Resource    ../../../keywords.resource

*** Variables ***
${USERNAME}      standard_user
${PASSWORD}      secret_sauce

*** Test Cases ***
Login champ username vide
    [Tags]  SWAG-59
    Log     Exécution SWAG-59 Login champ username vide
    Open Login Page

    Fill Text    id=user-name    ${EMPTY}
    Fill Text    id=password    ${PASSWORD}
    Click        id=login-button

    Wait For Elements State    css=[data-test="error"]    visible    timeout=5s

    ${addToCart}=    Get Element Count    css=[data-test="shopping-cart-link"]
    Should Be Equal As Integers    ${addToCart}    0

    Close Browser

Login champ password vide
    [Tags]  SWAG-60
    Log     Exécution SWAG-60 Login champ password vide
    Open Login Page

    Fill Text    id=user-name    ${USERNAME}
    Fill Text    id=password    ${EMPTY}
    Click        id=login-button

    Wait For Elements State    css=[data-test="error"]    visible    timeout=5s

    ${addToCart}=    Get Element Count    css=[data-test="shopping-cart-link"]
    Should Be Equal As Integers    ${addToCart}    0

    Close Browser