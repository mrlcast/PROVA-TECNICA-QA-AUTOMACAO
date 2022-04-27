# PROVA-TECNICA-QA-AUTOMACAO
Prova técnica para QA-Automação da Raízen.

Para utilizar o código implementado em Robot, seguir o seguinte passo a passo encontrado no site abaixo:
https://medium.com/@mayfernandes/season-tutoriais-ep-01-instalando-o-robot-framework-windows-aebf4477bcae

É necessário:
- Ter o python, PIP, Robot Framework e o SeleniumLibrary instalados na máquina
- Se o seu navegador for chrome, é necessário conferir a versão do mesmo, e ter o chromedriver atualizado de acordo com essa versão

Para verificar as versões:
- python --version
- pip --version
- robot--version
- pip install --upgrade robotframework-seleniumlibrary

Rodar o comando:
git clone https://github.com/mrlcast/PROVA-TECNICA-QA-AUTOMACAO.git

Depois disso, ao clonar o código em sua máquina, utilize um terminal (aqui eu uso o cmder) e acesse a pasta do repositório:
[Exemplo (o local em minha máquina):]
cd C:\\Users\Desktop\Prova Técnica

Após, digitar o seguinte comando:
robot -d .\log cadastro.robot

Esse código irá rodar o código implementado e gerar o log/evidências na pasta chamada log.

Onde, -d é o parâmetro que indica que os resultados da execução (log/output/report) das suítes contidas no diretório (Testes) 
devem ser armazenados em um diretório específico (\.log).

Você pode conferir o log em HTML com os steps, e também as evidências nessa pasta chamada "Log".
