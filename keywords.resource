*** Variables ***
${URL}           https://www.saucedemo.com/
${USERNAME}      standard_user
${PASSWORD}      secret_sauce


*** Keywords ***
Open Login Page
    New Browser    chromium    headless=True
    New Context
    New Page    ${URL}
