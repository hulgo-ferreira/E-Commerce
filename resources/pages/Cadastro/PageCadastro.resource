*** Settings ***
Documentation        Ações e elementos da página de Cadastro de usuário

Library    SeleniumLibrary
Library    ../../libs/CadastroUsuario.py

*** Variables ***
${BOTAO_CADASTRAR}    css=button[class="button"] i

*** Keywords ***
Submeter o formulário de Cadastro

    ${cadastroUsuario}                  Get Fake Cadastro

    Input Text    css=input[name='nome']          ${cadastroUsuario}[nome]
    Input Text    css=input[name='cpf']           ${cadastroUsuario}[cpf]
    Input Text    css=input[name='email']         ${cadastroUsuario}[email]
    Input Text    css=input[name='senha']         ${cadastroUsuario}[senha]
    Input Text    css=input[name='sexo']          ${cadastroUsuario}[sexo]
    Input Text    css=input[name='nascimento']    ${cadastroUsuario}[nascimento]
    Input Text    css=input[name='celular']       ${cadastroUsuario}[celular]
    Input Text    css=input[name='cep']           ${cadastroUsuario}[cep]
    Input Text    css=input[name='endereco']      ${cadastroUsuario}[endereco]
    Input Text    css=input[name='cidade']        ${cadastroUsuario}[cidade]
    Input Text    css=input[name='uf']            ${cadastroUsuario}[uf]
    Input Text    css=input[name='bairro']        ${cadastroUsuario}[bairro]
    Input Text    css=input[name='numero']        ${cadastroUsuario}[numero]
    Input Text    css=input[name='complemento']    ${cadastroUsuario}[endereco]
    Click Element    ${BOTAO_CADASTRAR}