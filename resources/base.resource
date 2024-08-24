*** Settings ***
Documentation        Arquivo base do projeto

Library    SeleniumLibrary

#Variáveis de ambiente
Resource    env.resource

#Pages
Resource    pages/Login/PageLogin.resource
Resource    pages/Cadastro/PageCadastro.resource
