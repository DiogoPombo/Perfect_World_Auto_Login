@echo off
@title PW Auto Login
setlocal
:::::::::::::::::::::::::::::::::::::::::::::::::::
::                 PW Auto Login                 ::
::        Author: Diogo Santos Pombo \Õ/         ::
:: Follow the instructions in the script comments ::
:::::::::::::::::::::::::::::::::::::::::::::::::::


:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Script configuration:                                                                               ::
:: WARNING: This script/file must be in the same folder as the game executable (.exe) to work properly! ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Put the name of the executable (.exe) after the = sign                     ::
:: Only the name + extension of the executable, no need for the full path!    ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set executable=


:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Put your login after the = sign                             ::
:: Don’t worry, the script will not display your login on screen! ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set user=


:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Put your password after the = sign                          ::
:: Don’t worry, the script will not display your password on screen! ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set password=


:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: OPTIONAL! Put your character’s name exactly as in the game after the = sign                                     ::
:: This will automatically select the character. Leave empty to auto login without selecting a character!          ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set nickname=


:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Put the server name exactly as in the game after the = sign                ::
:: This will automatically select the server!                                ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set server=

























































































































































































































































































































































































































































































































































































































































































































































































































































:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: WARNING: Do not modify this script below this line to avoid bugs!        ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


cls
color 0b
set header=**************************************** PW Auto Login ****************************************
echo.
echo.
echo    %header%
echo.
echo.
echo WARNING: This script must be configured beforehand to work properly!
echo.
if "%server%"=="" (
    echo Please wait, starting Perfect World with Auto Login. . .
) else (
    echo Please wait, starting Perfect World with Auto Login on server %server%. . .
)
echo.

if "%nickname%"=="" (
   goto nonickname
) else (
   goto withnickname
)


:nonickname
echo.
start %executable% startbypatcher user:%user% pwd:%password% area:%server%
if not %errorlevel%==0 (
    goto error
)
goto success

:withnickname
echo.
echo.
start %executable% startbypatcher user:%user% pwd:%password% role:%nickname% area:%server%
if not %errorlevel%==0 (
    goto error
)
goto success


:success
color 0a
echo.
echo Perfect World with auto login started successfully!


:end
endlocal
exit


:error
color 0c
echo.
echo ERROR: Failed to start %executable%!
echo.
echo Possible causes:
echo   - The script is not in the same folder as the game executable (.exe)!
echo   - The game executable (.exe) does not exist in the folder or is corrupted!
echo   - The Windows account does not have access to the game executable (.exe)!
echo   - The script was not properly pre-configured!
echo.
pause
goto end
