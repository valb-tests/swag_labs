*** Settings ***
Library    Browser
Resource    ../../keywords.resource

*** Keywords ***
Connect user
    Open login page

    Fill Text    id=user-name    ${USERNAME}
    Fill Text    id=password    ${PASSWORD}
    Click        id=login-button

    Wait For Elements State    text="Swag Labs"    visible    timeout=5s

*** Test cases ***
Disconnection
    [Tags]  SWAG-28
    Log     Exécution SWAG-28 Déconnexion
    Connect user

    Click   id=react-burger-menu-btn
    Click   css=[data-test="logout-sidebar-link"]

    Close Browser