*** Settings ***
Documentation        Essa suite valida a autenticação do usuário no site Ecommerce

Resource         ../resources/util.resource

Test Setup       Abrir navegador
Test Teardown    Fechar navegador

*** Variables ***
${LOGOUT_BUTTON}                     css=button[type="submit"]

*** Test Cases ***
Caso de teste 1 - Deve logar com sucesso
    [Documentation]    Esse teste acessa a opção MINHA CONTA e realiza login com sucesso
    [Tags]        login

    Acessar menu                      Entrar
    Submeter o formulário de login    cenario1

Caso de teste 2 - Não deve logar com senha incorreta
    [Documentation]    Esse teste acessa a opção MINHA CONTA, não realiza 
    ...    login com senha incorreta e valida a mensagem de erro.
    [Tags]        login

    Acessar menu                      Entrar
    Submeter o formulário de login    cenario2
    Page Should Contain               E-mail e/ou senha incorretos.

Caso de teste 3 - Não deve logar com usuario incorreto
    [Documentation]    Esse teste acessa a opção MINHA CONTA, não realiza 
    ...    login com usuario incorreto e valida a mensagem de erro.
    [Tags]        login

    Acessar menu                      Entrar
    Submeter o formulário de login    cenario3
    Toast Message Should Be           E-mail e/ou senha incorretos.

Caso de teste 4 - Deve logar com usuário Administrador
    [Documentation]    Esse teste acessa a opção MINHA CONTA e realiza login 
    ...    com usuario adm
    [Tags]        login

    Acessar menu                      Admin
    Submeter o formulário de login    cenario4

Caso de teste 5 -Fazer logout do sistema
    [Documentation]    Esse teste acessa a opção MINHA CONTA, realiza login com sucesso 
    ...    e depois faz logout do sistema
    [Tags]        login 

    Acessar menu                      Entrar
    Submeter o formulário de login    cenario1
    Acessar menu                      Sair
    Page Should Contain               Você tem certeza que deseja sair?
    Click Button                      ${LOGOUT_BUTTON}