*** Settings ***
Library                             SeleniumLibrary
Library                             DateTime

*** Variables ***
${url}                              https://www.netshoes.com.br/                    #Página inicial do e-commerce

*** Keywords ***
#Keyword para abrir o E-commerce
Nova Sessão
    Open Browser                    ${url}                                          chrome
    Maximize Browser Window 
    
#Keyword para encerrar sessão e tirar screenshot    
Encerra Sessão
    Evidencia                       fimProcessamento
    Close Browser

#Keyword que passa o parâmetro <nome>, e adiciona ao dateTime atual, a fim de criar uma chave 'única' para cada screenshot.
Evidencia
    [Arguments]                     ${nome}
    ${now}                          Evaluate                                        '{dt.day}.{dt.month}.{dt.year}.{dt.hour}.{dt.minute}.{dt.second}'.format(dt=datetime.datetime.now())    modules=datetime
    Capture Page Screenshot         ${nome}-${now}.png

Validação
    [Arguments]                     ${texto}
    Page Should contain             ${texto}                        #Verificando que a página contém o valor passado por parâmetro
    Log To Console                  O valor "${texto}" está correto ✓
