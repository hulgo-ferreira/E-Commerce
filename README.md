

# Automação funcional com Robot Framework!👋   <img align="right" width="230" src="https://www.testmo.com/img/images/thirdparty/logos/robot.png?w=400&s=b93bcc0cdd6b1d68680f9ffa510d62ea"/>




## Preparação do ambiente

1- Instalar um editor de código fonte [VSCode](https://code.visualstudio.com/download);

2- Instalar o [Python](https://www.python.org/downloads/) (durante a instalação selecionar o campo "path");

3- Na pasta raiz ou (C:) do seu computador, abrir o prompt de comando ou o [Gitbash](https://git-scm.com/downloads) e rodar o seguinte comando para instalação do Robot Framework:  
**pip install robotframework**

4- Instalar biblioteca [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html) e já aproveito pra deixar a sua documentação para apoiar no desenvolvimento e estudos da biblioteca;  
**pip install robotframework-seleniumlibrary**

5- Instalar o Chromedriver compatível com a versão mais recente do seu navegador Chrome e colocar a pasta descompactada no diretório do pyhton.  
Caminho de exemplo: C:\Users\nome_usuario\AppData\Local\Programs\Python\Python311\Scripts\)

6- Faça download do projeto "Automação Funcional - Robot Framework" utilizando um prompt de comando. Aqui usei o [Gitbash](https://git-scm.com/downloads)


## Execução


```
- Executar somente um caso de teste:
  robot -t "nome_caso_teste" nomeDoTeste

- Executar apenas uma suíte de teste salvando os arquivos de log, output e report na pasta logs: 
  robot -d ./logs tests/TestLogin.robot

- Executar apenas um teste pela sua tag:
  robot -d ./logs -i nomeDaTag tests/TestLogin.robot

- Execução em modo headless:
  robot -d ./logs -v BROWSER:headlesschrome tests/TestsLogin.robot

