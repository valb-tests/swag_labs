*** Settings ***
Library    Browser
Resource    ../../../keywords.resource

*** Variables ***
${USERNAME}      locked_out_user
${PASSWORD}      secret_sauce

*** Test Cases ***
Login blocked user
    [Tags]  SWAG-27
    Log     Exécution SWAG-27 Login compte bloqué
    Open Login Page

    Fill Text    id=user-name    ${USERNAME}
    Fill Text    id=password    ${PASSWORD}
    Click        id=login-button

    Wait For Elements State    css=[data-test="error"]    visible    timeout=5s

    ${addToCart}=    Get Element Count    css=[data-test="shopping-cart-link"]
    Should Be Equal As Integers    ${addToCart}    0

    Close Browser