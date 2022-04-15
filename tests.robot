*** Settings ***
Resource                        base.robot

Test Setup                      Nova Sessão  
Test Teardown                   Encerra Sessão

*** Test Cases ***
Validação de produto dentro do carrinho no e-commerce
    #Pesquisando por tênis adidas no e-commerce
    Input text                  id=search-input            tênis adidas       
    #Clicando no botão de pesquisa
    Click Element               css=#header-content > header > div.breakpoint.main-bar > section.search > section > form > div > button     
    #Selecionando o produto específico "Adidas Coreracer Masculino"
    Click Element               xpath=//span[contains(text(),'Tênis Adidas Coreracer Masculino')]   
    #Clicando no botão de aceite do Cookie
    Click Element               css=.cookie-notification-button
    #Selecionando a cor Chumbo
    Click Element               xpath=//section[@id='buy-box']/section/div/ul/li[4]/a/span/img
    #Explicit Wait para garantir o funcionamento correto do código
    Sleep                       5         
    #Selecionando o tamanho de tênis número 42
    Click Element               xpath=//a[contains(text(),'42')]       
    #Explicit Wait para garantir o funcionamento correto do código
    Sleep                       5                                       
    #Clicando no botão de Comprar        
    Click Element               css=#buy-button-now > span              
    #Explicit Wait para garantir o funcionamento correto do código 
    Sleep                       15                                      
    #KeyWord Validação que vai fazer uma conferência do valor de título e logar no console o resultado
    Validação                   Meu carrinho                            
    #KeyWord Validação que vai fazer uma conferência do valor do nome do produto e logar no console o resultado
    Validação                   Tênis Adidas Coreracer Masculino        
    #KeyWord Validação que vai fazer uma conferência do valor de tamanho do produto e logar no console o resultado
    Validação                   42                                      
    #KeyWord Validação que vai fazer uma conferência do valor de cor do produto e logar no console o resultado
    Validação                   Preto+Grafite
