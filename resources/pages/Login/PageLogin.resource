*** Settings ***
Documentation        Ações e elementos da página de login

Library    SeleniumLibrary
Library    ../../libs/Login.py

*** Variables ***
${LOGIN_EMAIL}       css=input[name="email"]
${LOGIN_PASSWORD}    css=input[name="senha"]
${LOGIN_BUTTON}      css=button[class="button"] i

*** Keywords ***
Submeter o formulário de login
    [Arguments]     ${nomeDoCenario}

    ${login}         Get Fake Login       ${nomeDoCenario}
    
    Input Text       ${LOGIN_EMAIL}       ${login}[email]
    Input Text       ${LOGIN_PASSWORD}    ${login}[senha]
    Click Element    ${LOGIN_BUTTON}    

Toast Message Should Be 
    [Arguments]        ${expected_message}
    
    ${locator}
    ...    Set Variable
    ...    css=small[class="message"] >> text=${expected_message}