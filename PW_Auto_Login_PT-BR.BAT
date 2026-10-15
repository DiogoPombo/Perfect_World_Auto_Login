@echo off
@title PW Auto Login
chcp 65001 >nul
setlocal
:::::::::::::::::::::::::::::::::::::::::::::::::::
::                 PW Auto Login                 ::
::        Autor: Diogo Santos Pombo \Õ/          ::
:: Siga as instruções dos comentários do script! ::
:::::::::::::::::::::::::::::::::::::::::::::::::::


:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Configuração do script:                                                                             ::
:: ATENÇÃO: Este script/arquivo deve estar na mesma pasta do executável (.exe) do jogo para funcionar! ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Coloque o nome do executável (.exe) depois do sinal de =                  ::
:: Somente o nome + extenção do executável, não precisa do caminho completo! ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set executavel=


:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Coloque o seu login depois do sinal de =                    ::
:: Não se preocupe, o script não irá exibir seu login na tela! ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set usuario=


:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Coloque sua senha depois do sinal de =                      ::
:: Não se preocupe, o script não irá exibir sua senha na tela! ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set senha=


:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: OPCIONAL! Coloque o nome do seu personagem igual ao que tá no jogo depois do sinal de =                         ::
:: Isso fará a seleção automática do personagem, deixe vazio para fazer o auto login sem selecionar um personagem! ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set nick=


:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Coloque o nome do servidor igual ao do jogo depois do sinal de =          ::
:: Isso fará a seleção automática do servidor!                               ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set servidor=

























































































































































































































































































































































































































































































































































































































































































































































































































































:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: ATENÇÃO: Não modificar este script abaixo desta linha para evitar bugs! ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


cls
color 0b
set header=**************************************** PW Auto Login ****************************************
echo.
echo.
echo    %header%
echo.
echo.
echo AVISO: Este script precisa ser configurado previamente para funcionar devidamente!
echo.
if "%servidor%"=="" (
    echo Por favor aguarde, iniciando Perfect World com Auto Login. . .
) else (
    echo Por favor aguarde, iniciando Perfect World com Auto Login no servidor %servidor%. . .
)
echo.

if "%nick%"=="" (
   goto semnick
) else (
   goto comnick
)


:semnick
echo.
start %executavel% startbypatcher user:%usuario% pwd:%senha% area:%servidor%
if not %errorlevel%==0 (
    goto erro
)
goto sucesso

:comnick
echo.
echo.
start %executavel% startbypatcher user:%usuario% pwd:%senha% role:%nick% area:%servidor%
if not %errorlevel%==0 (
    goto erro
)
goto sucesso


:sucesso
color 0a
echo.
echo Perfect World com auto login iniciado com sucesso!


:end
endlocal
exit


:erro
color 0c
echo.
echo ERRO: Falha ao iniciar %executavel%!
echo.
echo Possíveis causas:
echo   - O script não está na mesma pasta do executável (.exe) jogo!
echo   - O arquivo executável (.exe) do jogo não existe na pasta ou está corrompido!
echo   - A conta logada no Windows não tem acesso ao arquivo executável (.exe) do jogo!
echo   - O script não foi devidamente pré-configurado!
echo.
pause
goto end