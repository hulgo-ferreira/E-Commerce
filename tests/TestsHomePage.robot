*** Settings ***
Documentation    Essa suite testa a pagina inicial do site Ecommerce

Library     SeleniumLibrary

Resource    ../resources/util.resource

*** Test Cases ***
Acessar a home page do site E-commerce
    Open Browser           url=http://localhost/e-commerce/    browser=chrome
    Sleep    2
    Page Should Contain    minha Conta
    