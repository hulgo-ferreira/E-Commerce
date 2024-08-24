*** Settings ***
Documentation    Arquivo principal do projeto Robot

Library     SeleniumLibrary

Resource    env.resource
Resource    base.resource

# Resource    pages/Login/PageLogin.resource
# Resource    pages/Cadastro/PageCadastro.resource

*** Variables ***
${MENU_CONTA}        css=div[class="text"] a

*** Keywords ***
Abrir navegador                   #Desativar a mensagem de log do "DevTools"
    Open Browser    url=${BASE_URL}    browser=${BROWSER}    options=add_experimental_option("excludeSwitches", ["enable-logging"])
    Maximize Browser Window

Fechar navegador
    Capture Page Screenshot
    Close Browser
    
Acessar menu
    [Arguments]      ${menu}

    Click Element    ${MENU_CONTA}
    Click Element    xpath=//a[normalize-space()="${menu}"]
    
Fazer Login
    Submeter o formulário de login    cenario1