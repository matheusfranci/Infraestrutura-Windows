-- Inicializa o Open VPN já com meu profile
start "" "C:\Program Files\OpenVPN Connect\OpenVPNConnect.exe" --connect-shortcut=1700159854159

-- Pausa de 20 segundos pois preciso logar na VPN antes de acessar o Bastion Host
timeout /t 20 /nobreak

-- Inicializa o Bastion Host
start "" "C:\Users\matheus.santos\Documents\NetSarang Computer\7\Xshell\Sessions\Infralinux.xsh"

-- Pausa de 7 segundos antes de iniciar o Health Check
timeout /t 7 /nobreak
@echo off

-- Acessa o diretório onde armazena outras pastas com a data do dia
cd C:\Users\matheus.santos\Desktop\CNseg\Documentos\Health_Check\Resultados\

-- Defini duas variáveis para criar um diretório com a data do dia
set "data=%date:~0,2%-%date:~3,2%-%date:~6,4%"
set "data=%data:/=-%"

-- Criação da basta com a data do dia
mkdir "%data%"

-- Acesso ao diretório onde os relatórios serão gerados
cd C:\Users\matheus.santos\Desktop\CNseg\Documentos\Health_Check\Resultados\"%data%"

-- Execução do sqlplus já chamando o script que será executado
C:\app\product\11.2.0\client_1\BIN\sqlplus.exe /nolog @C:\Users\matheus.santos\Desktop\CNseg\Documentos\Health_Check\Scripts\check.sql


Para automatizar a execução basta o executor agendá-lo para executar no agendador de tarefas ou colar o script .bat no diretório de inicialização do windows para quando o SO iniciar a rotina subir junto. Segue diretório:
C:\Users\meu usuario pessoal\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

OBS: Diretório muda de usuário para usuário e o nome dos mesmos podem aparecer traduzidos dependendo do idioma do SO.
