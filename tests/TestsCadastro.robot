*** Settings ***
Documentation        Essa suite testa a página de cadastro de usuário do site Ecommerce

Resource    ../resources/util.resource

Test Setup       Abrir navegador
Test Teardown    Fechar navegador

*** Test Cases ***
Caso de teste 1 - Cadastrar usuário com sucesso
    [Documentation]    Esse teste acessa a opção "Cadastrar-se" e realizar o cadastro de um novo usuário
    [Tags]    cadastrar    usuario

    Acessar menu                      Cadastrar-se
    Page Should Contain               Cadastrar-se
    Submeter o formulário de Cadastro